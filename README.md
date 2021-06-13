# terraform-simple-eccube-on-aws

This is a terraform configuration which creates an EC-CUBE environment on AWS, using simgle EC2 instance.

## 要件

- Terraform
- AWS アカウント
- AWS アカウントの認証設定

## デプロイ

```bash
$ terraform init
$ terraform apply
```

## EC-CUBE の初期設定

1. Terraform の output `instance_public_dns` にブラウザでアクセスする。
2. 「ようこそ」画面で「次へ進む」ボタンをクリックする。
3. 「権限チェック」画面で「次へ進む」ボタンをクリックする。
4. 「サイトの設定」画面で以下を設定する。
  - あなたの店名: 任意の名前
  - メールアドレス: あなたのメールアドレス
  - 管理画面ログインID: 任意のID
  - 管理画面パスワード: 任意のパスワード
  - 管理画面のディレクトリ名: 任意のディレクトリ名
5. 「サイトの設定」画面で「次へ進む」をクリックする。
6. 「データベースの設定」画面で以下を設定する。
  - データベースのホスト名: localhost
  - データベースのポート番号: 3306
  - データベース名: ecdb
  - ユーザ名: ecuser
  - パスワード: ecpass
7. 「データベースの設定」画面で「次へ進む」をクリックする。
8. 「データベースの初期化」画面で「次へ進む」をクリックする。
9. 「インストール完了」画面で「管理画面を表示」をクリックする。
10. ログイン画面で管理画面ログインIDと管理画面パスワードを入力し、ログインする。
