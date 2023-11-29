#!/bin/bash 
# SPDX-FileCopyrightText: 2023 Yuma Takimoto
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "NG at Line $1"
    res=1
}

res=0

# テストケース：整数のリスト
out=$(echo -e "1\n2\n3\n4\n5" | ./plus)
[ "${out}" = "1
3
6
10
15
15" ] || ng ${LINENO}

# テストケース：浮動小数点数のリスト
out=$(echo -e "1.5\n2.5\n3.5\n4.5\n5.5" | ./plus)
[ "${out}" = "1.5
4.0
7.5
12.0
17.5
17.5" ] || ng ${LINENO}

out=$(echo -e "あ\nい\nう\nえ\nお" | ./plus)
[ "${out}" = "0" ]

[ "$res" = 0 ] && echo OK
exit $res
