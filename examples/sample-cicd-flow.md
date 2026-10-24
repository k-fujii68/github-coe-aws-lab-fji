# Sample CI/CD Flow

## フロー

1. Developer pushes code
2. GitHub Actions runs CI
3. Terraform plan runs
4. reviewer approves PR
5. deploy workflow runs
6. AWS resources are updated
7. logs are monitored

## 重要なポイント

- plan と apply を分ける
- production deploy は approval を要求する
- 必ずログと監視を残す

## 実践の視点

CI/CD の設計は、開発スピードと安全性のバランスを取ることが重要です。
