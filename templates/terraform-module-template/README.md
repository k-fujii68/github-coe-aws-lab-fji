# Terraform Module Template

## 目的

Terraform モジュールの雛形を作る。

## 例: 構成

```hcl
variable "name" {
  type = string
}

output "id" {
  value = var.name
}
```

## 使い方

- module を作る時に雛形として利用する
- variable と output を整理する
- output と resource の責務を分ける
