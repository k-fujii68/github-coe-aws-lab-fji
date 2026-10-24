# Lab 01: GitHub Governance

## 目的

GitHub CoE の基本を理解し、リポジトリ運用をどう設計するかを考える。

## 学習テーマ

- repo の命名
- branch protection
- CODEOWNERS
- required status checks
- security features

## 実施内容

1. GitHub org と repo の設計を考える
2. main branch を保護する設計を考える
3. CODEOWNERS を作る
4. required checks を整理する
5. Dependabot と secret scanning を検討する

## 実装のメモ

- production branch は厳格にする
- application code と infrastructure code の owner を分ける
- review の責任を明確にする

## 確認ポイント

- PR 必須化されているか
- main への直接 push ができないか
- required checks が有効か

## 次のアクション

次の lab では AWS の IAM と VPC を理解する。
