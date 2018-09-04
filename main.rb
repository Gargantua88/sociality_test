require_relative 'test'
require_relative 'result_printer'

user_name = ARGV[0]
user_name = "Тестируемый" if user_name == nil

puts "Здравствуй, #{user_name}! Тест поможет определить твой уровень коммуникабельности.\n"\
  "Правдиво ответь на следующие вопросы одним из 3 вариантов: \"yes\", \"no\" и \"sometimes\"."

test = Test.new
result_printer = ResultPrinter.new(user_name)

test.next_question until test.finished?

result_printer.result(test.balls)
