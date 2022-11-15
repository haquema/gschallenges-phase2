class GrammarStats
  def initialize
    @check_count = 0
    # ...
  end
    
  # text is a string
  # Returns true or false depending on whether the text begins with a capital
  # letter and ends with a sentence-ending punctuation mark.
  def check(text)
    fail "You passed an empty string" if text == ""
    fail "The argument for check method must be a string!" unless text.is_a? String
    @check_count += 1
    return verify_capitalisation(text) && verify_end_punctuatin(text)
  end

  # Returns as an integer the percentage of texts checked so far that passed
  # the check defined in the `check` method. The number 55 represents 55%.
  def percentage_good
    fail "You need to run check at least once first" if @check_count == 0
  end

  private 

  def verify_capitalisation(str)
    first_letter = str[0]
    return first_letter == first_letter.upcase
  end

  def verify_end_punctuatin(str)
    punctuation = ["!", ".", "?"]
    return punctuation.include? str[-1]
  end

end