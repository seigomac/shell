#!/bin/bash

#current_user=`AWS_DEFAULT_PROFILE`
current_user=`echo $AWS_PROFILE`

echo "これからcliユーザ変更します。"
echo "現在のユーザの確認です。"

if [ -z "$current_user" ];
then
    echo "ユーザの設定がされていません。"
else
    echo "現在のユーザは"$current_user"です。"
fi

echo "CLIユーザの変更処理を行います。"
export AWS_PROFILE=$1
echo "新しいユーザは"$AWS_PROFILE"です。"
