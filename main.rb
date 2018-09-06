require_relative 'lib/test'
require_relative 'lib/result_printer'

user_name = ARGV[0]
user_name = "Тестируемый" if user_name == nil
file_path = File.dirname(__FILE__)

puts "Здравствуй, #{user_name}! Тест поможет определить твой уровень коммуникабельности.\n"\
  "Правдиво ответь на следующие вопросы одним из 3 вариантов: \"yes\", \"no\" и \"sometimes\"."

test = Test.new(file_path + '/data/questions.txt')
result_printer = ResultPrinter.new(user_name, file_path + '/data/answers.txt')

test.next_question until test.finished?

result_printer.result(test.points)
