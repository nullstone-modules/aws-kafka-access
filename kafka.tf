data "ns_connection" "kafka" {
  name     = "kafka"
  contract = "datastore/aws/kafka:*"
}

locals {
  kafka_cluster_arn       = data.ns_connection.kafka.outputs.cluster_arn
  kafka_brokers           = data.ns_connection.kafka.outputs.brokers
  kafka_port              = data.ns_connection.kafka.outputs.brokers_port
  kafka_security_group_id = data.ns_connection.kafka.outputs.security_group_id
}
