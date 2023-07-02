import json

def lambda_handler(event, context):
    print("Event got triggered from S3")
    print(event)
