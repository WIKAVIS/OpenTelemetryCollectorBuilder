# Open Telemetry Collector Builder

# OpenTelemetry Collector Components
This repository provides a set of OpenTelemetry Collector components that can be used to build custom telemetry
pipelines.
It only includes the most commonly used components and is not meant to be a complete list of all available components.

# Registry
Following this link you can find the official open telemetry registration: https://opentelemetry.io/ecosystem/registry/
Most of the modules can be found and included from there.

# List of modules to include

| Type          | Name                          | Repository                                                                                        | Version  |
|---------------|-------------------------------|---------------------------------------------------------------------------------------------------|----------|
| **Receiver**  | OTLPReceiver                  | go.opentelemetry.io/collector/receiver/otlpreceiver                                               | v0.131.0 |
|               | PrometheusReceiver            | github.com/open-telemetry/opentelemetry-collector-contrib/receiver/prometheusreceiver             | v0.131.0 |
|               | FileLogReceiver               | github.com/open-telemetry/opentelemetry-collector-contrib/receiver/filelogreceiver                | v0.131.0 |
|               | HostMetricsReceiver           | github.com/open-telemetry/opentelemetry-collector-contrib/receiver/hostmetricsreceiver            | v0.131.0 |
| **Processor** | BatchProcessor                | go.opentelemetry.io/collector/processor/batchprocessor                                            | v0.131.0 |
|               | MemoryLimiterProcessor        | go.opentelemetry.io/collector/processor/memorylimiterprocessor                                    | v0.131.0 |
|               | AttributesProcessor           | github.com/open-telemetry/opentelemetry-collector-contrib/processor/attributesprocessor           | v0.131.0 |
|               | K8sAttributesProcessor        | github.com/open-telemetry/opentelemetry-collector-contrib/processor/k8sattributesprocessor        | v0.131.0 |
|               | ResourceProcessor             | github.com/open-telemetry/opentelemetry-collector-contrib/processor/resourceprocessor             | v0.131.0 |
|               | ResourceDetectionProcessor    | github.com/open-telemetry/opentelemetry-collector-contrib/processor/resourcedetectionprocessor    | v0.131.0 |
|               | FilterProcessor               | github.com/open-telemetry/opentelemetry-collector-contrib/processor/filterprocessor               | v0.131.0 |
|               | TransformProcessor            | github.com/open-telemetry/opentelemetry-collector-contrib/processor/transformprocessor            | v0.131.0 |
|               | TailSamplingProcessor         | github.com/open-telemetry/opentelemetry-collector-contrib/processor/tailsamplingprocessor         | v0.131.0 |
|               | ProbabilisticSamplerProcessor | github.com/open-telemetry/opentelemetry-collector-contrib/processor/probabilisticsamplerprocessor | v0.131.0 |
|               | GroupByAttrsProcessor         | github.com/open-telemetry/opentelemetry-collector-contrib/processor/groupbyattrsprocessor         | v0.131.0 |
|               | MetricsGenerationProcessor    | github.com/open-telemetry/opentelemetry-collector-contrib/processor/metricsgenerationprocessor    | v0.131.0 |
|               | MetricsTransformProcessor     | github.com/open-telemetry/opentelemetry-collector-contrib/processor/metricstransformprocessor     | v0.131.0 |
|               | DeltaToCumulativeProcessor    | github.com/open-telemetry/opentelemetry-collector-contrib/processor/deltatocumulativeprocessor    | v0.132.0 |
| **Connector** | CountConnector                | github.com/open-telemetry/opentelemetry-collector-contrib/connector/countconnector                | v0.131.0 |
|               | SpanMetricsConnector          | github.com/open-telemetry/opentelemetry-collector-contrib/connector/spanmetricsconnector          | v0.131.0 |
|               | ServiceGraphConnector         | github.com/open-telemetry/opentelemetry-collector-contrib/connector/servicegraphconnector         | v0.131.0 |
|               | ExceptionsConnector           | github.com/open-telemetry/opentelemetry-collector-contrib/connector/exceptionsconnector           | v0.131.0 |
| **Exporter**  | OTLPExporter                  | go.opentelemetry.io/collector/exporter/otlpexporter                                               | v0.131.0 |
|               | PrometheusExporter            | github.com/open-telemetry/opentelemetry-collector-contrib/exporter/prometheusexporter             | v0.131.0 |
|               | DebugExporter                 | go.opentelemetry.io/collector/exporter/debugexporter                                              | v0.131.0 |
|               | LokiExporter                  | github.com/open-telemetry/opentelemetry-collector-contrib/exporter/lokiexporter                   | v0.130.0 |
|               | AlertManagerExporter          | github.com/open-telemetry/opentelemetry-collector-contrib/exporter/alertmanagerexporter           | v0.131.0 |
| **Extension** | HealthCheckExtension          | github.com/open-telemetry/opentelemetry-collector-contrib/extension/healthcheckextension          | v0.131.0 |
|               | PProfExtension                | github.com/open-telemetry/opentelemetry-collector-contrib/extension/pprofextension                | v0.131.0 |
|               | OAuth2ClientAuthExtension     | github.com/open-telemetry/opentelemetry-collector-contrib/extension/oauth2clientauthextension     | v0.131.0 |
| **Provider**  | EnvProvider                   | go.opentelemetry.io/collector/confmap/provider/envprovider                                        | v1.37.0  |
|               | FileProvider                  | go.opentelemetry.io/collector/confmap/provider/fileprovider                                       | v1.37.0  |
|               | HttpProvider                  | go.opentelemetry.io/collector/confmap/provider/httpprovider                                       | v1.37.0  |
|               | HttpsProvider                 | go.opentelemetry.io/collector/confmap/provider/httpsprovider                                      | v1.37.0  |
|               | YamlProvider                  | go.opentelemetry.io/collector/confmap/provider/yamlprovider                                       | v1.37.0  |
