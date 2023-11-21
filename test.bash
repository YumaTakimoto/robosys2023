#!/bin/bash
# NG関数：エラーメッセージを表示し、結果を1に設定
ng() {
    echo "NG at Line $1"
    res=1
}

# テストケースの配列
declare -a tests=("1\n2\n3\n4\n5" "1.5\n2.5\n3.5\n4.5\n5.5" "1\n2.5\n3\n4.5\n5")
# 期待される出力の配列
declare -a expected=("1\n3\n6\n10\n15\nFinal total: 15" "1.5\n4.0\n7.5\n12.0\n17.5\nFinal total: 17.5" "1\n3.5\n6.5\n11.0\n16.0\nFinal total: 16.0")

# 結果の初期化
res=0

# 各テストケースをループで処理
for i in "${!tests[@]}"; do
    echo -e "${tests[$i]}" | ./sum_input.py > output.txt
    diff output.txt <(echo -e "${expected[$i]}") || ng $((i+1))
done

# 結果の確認と表示
[ "$res" = 0 ] && echo "OK"
rm output.txt
exit $res
