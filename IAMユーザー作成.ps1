#ユーザー作成
$aws iam create-user --user-name ユーザー名 --tags Key=タグ名,Value=タグのValue --no-verify

# --user-name: ユーザー名
# -tags: タグの追加

#パスワードの設定
$aws iam create-login-profile --user-name ユーザー名 --password 'パスワード' --password-reset-required --no-verify

# create-login-profile　パスワード設定
# –password-reset-required：「ユーザー詳細の設定：パスワードのリセットが必要」がこのオプションです


#IAMUserChangePassword ポリシーを取得
$aws iam attach-user-policy --user-name ユーザー名 --policy-arn arn:aws:iam::aws:policy/IAMUserChangePassword --no-verify

# attach-user-policy　GUIの「ユーザーは、自動的に IAMUserChangePassword ポリシーを取得」相当を設定します。

#グループの追加
$aws iam add-user-to-group --user-name ユーザー名 --group-name グループ名 --no-verify