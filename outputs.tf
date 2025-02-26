output "env" {
  value = [
    {
      name  = "KAFKA_BROKERS"
      value = join(",", local.kafka_brokers)
    }
  ]
}
