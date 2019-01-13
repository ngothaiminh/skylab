class AlgorithController < ApplicationController
  def index
  end

  def question_1
    array = [9,1,8,2,7,3,6,4,5,10,13]
    @result = BubbleSortService.new(array).perform
  end

  def question_2
    array_1 = [3, 4, 6, 3, 7, 8, 5, 9]
    array_2 = [5, 4, 1, 2, 3]
    @result = array_1 & array_2
  end

  def question_3
    string = "abcdabcdabcdabcdeabcdcba"
    @result = NonRepeatCharracterService.new(string).perform
  end

  def question_4
    string = "zyabcdabcac"
    @result = string.split('').map{|char| [char, string.count(char)]}.uniq.sort_by{|k,v| [-v, k]}
  end

  def question_5
    log_file = File.open("#{Rails.root}/log/event.log", "a")
    log = Logger.new MultiDelegator.delegate(:write, :close).to(STDOUT, log_file)
    EventLog.all.each do |event|
      log.info("#{event}")
    end
  end
end
