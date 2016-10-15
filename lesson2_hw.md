# Ruby Calculator
```ruby
puts "Welcome to Ruby calculator"

puts "Please enter the first number"
	num1 = gets.chomp.to_f
puts "Please enter the second number"
	num2 = gets.chomp.to_f

puts "請選擇計算方式(輸入數字1~4)： 1)加法  2)減法  3)乘法  4)除法"
operation = gets.chomp.to_i
case operation
	when 1 then puts "Your answer is #{num1 + num2}"
	when 2 then puts "Your answer is #{num1 - num2}"
	when 3 then puts "Your answer is #{num1 * num2}"
	when 4 then puts "Your answer is #{num1 / num2}"
end
#1)應該先選方法再輸入數字1跟2 2)如何限制只能輸入1~4選項  3)結束後再次啟動計算機
```