=begin
8 ­ Dado un arreglo de strings cualquiera, es necesario escribir un método que devuelva un
arreglo con la longitud de dichos strings. Ejemplo: dado [‘Ruby’, ‘is’, ‘awesome’] debe retornar [4,
2, 7]
=end

def metodo(anArray)
  res = []
  anArray.each { |a| res << a.length }
  puts res
end

arreglo = ["Ruby", "is", "awesome"]
puts metodo(arreglo)
