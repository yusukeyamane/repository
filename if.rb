number = 48
# 条件分岐を作成してください
if number.modulo(15) == 0
  puts "15の倍数です"
elsif number.modulo(5) == 0
  puts "5の倍数です"
elsif number.modulo(3) == 0
  puts "3の倍数です"
else
  puts "3の倍数でも5の倍数でもありません"
end