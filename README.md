# GitHub CoE × AWS Lab

GitHub CoE と AWS を学ぶための実践型リポジトリです。
このリポジトリは、知識を読むだけでなく、設計・実装・検証・改善を繰り返して学ぶことを目的としています。

## 目的

- GitHub の組織運用・リポジトリ運用の基礎を学ぶ
- AWS の基礎設計とセキュリティ設計を学ぶ
- GitHub Actions と AWS を安全に連携する方法を学ぶ
- IaC (Terraform / CDK) の考え方を体験する
- Platform Engineering の考え方を自分の言葉で整理する

## このリポジトリの思想

このリポジトリでは、次の3つを大事にします。

1. なぜその構成にしたのかを考える
2. 実際に構成や設定を作る
3. 改善点や失敗を記録して次に生かす

単なるメモではなく、実務で使える「設計判断の記録」を残すことを重視します。

## ディレクトリ構成

```text
github-coe-aws-lab-fji/
├── README.md
├── .gitignore
├── Makefile
├── docs/
│   ├── architecture/
│   │   ├── overview.md
│   │   └── github-coe-architecture.md
│   ├── github/
│   │   ├── repository-governance.md
│   │   └── actions-oidc.md
│   ├── aws/
│   │   ├── iam-basics.md
│   │   └── vpc-and-networking.md
│   └── adr/
│       └── 0001-use-terraform-for-aws.md
├── labs/
│   ├── 01-github-governance/
│   │   └── README.md
│   ├── 02-aws-iam-vpc/
│   │   └── README.md
│   └── 03-github-actions-oidc/
│       └── README.md
├── infrastructure/
│   ├── terraform/
│   │   ├── modules/
│   │   └── environments/
│   └── scripts/
├── templates/
│   ├── repo-template/
│   │   └── README.md
│   └── terraform-module-template/
│       └── README.md
├── notes/
│   └── learning-log/
│       └── week-01.md
└── examples/
    ├── sample-aws-architecture.md
    └── sample-cicd-flow.md
```

## 使い方

### 1. まず読むべき内容

- `docs/architecture/overview.md`
- `docs/github/repository-governance.md`
- `docs/aws/iam-basics.md`

### 2. lab に取り組む

`labs/` 配下の演習を順に進めます。
各 lab は、次の観点を持つようにします。

- 目的
- 前提
- 設計意図
- 実装手順
- 確認方法
- 改善ポイント

### 3. 手を動かす

- GitHub の運用ルールを自分で整理する
- AWS の最小構成を terraform で作る
- GitHub Actions から AWS にアクセスする設計を試す
- 失敗した箇所を記録して改善する

### 4. 記録する

学習したことを `notes/` と `docs/adr/` に残します。

- 何を選んだか
- なぜその設計にしたか
- どこで躓いたか
- 次に改善するべき内容

この記録が、後で自分の設計判断の軸になります。

## 学習の流れ

### Phase 1: GitHub CoE

- repository governance
- branch protection
- CODEOWNERS
- required checks
- security scanning
- Actions と OIDC の設計

### Phase 2: AWS 基礎

- IAM
- VPC / subnet / route table
- S3
- EC2 / ECS / Lambda
- CloudWatch / CloudTrail
- Terraform での構成管理

### Phase 3: GitHub × AWS 統合

- GitHub Actions から AWS へアクセス
- OIDC を使った認証設計
- Terraform plan/apply の運用
- deployment workflow の設計

### Phase 4: Platform Engineering

- repo template の設計
- environment promotion strategy
- policy と guardrail
- self-service と governance のバランス

## 実装方針

### 1. 小さく始める

最初は巨大な構成を作ろうとせず、最小構成で動かすことを重視します。

例:
- GitHub Actions で AWS に assume role する
- Terraform で VPC と IAM を作る
- ECS か Lambda を 1 つデプロイして動作確認する

### 2. 設計意図を残す

実装するときは、手順だけでなく以下を記録します。

- なぜこのサービスを選んだか
- なぜこのネットワーク設計にしたか
- どこでセキュリティ境界を置いたか
- どの環境にどの権限を割り当てるか

### 3. 実際に検証する

- terraform validate
- terraform plan
- AWS 上でアクセス確認
- CloudWatch でログ確認
- 失敗時に原因を説明できること

## 実験テーマ候補

- GitHub org と repo の運用設計
- GitHub Actions と OIDC による AWS 連携
- Terraform での dev / stg / prod の切り分け
- IAM での最小権限
- VPC と subnet での分離設計
- CloudWatch とログ運用
- Deployment pipeline と environment promotion

## 実践のコツ

- 1 つの課題を決める
- 小さく分解する
- まずは最小構成で動かす
- 失敗をメモに残す
- 再設計して改善する

## 目標

このリポジトリの最終的な目標は、
「GitHub と AWS を学ぶだけで終わらず、仕事で使える設計判断ができるようになる」ことです。

このリポジトリを見れば、

- 何を学ぶべきか
- どの順番で学ぶべきか
- どう設計するか
- どう実装すべきか

が自然と整理できるようにしています。

## 次にやること

1. GitHub CoE の基盤を lab で実装する
2. AWS の最小構成を Terraform で作る
3. GitHub Actions と AWS を OIDC で接続する
4. 設計意図を docs と ADR に残す
5. 継続的に改善する

## ライセンス

MIT License

---

作成者の学習メモとして使い、必要に応じて内容を拡張していってください。
