/************************************************************
Dynamic Group - Management Agents
************************************************************/
# 「oci_identity_dynamic_group」を使用する場合はルートコンパートメントのDefaultアイデンティティドメインにしか作成できない
# 「oci_identity_domains_dynamic_resource_group」を使用すれば、指定のアイデンティティドメインに作成可能
resource "oci_identity_dynamic_group" "management_agents" {
  compartment_id = var.tenancy_ocid
  name           = "Management_Agents_Dynamic_Group"
  description    = "Management Agents Dynamic Group"
  matching_rule = format(
    "All {resource.type='managementagent', resource.compartment.id='%s'}",
    oci_identity_compartment.workload.id
  )
  defined_tags = local.common_defined_tags
}

/************************************************************
IAM Policy - Management Agents
************************************************************/
resource "oci_identity_policy" "management_agents_custommoni" {
  compartment_id = oci_identity_compartment.workload.id
  description    = "OCI Management Agents Policy for Metrics Monitoring"
  name           = "management-agents-custom-metrics-monitoring-policy"
  statements = [
    format("allow dynamic-group %s to use metrics in compartment %s",
      oci_identity_dynamic_group.management_agents.name,
      oci_identity_compartment.workload.name
    )
  ]
  defined_tags = local.common_defined_tags
}