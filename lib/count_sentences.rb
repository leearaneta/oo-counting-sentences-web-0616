require 'pry'

class String

  def sentence?
    if self.end_with?(".")
    	true
    else
    	false
    end
  end

  def question?
    if self.end_with?("?")
    	true
    else
    	false
    end
  end

  def exclamation?
    if self.end_with?("!")
    	true
    else
    	false
    end
  end

  def count_sentences
  	split_period = self.split(".")
	split_question = split_period.map {|x| x.split("?")}.flatten
	split_exclamation = split_question.map {|y| y.split("!")}.flatten
	split_exclamation.delete("")
  	return split_exclamation.size
  end
end