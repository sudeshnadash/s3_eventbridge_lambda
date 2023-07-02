resource "aws_cloudwatch_event_rule" "s3_event_rule" {
  name        = "s3_event_rule"
  description = "Trigger Lambda from S3 events"
  event_pattern = <<EOF
{
  "source": [
    "aws.s3"
  ],
  "detail-type": [
    "AWS API Call via CloudTrail"
  ],
  "detail": {
    "eventSource": [
      "s3.amazonaws.com"
    ],
    "eventName": [
      "PutObject",
      "CopyObject",
      "CompleteMultipartUpload"
    ],
    "requestParameters": {
      "bucketName": [
        "${aws_s3_bucket.s3_trigger.id}"
      ]
    }
  }
}
EOF
}

resource "aws_cloudwatch_event_target" "s3_event_target" {
  rule      = aws_cloudwatch_event_rule.s3_event_rule.name
  target_id = "s3_event_target"
  arn       = aws_lambda_function.s3_eventbridge_lambda.arn
}
