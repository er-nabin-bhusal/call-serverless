import json
from formatter import format_request
from typing import Union

import boto3

client = boto3.client("lambda", region_name="us-east-1")


def call_lambda(
    lambda_arn: str,
    path: str,
    method: str,
    stage: str,
    body: Union[dict, None] = None,
    headers: Union[dict, None] = None,
):

    payload = format_request(stage, path, method, body, headers)

    response = client.invoke(
        FunctionName=lambda_arn,
        InvocationType="RequestResponse",
        Payload=json.dumps(payload),
    )

    response_str = response["Payload"].read().decode("utf-8")
    response_json = json.loads(response_str)
    return json.loads(response_json["body"])
