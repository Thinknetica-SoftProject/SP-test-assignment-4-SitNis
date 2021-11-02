## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:

arr = []
code = 0
file_lines = File.readlines("data/3.txt")

file_lines.each do |line|
arr << line.strip
end

arr.each do |string_number|
	string_number = string_number.split("\t")
	diff = 0
	diff = string_number.max.to_i - string_number.min.to_i
	code +=diff
end

puts(code)