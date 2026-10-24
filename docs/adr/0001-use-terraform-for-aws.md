# ADR: Use Terraform for AWS Infrastructure

- Status: Accepted
- Date: 2026-10-24

## Context

AWS のインフラは、手動で作ると状態管理が難しく、再現性と運用性が低下する。
GitHub と連携しながら、環境構築を自動化する必要がある。

## Decision

AWS の基盤構築には Terraform を使う。

## Reasons

- state management が可能
- code review しやすい
- prod / dev / stg を分けやすい
- GitHub Actions と組み合わせしやすい
- 再利用可能なモジュール化がしやすい

## Consequences

- terraform の学習コストがある
- plan / apply の運用ルールが必要になる
- state ファイルの管理に注意が必要

## Follow-up

- module 分割を進める
- dev / stg / prod のパターンを作る
- GitHub Actions で plan/apply を自動化する
