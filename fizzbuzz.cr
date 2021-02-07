list: Array(Int32) = Array(Int32).new(100, 0)
list2: Array(Int32) = list.map_with_index{|v, i| v + i+1}
puts(list) #  [0, 0, 0, ...省略...  0, 0, 0]
puts(list2) # [0, 1, 2, ...省略... 98, 99, 100]

 # Fizz、Buzz、FizzBuzz判断用クロージャの宣言
fizz = -> (v: Int32) {v % 3 == 0}
buzz = -> (v: Int32) {v % 5 == 0}
fizz_buzz = ->(v: Int32) {v % 15 == 0}

 # 後はループして実行
list2.each{|v|
    tuple: Tuple(Bool, Bool, Bool) = {fizz.call(v), buzz.call(v), fizz_buzz.call(v)}
    case tuple
    when {true, false, false} then puts("Fizz")
    when {false, true, false} then puts("Buzz")
    when {true, true, true } then puts("FizzBuzz")
    else puts(v)
    end
}
