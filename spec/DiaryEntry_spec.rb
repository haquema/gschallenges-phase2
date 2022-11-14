require "DiaryEntry"

RSpec.describe DiaryEntry do
  it "constructs" do
    entry = DiaryEntry.new("Monday", "It rained")
    expect(entry.title).to eq "Monday"
    expect(entry.contents).to eq "It rained"
  end
end