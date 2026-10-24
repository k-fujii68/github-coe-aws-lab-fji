# GitHub Repository Governance

## 目的

GitHub CoE として重要なのは、ただリポジトリを作ることではなく、
組織としてどう運用するかを決めることです。

## 基本的な視点

- 誰がどのリポジトリを管理するか
- どのブランチ運用にするか
- 誰がレビューを担当するか
- 必須の品質チェックをどう設定するか
- どこまで自動化するか

## 設計観点

### 1. Branch protection

- main への直接 push を禁止
- PR 必須化
- required status checks の設定
- code owner review の設定

### 2. CODEOWNERS

- 特定のディレクトリやファイルに対するレビュー責任を明確にする
- 変更の影響範囲を可視化する

### 3. Security features

- Dependabot
- secret scanning
- code scanning
- vulnerability alerts

### 4. GitHub Actions

- CI の自動化
- テストの通過必須
- deploy の前に plan を確認
- OIDC による AWS への安全な認証

## 実務での設計例

- production branch は branch protection を厳格にする
- release には review requirement を強化する
- infrastructure 配下は code owner を明確化する
- 重要な workflow は required checks に追加する

## 学習課題

- GitHub org でどう repo を分けるべきか
- 個人開発と組織開発のルール差分は何か
- どこまで自動化が適切か

## メモ

GitHub の運用は、設計そのもの。単なるツール設定ではなく、開発体制とセキュリティ方針の反映が重要です。
