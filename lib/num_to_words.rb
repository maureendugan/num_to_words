def num_to_words(number)
  number_hash = make_hash(number)
  result = ""
  number_hash.each do |key, value|
    result += "#{key} #{value} "
    result.gsub!(/\s\s/, "")
  end
  result
end

def make_hash(number)
    number_hash = {}

  while number > 0
    puts number
    if number/100000 >=1
      number_hash[convert_one(number/100000)] = "hundred"
      number = number % 100000
    elsif number/1000 >= 1
      if number/1000 > 20
      number_hash[convert_two(number/1000)] = "thousand"
      else
        number_hash[convert_one(number/1000)] = 'thousand'
      end
      number = number % 1000
    elsif number/100 >= 1
      number_hash[convert_one(number/100)] = "hundred"
      number = number % 100
    elsif number <10
      number_hash[convert_one(number)] = ""
      number = 0
    elsif number < 100
      number_hash[convert_two(number)] = ""
      number = 0
    end
  end
  return number_hash

end

def convert_one(number)
    ones = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six",
    7 => "seven", 8 => "eight", 9 => "nine"}
    ones.fetch(number)
end

def convert_two(number)
  ones = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
  teens = {10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'}
  twos = {20 => "twenty", 30 => "thirty", 40 => "fourty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
  result = ""
  if number < 20
    if teens.has_key?(number)
      result = teens[number]
    end
  elsif number % 10 == 0
    if twos.has_key?(number)
      result = twos[number]
    end
  else
    result = twos[number - (number % 10)] + " " + ones[number % 10]
  end
  return result
end

 puts make_hash(175327)
 puts num_to_words(175)
