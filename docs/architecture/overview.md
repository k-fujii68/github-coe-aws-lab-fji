# Architecture Overview

## 目的

このリポジトリの設計目的は、GitHub と AWS を学びながら、実務に近い構成を小さく試すことです。

## 基本方針

- GitHub は「企業の開発基盤」として運用を学ぶ
- AWS は「実際のアプリ実行基盤」として設計を学ぶ
- GitHub Actions は「自動化の入口」として学ぶ
- IaC は「再現性」と「運用の標準化」として学ぶ

## 学習の全体像

```text
GitHub
  ├── repo governance
  ├── code review
  ├── branch protection
  ├── security scanning
  └── deployment pipeline

AWS
  ├── IAM
  ├── VPC / networking
  ├── compute services
  ├── storage
  └── observability

Integration
  ├── OIDC auth
  ├── CI/CD
git  ├── Terraform / CDK
  └── deployment automation
```

## どの順番で学ぶか

1. GitHub CoE の基礎
2. AWS の基礎
3. GitHub Actions と OIDC
4. Terraform / CDK による構成管理
5. Platform Engineering の視点

## このリポジトリで意識すること

- セキュリティを最初に考える
- 最小権限を原則とする
- その構成を説明できるようにする
- 変更の理由を記録する

## 例: 学習の流れ

- GitHub org の設計を考える
- AWS アカウントと IAM を設計する
- OIDC で GitHub Actions から AWS にアクセスする
- Terraform でインフラを構築する
- deploy workflow を作る
- 監視と改善を行う

## 目標

最終的には、「GitHub と AWS を組み合わせて安全にデプロイできる設計」が自分の中で組み立てられる状態を目指します。
