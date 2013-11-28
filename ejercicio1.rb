=begin
 1 )­ Si listamos todos los números naturales menores que 10 que son múltiplos de 3 o 5
obtenemos 3, 5, 6 y 9. La suma de todos estos números es 23. Encontrá la suma de todos los
múltiplos de 3 o 5 menores que 1000.
=end

def mult3o5
  (1..1000).inject(0) { |sum, i| (i%3 == 0 || i%5 == 0) ? sum + i : sum }
end

