#!/bin/bash

ng () {
    echo "NG at Line $1"
    res=1
}

# テストケース：整数のリスト
echo -e "1\n2\n3\n4\n5" | ./plus.py > output.txt
diff output.txt <(echo -e "1\n3\n6\n10\n15\nFinal total: 15") || ng 1

# テストケース：浮動小数点数のリスト
echo -e "1.5\n2.5\n3.5\n4.5\n5.5" | ./plus.py > output.txt
diff output.txt <(echo -e "1.5\n4.0\n7.5\n12.0\n17.5\nFinal total: 17.5") || ng 2

# テストケース：整数と浮動小数点数の混在
echo -e "1\n2.5\n3\n4.5\n5" | ./plus.py > output.txt
diff output.txt <(echo -e "1\n3.5\n6.5\n11.0\n16.0\nFinal total: 16.0") || ng 3

[ "$res" = 0 ] && echo "OK"
exit $res
