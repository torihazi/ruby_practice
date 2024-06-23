# 1から10までの数字を含む配列を作成し、その中の偶数のみを新しい配列として取り出してください。
nums = (1..10).to_a.filter { |num| num.even?}
p nums

# 'a'から'z'までのアルファベットを含む範囲オブジェクトを作成し、その中から母音（a, e, i, o, u）のみを抽出して配列にしてください。
vowel = ("a".."z").grep(/[aeiou]/)
p vowel

# 1から20までの数字を含む配列を作成し、その中から3の倍数と5の倍数を除いた新しい配列を作成してください。
numbers = (1..20).to_a.filter { |num| !(num % 3 == 0 || num % 5 == 0 ) }
p numbers

# 次の配列 [1, 2, 3, 4, 5] の各要素を2倍にした新しい配列を作成してください。
doubles = (1..5).map { |num| num * 2}
p doubles

# 1から100までの範囲から、10個のランダムな数字を重複なく選んで配列にしてください。
hundreds = (1..100).to_a.sample(10)
p hundreds


# 1から100までの数字の配列から、素数のみを抽出し、その素数を逆順にソートした新しい配列を作成してください。
require 'prime'
reverse_prime_numbers = (1..100).to_a.filter { |num| num.prime?}.reverse
p reverse_prime_numbers

# 次の文字列配列 ["apple", "banana", "cherry", "date", "elderberry"] から、各単語の先頭の文字を使って新しい文字列を作成し、それを逆順にしてください。
chars = ["apple", "banana", "cherry", "date", "elderberry"]
reverse_new_chars = chars.map { |char| char.split("").first }.reverse.join
p reverse_new_chars

# 1から50までの数字の配列を作成し、3の倍数の場合は "Fizz"、5の倍数の場合は "Buzz"、3と5の両方の倍数の場合は "FizzBuzz"、それ以外の場合は数字そのものを要素とする新しい配列を作成してください。
nums = (1..50).to_a.map do |num|
  if num % 15 == 0
    "FizzBuzz"
  elsif num % 3 == 0
    "Fizz"
  elsif num % 5 == 0
    "Buzz"
  else
    num
  end
end
p nums

# 次の2次元配列 [[1, 2, 3], [4, 5, 6], [7, 8, 9]] を転置（行と列を入れ替え）した新しい2次元配列を作成してください。
matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
p "before"
matrix.map {|x| p x}
transposed_matrix = matrix.transpose
p "after"
transposed_matrix.map { |x| p x}

# 1から1000までの数字の中から、各桁の数字の3乗の和が元の数字と等しいものを全て見つけ、配列として返してください。（例：153 = 1^3 + 5^3 + 3^3）
def break_down_num num
  num.to_s.split("").map(&:to_i)
end

def cube_elements_of_array num
  digits = break_down_num(num)
  digits.sum { |result| result**3}
end

numbers = (1..1000).filter { |num| num == cube_elements_of_array(num) }
p numbers