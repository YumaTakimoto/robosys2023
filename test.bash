#!/bin/bash

ng () {
    echo "NG at Line $1"
    res=1
}

# テストケース：整数のリスト
out=$(echo -e "1\n2\n3\n4\n5" | ./plus)
[ "${out}" = "1\n3\n6\n10\n15\nFinal total: 15" ] || ng ${LINENO}

# テストケース：浮動小数点数のリスト
out=$(echo -e "1.5\n2.5\n3.5\n4.5\n5.5" | ./plus)
[ "${out}" = "1.5\n4.0\n7.5\n12.0\n17.5\nFinal total: 17.5" ] || ng ${LINENO}
