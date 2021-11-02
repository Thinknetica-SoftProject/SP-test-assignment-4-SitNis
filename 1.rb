## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:
$floor = 0
File.open("C:/Users/ruslo/SP-test-assignment-4-SitNis/data/1.txt", "r+") do |file|
		$commands = file.read
	end
$commands = $commands.chars
$commands.each do |command|
	if command == '(';
		$floor += 1
	elsif command == ')';
		$floor -= 1
	end
end
puts $floor



