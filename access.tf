resource "aws_iam_role_policy_attachment" "access" {
  role       = var.app_metadata["role_name"]
  policy_arn = aws_iam_policy.access.arn
}

resource "aws_iam_policy" "access" {
  name   = local.resource_name
  tags   = local.tags
  policy = data.aws_iam_policy_document.access.json
}

data "aws_iam_policy_document" "access" {
  statement {
    effect    = "Allow"
    resources = [local.kafka_cluster_arn]

    actions = [
      "kafka:DescribeCluster",
      "kafka:GetBootstrapBrokers",

      "kafka-cluster:Connect",
      "kafka-cluster:DescribeCluster",

      "kafka-cluster:DescribeTopic",
      "kafka-cluster:CreateTopic",
      "kafka-cluster:AlterTopic",
      "kafka-cluster:AlterTopicDynamicConfiguration",
      "kafka-cluster:DeleteTopic",

      "kafka-cluster:DescribeGroup",
      "kafka-cluster:AlterGroup",

      "kafka-cluster:ReadData",
      "kafka-cluster:WriteData",
      "kafka-cluster:WriteDataIdempotently",

      "kafka-cluster:AlterTransactionalId",
      "kafka-cluster:DescribeTransactionalId",
    ]
  }
}
