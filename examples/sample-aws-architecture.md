# Sample AWS Architecture

## 想定構成

- GitHub Actions
- OIDC role
- VPC
- public subnet
- private subnet
- ALB or API Gateway
- ECS or Lambda
- S3 / CloudWatch / IAM

## 設計意図

- 外部公開は最小限にする
- compute は private network に置く
- monitoring を有効にする
- logs と IAM を必ず受ける

## メモ

この図は最小構成の考え方を示すための例です。

