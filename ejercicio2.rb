=begin
2) ­ Cada nuevo término en la secuencia de Fibonacci es generado sumando los 2 términos
anteriores. Empezando con 1 y 2; los primeros 10 términos son: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89.
Considerando los términos en la secuencia de Fibonacci cuyos valores no exceden los 4
millones, encontrá la suma de los términos pares.
=end

fibonacci = Enumerator.new do |caller|
    i1, i2 = 1, 1
    loop do
        caller.yield i1
        i1, i2 = i2, i1+i2
        if i1 > 4000000 then break
       end
    end
end
sum = 0
fibonacci.each do |x|
  x.even? ? sum += x : sum
end
puts sum


