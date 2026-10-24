# Lab 03: GitHub Actions + OIDC

## 目的

GitHub Actions から AWS に安全にアクセスする方法を理解する。

## 学習テーマ

- OIDC の基本
- IAM role trust relationship
- workflow secrets の使い方
- deploy の自動化

## 実施内容

1. GitHub Actions の workflow を作る
2. OIDC で AWS にサインインする
3. assume role の trust policy を定義する
4. plan / apply の流れを作る
5. 失敗時のログ確認を行う

## 設計メモ

- secret を埋め込まない
- role を分けて環境ごとに権限を制限する
- production への適用は manual approval を検討する

## 確認ポイント

- AWS へのアクセスが OIDC で完結しているか
- role の trust policy が適切か
- workflow の実行ログが追跡しやすいか

## 次のアクション

次は Terraform で AWS 構成をコード化する。
