puts "Створити хеш з ключами(букви алфавіту) та значення(сума 2 попередніх)"
akey = ('a'..'z').to_a #создаю массив ключей
avalue=Array.new(26)
(2..25).each do |n| # создаю массив значений
    avalue[0]=1
    avalue[1]=1
    avalue[n] = avalue[n-1]+avalue[n-2] 
end
a=Array.new(2)
a[0]=akey
a[1]=avalue
h=Hash[*a.transpose.flatten] # создаю хеш
puts h

puts "Вивести пари ключ, значення, в яких значення менше 15"
puts h.select {|k,v| v < 15}

hashyes = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
puts "Вивести кількість ключів, значення яких починаються на “yes”"
puts hashyes.select{|key, value| key[0,3] == 'yes' }.length
