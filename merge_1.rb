def merge_sort array
  return array if array.length == 1
  return [array.min, array.max] if array.length == 2

  half = array.length / 2

  left = merge_sort array[0..(half-1)]
  right = merge_sort array[half..-1]

  lv = left.shift
  rv = right.shift
  Array.new(array.size){
    if lv < rv
      lv.tap{ lv = left.shift || right[-1] || rv }
    else
      rv.tap{ rv = right.shift || left[-1] || lv }
    end
  }
end

require 'pp'

array = Array.new(10){ rand(100) } # [0..100) の整数 10個の配列を生成
pp array
pp (sorted_array = merge_sort(array))
puts "is_sorted: #{array.sort == sorted_array}"