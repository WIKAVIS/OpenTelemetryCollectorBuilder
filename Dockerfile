FROM alpine:3.19 AS certs
RUN apk --update add ca-certificates

FROM golang:1.23.6 AS build-stage
WORKDIR /build

COPY ./builder-config.yaml builder-config.yaml

RUN --mount=type=cache,target=/root/.cache/go-build GO111MODULE=on go install go.opentelemetry.io/collector/cmd/builder@v0.131.0
RUN --mount=type=cache,target=/root/.cache/go-build builder --config builder-config.yaml

FROM gcr.io/distroless/base:latest

LABEL org.opencontainers.image.title="OpenTelemetry Collector Company"
LABEL org.opencontainers.image.description="Custom OpenTelemetry Collector for Company Environment"
LABEL org.opencontainers.image.version="1.0.0"

ARG USER_UID=10001
USER ${USER_UID}

COPY --from=certs /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
COPY --chmod=755 --from=build-stage /build/_build/otelcol-company-collector /otelcol
COPY ./collector-config.yaml /etc/otelcol/collector-config.yaml

ENTRYPOINT ["/otelcol"]
CMD ["--config", "/etc/otelcol/collector-config.yaml"]

EXPOSE 4317 4318 12001