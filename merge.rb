# マージソート
# ①配列の数字を定義する
# ②分割をくりかえす
# ③配列の中身が2個になったら、分割終わり
# ④配列の中身を入れ替える
# ⑤マージしていく

def merge_sort array
  return array                  if array.length == 1
  return [array.min, array.max] if array.length == 2
  
  # 配列を分割する
  half  = array.length / 2

  # 分割した配列を
  left  = merge_sort array[0..(half-1)]
  right = merge_sort array[half..-1]

  # shiftメソッドとは、配列の先頭の要素を返すもの
  lv    = left.shift
  rv    = right.shift

  Array.new(array.size){
    if lv < rv
      lv.tap{ lv = left.shift || right[-1] || rv }
    else
      rv.tap{ rv = right.shift || left[-1] || lv }
    end
  }
end

array = Array.new(10){ rand(100) } # [0..100) の整数 10個の配列を生成
puts array
puts (sorted_array = merge_sort(array))