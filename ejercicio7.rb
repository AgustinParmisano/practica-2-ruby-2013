=begin
7)­ La suma de los primos menores que 10 es 17 (2 + 3 + 5 + 7 = 17). Encontrá la suma de
todos los primos menores que 2 millones
=end

require 'prime'
sum = 0
Prime.each { |n| if n < 2000000 then sum += n else break end }
puts sum
