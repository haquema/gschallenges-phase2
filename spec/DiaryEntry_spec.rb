require "DiaryEntry"

RSpec.describe DiaryEntry do
  it "constructs" do
    entry = DiaryEntry.new("Monday", "It rained")
    expect(entry.title).to eq "Monday"
    expect(entry.contents).to eq "It rained"
  end
  it "counts number of words in contents" do
    entry = DiaryEntry.new("Monday", "It rained")
    num_words = entry.count_words
    expect(num_words).to eq 2
  end
  it "returns the estimated reading time for the contents when given the reading speed" do
    entry = DiaryEntry.new("Monday", "word " * 400)
    result = entry.reading_time(200)
    expect(result).to eq 2
  end
  context "given a reading rate and set number of minutes, where the text is longer than the user can read" do
    it "returns the chunk of contents the user can read" do
      entry = DiaryEntry.new("Monday", "one two three")
      result = entry.reading_chunk(2, 1)
      expect(result).to eq "one two"
    end
    it "returns the next chunk of text if text is still longer than the user can read" do
      entry = DiaryEntry.new("Monday", "one two three four five")
      entry.reading_chunk(2, 1)
      result = entry.reading_chunk(2, 1)
      expect(result).to eq "three four"
    end
    it "returns the next chunk of text if text is still longer than the user can read" do
      entry = DiaryEntry.new("Monday", "one two three four five")
      entry.reading_chunk(2, 1)
      entry.reading_chunk(2, 1)
      result = entry.reading_chunk(2, 1)
      expect(result).to eq "five"
    end
    it "returns the next chunk of text if text is still longer than the user can read" do
      entry = DiaryEntry.new("Monday", "one two three four five")
      entry.reading_chunk(2, 1)
      entry.reading_chunk(2, 1)
      entry.reading_chunk(2, 1)
      result = entry.reading_chunk(2, 1)
      expect(result).to eq "one two"
    end
    it "returns the next chunk of text if text is still longer than the user can read" do
      entry = DiaryEntry.new("Monday", "one two three four five")
      entry.reading_chunk(2, 1)
      entry.reading_chunk(2, 1)
      entry.reading_chunk(2, 1)
      entry.reading_chunk(2, 1)
      result = entry.reading_chunk(2, 1)
      expect(result).to eq "three four"
    end
  end

end