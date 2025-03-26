output "env" {
  value = [
    {
      name  = "KAFKA_BROKERS"
      value = join(",", local.kafka_brokers)
    },
    {
      name  = "KAFKA_TLS_ENABLED",
      value = tostring(local.kafka_tls_enabled)
    }
  ]
}
