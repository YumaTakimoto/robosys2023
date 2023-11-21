#!/bin/bash

# テストケース：整数のリスト
echo -e "1\n2\n3\n4\n5" | ./sum_input.py > output.txt
diff output.txt <(echo -e "1\n3\n6\n10\n15\nFinal total: 15") || echo "Test 1 failed"

# テストケース：浮動小数点数のリスト
echo -e "1.5\n2.5\n3.5\n4.5\n5.5" | ./sum_input.py > output.txt
diff output.txt <(echo -e "1.5\n4.0\n7.5\n12.0\n17.5\nFinal total: 17.5") || echo "Test 2 failed"

# テストケース：整数と浮動小数点数の混在
echo -e "1\n2.5\n3\n4.5\n5" | ./sum_input.py > output.txt
diff output.txt <(echo -e "1\n3.5\n6.5\n11.0\n16.0\nFinal total: 16.0") || echo "Test 3 failed"

echo "All tests passed!"
rm output.txt
