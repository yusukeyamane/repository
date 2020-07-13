# マージソート
# ①配列の数字を定義する
# ②分割をくりかえす
# ③配列の中身が1個になったら、分割終わり
# ④配列の中身を入れ替える
# ⑤マージしていく

# arrayを定義
array = [93, 38, 319, 32, 3, 84, 489, 893]

# arrayを分割
array.length / 2
# arrayが1個になったら、分割終わり
return array                       if array.length == 1
# arrayが2個の時、
return array[array.min, array.max] if array.length == 2

# 配列を結合する
array1.push(array2)
array1.flatten!
