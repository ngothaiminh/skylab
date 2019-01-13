class NonRepeatCharracterService
  attr_reader :string

  def initialize string
    @string = string
  end

  def perform
    string.each_char do |c|
      return c if count_char(c) == 1
    end
  end

  def count_char char
    count = 0
    string.each_char do |c|
      count += 1 if c == char
    end
    count
  end
end
