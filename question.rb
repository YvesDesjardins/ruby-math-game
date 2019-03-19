class Question
  attr_accessor :question, :answer
  
  def initialize
    newQuestion
  end

  def newQuestion
    y = Random.rand(10) + 1
    x = Random.rand(10) + 1
    o = Random.rand(3)

    case o
    when 0
      @answer = (x + y)
      o = '+'
    when 1
      @answer = (x - y)
      o = '-'
    when 2
      @answer = (x * y)
      o = '*'
    else
      'unknown operator'
    end

    @question = "#{x} #{o} #{y} = ?"
  end
end
