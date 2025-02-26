# aws-kafka-access

Configures a Nullstone app with access to a Kafka cluster.

## Details

This configures 3 important configurations to connect to Kafka
1. Security group rules on the Kafka cluster and the app role.
2. IAM access on the app role.
3. Inject kafka broker endpoints as environment variables.

### Connect to Kafka from your code

When connecting to Kafka, you will need to use all broker endpoints injected.
The environment variable, `KAFKA_BROKERS`, contains a comma-delimited list of endpoints (i.e. `<subdomain>:<port>`).
Depending on the language/framework you're using, you may need to convert those into an array that is used for Kafka connection configuration. 
