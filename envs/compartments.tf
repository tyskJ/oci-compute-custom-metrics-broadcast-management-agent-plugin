/************************************************************
Compartment - workload
************************************************************/
resource "oci_identity_compartment" "workload" {
  compartment_id = var.tenancy_ocid
  name           = "oci-compute-custom-metrics-using-prometheus-node-exporter"
  description    = "For OCI Compute Custom Metrics Using Prometheus Node Exporter"
  enable_delete  = true
}