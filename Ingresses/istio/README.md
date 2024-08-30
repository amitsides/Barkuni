# Global Settings:

global.mtls.enabled: true: Enables mutual TLS (mTLS) across the mesh for service-to-service communication.


## Ingress Gateway Configuration:

gateways.istio-ingressgateway.enabled: true: Enables the Istio ingress gateway.
gateways.istio-ingressgateway.sds.enabled: true: Enables Secret Discovery Service (SDS) for dynamic secret management.


## TLS Configuration for Tenants:

Two separate server configurations are defined, one for each tenant.
Each configuration specifies:

Port 443 for HTTPS traffic
A unique name for the port (e.g., https-tenant-a)
The hostname for the tenant (e.g., tenant-a.example.com)
TLS mode set to SIMPLE (server-side TLS)
A credential name pointing to the Kubernetes secret containing the TLS certificate and key




Core Istio Components:

pilot.enabled: true: Enables Istio Pilot, which is responsible for service discovery, configuration, and certificate management.
telemetry.enabled: true: Enables Istio's telemetry collection.


Observability Stack:

tracing.enabled: true and tracing.provider: zipkin: Enables distributed tracing using Zipkin.
prometheus.enabled: true: Enables Prometheus for metrics collection.
grafana.enabled: true: Enables Grafana for metrics visualization.
kiali.enabled: true: Enables Kiali for service mesh observability.


Certificate Management:

certmanager.enabled: true: Enables cert-manager integration for automated certificate management.