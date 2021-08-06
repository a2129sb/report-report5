#!/bin/bash

#エラーメッセージ
1
ERROR_EXIT () { # ERROR関数
echo "$1" >&2 # エラーメッセージ(引数1)を標準エラー出⼒に表⽰
rm -f /tmp/$$-* # 作ったファイルの削除
exit 1 # エラー終了
}

./.sh > /tmp/$$-result # 結果データをresult-$$に
echo $a > /tmp/$$-ans # 正解データ（⼿作り）をans-$$に
echo $b >> /tmp/$$-ans
diff /tmp/$$-ans /tmp/$$-result || ERROR_EXIT "result err" # 失敗
rm -f /tmp/$$-* # 後始末
