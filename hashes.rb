hash = {clave1: :valor1, clave2: :valor2 , clave3: :valor3}
hash.each do |i|
    print "#{i} \n"
end

puts "forma 2"

hash.each do |key,value|
    print "key : #{key} , value: #{value} \n"
end


# modificar
valores = {septiembre: 50000, octubre: 75000 , noviembre: 100000}
valores.each do |key,value|
    valores[key] = (value * 1.1).to_i
end
valores[:diciembre] = 200000
print "#{valores}\n"


# ejemplo de .select

valores = {:a => 1, :b => 2 , :c => 3 , :d => 4}
valores_filtrados = valores.select {|k,v| v.even?}
print "#{valores_filtrados} \n"