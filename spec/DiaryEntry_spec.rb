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

end