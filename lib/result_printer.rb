class ResultPrinter

  attr_accessor :user_name

  def initialize(user_name, answers_file)
    self.user_name = user_name
    @answers = File.readlines(answers_file)
  end

  def result(points)
    puts "*" * 50
    puts "Итак, #{user_name}, вот твой результат:"
    puts

    case points
    when 30..32 then puts @answers[0]
    when 25..29 then puts @answers[1]
    when 19..24 then puts @answers[2]
    when 14..18 then puts @answers[3]
    when 9..13 then puts @answers[4]
    when 4..8 then puts @answers[5]
    else puts @answers[6]
    end
  end
end



