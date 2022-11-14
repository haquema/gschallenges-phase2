class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
    @title = title
    @contents = contents
  end

  def title
    # Returns the title as a string
    @title
  end

  def contents
    # Returns the contents as a string
    @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    @contents.split.count
  end

  def reading_time(wpm) # wpm is an integer representing the number of words the
                        # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
    word_count = @contents.split.length
      if word_count != 0 
        time_to_read = (word_count.to_f/ wpm).ceil
      else
        0
    end
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    word_array = @contents.split
    length_of_text = wpm * minutes
    word_array[0, length_of_text].join(" ")
  end
end