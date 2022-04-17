
puts "室内温度・設定温度・風量の順で入力してください"

input_lines = readlines

room = input_lines[0].to_i

air_conditioner = input_lines[1].to_i

blow = input_lines = input_lines[2].to_i

temperature_diff = (room - air_conditioner).abs

require_time = 0

if temperature_diff < 5
  require_time = 15

elsif temperature_diff >= 5 && temperature_diff < 10
  require_time = 30

elsif temperature_diff >= 10
  require_time = 60

end

case blow

when 1

when 2
  require_time = require_time - 5

when 3
  require_time = require_time - 10

else
  puts "風量の値は1~3にしてください"
  exit

end

puts "設定温度までにかかる時間は#{require_time}分です"