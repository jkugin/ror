array1 = (1..10).to_a

puts "Вивести масив використовуючи each"
array1.each {|x| print x, "**"}
puts " "

puts "Вивести числа більше 5"
array1.select {|x| x>5}.each {|x| print x, "--"}
puts " "

puts "Вивести та занести непарні числа в окремий масив"
arrayodd = array1.select {|x| x.odd?}
arrayodd.each {|x| print x, "--"}
puts " "

puts "Додати 11 в кінець та 3 в початок масиву"
array1.insert(-1,11)
array1.insert(0,3)
array1.each {|x| print x, "--"}
puts " "

puts "Заповнити випадковими числами від -10 до 10 двомірний масив 4х4 (як матриця)"
array44 = Array.new(4).map!{Array.new(4){|index| -10+rand(21)}}
array44.each {|x| print x, "**"}
puts " "

puts "Вивести суму всіх від*ємних чисел та вивести кожне від*ємне число"
array44.flatten!.select!{|x| x<0}
d=0
array44.map{|x| d+=x}
puts "сума всіх від*ємних чисел"
puts d
puts "кожне від*ємне число"
array44.each {|x| print x, "**"}
puts " "

puts "Заповнити масив із 40 елементів випадковими строками у виді дати і температури повітря(“24.03 -12”)."
arraytemp=Array.new(40)
month=[31,28,31,30,31,30,31,31,30,31,30,31]# в разных месяцах разное количество дней
tmonth=[30,25,20,15,10,5,0,5,10,15,20,25]# это числа, на которые нужно уменьшить случайное число, что бы получились подходящие температуры помесячно
(0..39).each do |n|# создаем массив с температурами
    month1 = rand(12)
    f = month[month1]# граница случайных чисел для дат месяца, например в феврале 28 дней
    tf = tmonth[month1].to_i
    arraytemp[n] = (rand(f).to_i+1).to_s+"."+(month1.to_i+1).to_s+" "+(rand(30)-tf).to_s
end
arraytemp.each {|x| print x, "**"}
puts " "
puts "Порахувати та вивести середню температуру за кожен місяць"
(1..12).each do |m|
arraym = arraytemp.select{|x| x.include? "."+m.to_s+" "}
    if arraym.length==0 # если нет данных по этому месяцу
        puts "у нас нет данных за "+m.to_s+"-й месяц"
    else  #высчитавыю среднее, разбивая каждую строку на массив по пробелу и беру последний элемент
        t=0
        arraym.map!{|x| t+=x.split(%r{ \s*}).last.to_i}
        puts "средняя температура в "+m.to_s+"-м месяце ="+(t.to_f/arraym.length).round(2).to_s+" градусов по цельсию"
    end
end
