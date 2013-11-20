require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

str = "This is a string"
temp = ERB.new "The value of str is: <%= str %>"
puts temp.result(binding)

array = ['dog' => 'woof', 'cat' => 'meow', 'foo' => 'bar']
array.concat(['cow' => 'moo'])
atemp = ERB.new "The value of the array is: <%= array %>"
puts atemp.result(binding)

h = { 'key' => 'value', 'easy' => 'simple', 'hard' => 'complicated' }
htemp = ERB.new "The value of the hash is: <%= h %>"
puts htemp.result(binding)