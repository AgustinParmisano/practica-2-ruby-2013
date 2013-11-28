=begin
  3) ­ Un número palíndromo se lee igual al derecho y al revés. El número palíndromo más grande
obtenido de la multiplicación de dos números de 2 dígitos es 9009 (91 x 99 = 9009). Encontrá el
palíndromo más grande obtenido a través de la multiplicación de dos números de 3 dígitos.
=end

def is_palindrome?(aNumber)
  aNumber.to_s == aNumber.to_s.reverse
end

my_enum = Enumerator.new do |caller|

  print "limite: "
  limite = gets.chomp.to_i
  print "piso: "
  piso = gets.chomp.to_i

  num1, num2 = limite, limite

  loop do
    if is_palindrome? (num1 * num2)
      caller.yield num1 * num2
    end
    num1 -= 1
    if num1 == piso
      num1 = limite
      num2 -= 1
    end
    break if num2 < piso
  end
end

p my_enum.max


=begin

def is_palindrome?(aNumber)
  aNumber.to_s == aNumber.to_s.reverse
end

max=0
100.upto(999) { |x|
  x.upto(999) { |y|
    res = x * y

    if is_palindrome?(res) && res > max then max = res
    end
    }
  }

  puts max
=end

