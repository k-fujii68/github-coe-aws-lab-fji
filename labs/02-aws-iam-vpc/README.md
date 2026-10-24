# Lab 02: AWS IAM and VPC

## 目的

AWS の基本設計である IAM と VPC を学ぶ。

## 学習テーマ

- IAM role
- least privilege
- VPC / subnet / route table
- security group
- NAT / Internet Gateway

## 実施内容

1. IAM の最小権限設計を考える
2. VPC の構成を図に起こす
3. public subnet と private subnet を分ける
4. GitHub Actions 用の OIDC role を想定する
5. log と monitoring を設計する

## 設計メモ

- 公開するものと公開しないものを分離する
- DB や内部 API は private subnet に置く
- GitHub Actions は assume role を使う

## 確認ポイント

- role の権限が最小化されているか
- subnet の役割が明確か
- security group の制御が明示されているか

## 次のアクション

次に GitHub Actions と AWS の接続を学ぶ。
