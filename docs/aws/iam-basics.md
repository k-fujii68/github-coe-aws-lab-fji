# IAM and AWS Network Basics

## 目的

AWS では、権限・ネットワーク・監視を設計の核として扱う必要があります。

## IAM の基本原則

- 最小権限
- 役割ごとに分離
- assume role を使う
- 外部公開は最小限にする

## 典型的な設計

- GitHub Actions から AWS に入る場合は OIDC を使う
- 本番と開発で role を分ける
- リソースごとに policy を適切に分離する

## VPC とネットワーク設計

- public subnet / private subnet を分ける
- NAT / Internet Gateway を設計する
- security group と NACL を整理する

## 設計メモ

- public に置くべきものと private に置くべきものを明確にする
- DB や内部 API は private に配置する
- 外部公開は ALB / API Gateway などの境界を設ける

## 次に考えるべきこと

- どの環境でどの VPC を使うか
- ingress と egress をどう制御するか
- 手動設定と IaC の境界はどこか
