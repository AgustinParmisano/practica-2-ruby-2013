=begin
5)La suma de los cuadrados de los primeros 10 números naturales es 385 (1^2 + 2^2 + ... + 10^2
= 385). El cuadrado de la suma de los primeros 10 números naturales es 3025 ((1 + 2 + ... +
10)2 = 552 = 3025). Por lo tanto, la diferencia entre el cuadrado de la suma y la suma de los
cuadrados de los primeros 10 números naturales es 2640 (3025 ­- 385 = 2640). Encontrá la
diferencia entre el cuadrado de la suma y la suma de los cuadrados de los primeros 100
números naturales.
=end

a = (1..100)
#puts a.map{|x| x**2}.inject(0, &:+)

puts suma1 = a.inject(0) { |sum,x| sum += x**2 }
puts suma2 = a.inject(0) { |sum,x| sum += x}**2
puts suma2 - suma1
