resource "aws_cloudwatch_event_rule" "s3_event_rule" {
  name          = "s3_event_rule"
  description   = "Trigger Lambda from S3 events"
  event_pattern = <<EOF
{
  "detail": {
    "object": {
      "key":[
      {
        "prefix": "test"
      }
      {
        "suffix": ".pdf"
      }]
    },
    "bucket": {
      "name": ["${aws_s3_bucket.s3_trigger_eventbridge.id}"]
    }
  },
  "detail-type": ["Object Created"],
  "source": ["aws.s3"]
}
EOF
}

resource "aws_cloudwatch_event_target" "s3_event_target" {
  rule      = aws_cloudwatch_event_rule.s3_event_rule.name
  target_id = "s3_event_target"
  arn       = aws_lambda_function.s3_eventbridge_lambda.arn
}
