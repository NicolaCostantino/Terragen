# resource "aws_iam_policy" "secrets" {
#   name        = "${var.name}-task-policy-secrets"
#   description = "Policy that allows access to the secrets we created"

#   policy = <<EOF
# {
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Sid": "AccessSecrets",
#             "Effect": "Allow",
#             "Action": [
#               "secretsmanager:GetSecretValue"
#             ],
#             "Resource": ${jsonencode(var.container_secrets_arns)}
#         }
#     ]
# }
# EOF
# }

# resource "aws_iam_policy" "dynamodb" {
#   name        = "${var.name}-task-policy-dynamodb"
#   description = "Policy that allows access to DynamoDB"

#   policy = <<EOF
# {
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Effect": "Allow",
#             "Action": [
#                 "dynamodb:CreateTable",
#                 "dynamodb:UpdateTimeToLive",
#                 "dynamodb:PutItem",
#                 "dynamodb:DescribeTable",
#                 "dynamodb:ListTables",
#                 "dynamodb:DeleteItem",
#                 "dynamodb:GetItem",
#                 "dynamodb:Scan",
#                 "dynamodb:Query",
#                 "dynamodb:UpdateItem",
#                 "dynamodb:UpdateTable"
#             ],
#             "Resource": "*"
#         }
#     ]
# }
# EOF
# }