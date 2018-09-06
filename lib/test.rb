class Test

  attr_reader :points

  def initialize(questions_file)
    @points = 0
    @current_question = 0

    if File.exist?(questions_file)
      @questions = File.readlines(questions_file)
    else
      abort "\nФайл с вопросами не найден!"
    end
  end

  def answers_check
    user_input = nil
    until ["y", "n", "s"].include?(user_input)
      puts "Введите y, n или s"
      user_input = STDIN.gets.chomp.downcase
    end

    case user_input
    when "y" then @points += 2
    when "s" then @points += 1
    end
  end

  def next_question
    puts
    puts @questions[@current_question]
    answers_check
    @current_question += 1
  end

  def finished?
    @current_question == @questions.size
  end
end

