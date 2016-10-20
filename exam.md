
#Ruby on rails小考一    

1. 請說明 Fixnum (整數) 和 Float (浮點數) 之間的差異
Answer:
Fixnum 用來做整數間的運算或顯示,，可以有正負值;Float是用來做小數之間的運算或顯示，同樣也有正負值;如整數運算中產生小數，需指定型別轉為浮點數，如以下範例:

  ```ruby
  num1 = 10 
  puts num1.class 
  num2 = 3
  puts num2.class
  num3 = 10/3 #出現 3, nil
  puts num3.class #因為型別為整數，運算出結果為3，不是我們想呈現的結果
  num3 = num1/num2.to_f #型別轉換為float後，其結果為我們想要的3.3333333333
  ```
2. 今天有兩個字串：
str1 = "Hallo Welt!" 
str2 = " NTU Rails 261!"
請說明以下兩個印出字串的方式的不同處：
puts str1 + str2
puts "#{str1}#{str2}"
Answer:
puts str1 + str2 及puts "#{str1}#{str2}" 顯示結果皆為"Hallo Welt! NTU Rails 261!",其主要差別在於前者創一個新記憶體空間，後者是由原儲存記憶體位置指定過來，不占記憶體。
3. 請解釋 array 和 hash 的不同處
Answer:
array(陣列) 能夠容納各種型別的物件並用逗號隔開項目,用數字序列的索引號碼提取內容。
hash (雜湊) 用key 與value 組成的內容，提取時用key來提取value。
舉例如下:

  ```ruby
  arr = [1, 2, [3,4]] 
  puts arr[2][0] #印出4,也就是第3位的第1位數字
  book = { 
    :book_name => "The Effective Executive", 
    :date => 2009,
    :writer => "Peter Ferdinand Drucker"
    }
  puts book[:book_name] #用:book_name為key印出書名
  ```
4. 請用一行程式碼從 [1, "a string", 3.14, [1,2,3,4]] 這個陣列找出所有非字串的值
Answer:

```ruby
[1, "a string", 3.14, [1,2,3,4]].delete_if {|x| (x.is_a? String)}

```   

5. 請用一行程式碼把一個內容為整數 1 到 100 的陣列裡所有的值加上 2
Answer:

```ruby
(1..100).to_a.map {|x| x+2}
(1+2..100+2).to_a

```  
6. 請寫出以下兩行程式碼迴傳的值，並解釋他們呼叫的方法差別為何：

[1, 2, 3, 3].uniq
[1, 2, 3, 3].uniq!
Answer:
[1, 2, 3, 3].uniq 只留下沒重複的元素
[1, 2, 3, 3].uniq!只留下沒重複的元素,並且把原陣列變成沒有重複元素的陣列，如以下範例:
    
```ruby
arr1 = [1, 2, 3, 3]
arr2 = [1, 2, 3, 3]
arr1.uniq #留下沒重複的元素 [1, 2, 3]
arr1 #再呼叫一次 arr1 [1, 2, 3, 3]陣列內元素未改變
arr2.uniq! #留下沒重複的元素 [1, 2, 3]
arr2 #再呼叫一次 arr2  [1, 2, 3]陣列內元素改變
```

7. 請列出兩種產出亂數的方法

Answer:
random:隨機選出範圍內的元素
shuffle:洗牌
如以下範例:

```ruby

6.times.map{ 1 + Random.rand(49) } #大樂透透過電腦選6個數字介於1~49
["R","P","S"].shuffle!.last #洗牌猜拳,改變陣列元素之排序,取接著最後一個

```

8. 以下這段程式碼：

((1 > 3)&&(true == true))||(!!!false)
會執行出什麼結果？ 請試試不用 irb 算出結果

Answer:

"||"分為左右兩邊，左邊是 nil or false 的時候， 就指定為||= 符號右邊的數值.
step1 判斷((1 > 3)&&(true == true)) :其中&&是且的意思，其左右兩邊要滿足,
    1 > 3 => false , true == true => true , false && true => false
step2 判斷(!!!false) 
    !代表相反的意思,右式代表false的相反的相反的相反，也就是true.
step3 因為左邊是false 的時候， 就指定為||= 符號右邊的數值
step4 result is true

9.請問 binding.pry 是什麼？ 要如何使用它？

Answer:
1)binding.pry 是ruby語言用來偵錯的tool
2)使用時先在程式宣告require 'pry', 在檢核範圍下端加入binding.pry,此時可針對夾擊範圍內的每個參數進行偵錯

10. 下面的一段程式碼，請嘗試用其他方法把 if...else...end 簡化成一行

    var = 5
    def var
    if var >= 5
      return "var is greater than or equal to 5"
    else
      return "var is less than 5"
    end

```ruby

    var >= 5 ? "var is greater than or equal to 5" : "var is less than 5"

```

11. 請列出兩種不同的 hash 寫法
1)使用symbol

```ruby

US_presidential_candidate = {
        realname: "Trump",
        age: "70"
        political_party: "Republican Party"
}

 ```

2)字串-hash rocket

```ruby

gestures = {
    "R" => "Rock",
    "P" => "paper",
    "S" => "Scissors"
    }

```
