require ("rspec")
require ("num_to_words")

describe("num_to_words") do
  it("one should return 1") do
    num_to_words(1).should(eq('one'))
  end
  it("99 should return 99") do
    num_to_words(99).should(eq("ninety nine"))
  end
  it('should return one hundred seventy five for 175') do
    num_to_words(175).should(eq('one hundred seventy five'))
  end
  it('should return one hundred seventy five thousand three hundred twenty seven for 175327') do
    num_to_words(175327).should(eq('one hundred seventy five thousand three hundred twenty seven'))
  end
end
