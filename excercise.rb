latin_array = ["Totam", "ut", "odit","quis", "Maiores", "unde", "EX", "EST", "corporis"]

def is_lower?(char)
  char == char.downcase
end

latin_array.each {|word|
  is_all_lowercase = true
  word.chars.each {|char|
    is_all_lowercase = false unless is_lower?(char)
  }
  if is_all_lowercase && word.length > 4
    puts "long and lowercase"
  elsif word.length > 4
    puts "long"
  elsif is_all_lowercase
    puts "lowercase"
  else
    puts word
  end
}

# * print "lowercase" if the string is all lowercase
# * print "long" if the string is more than 4 characters
# * print "long and lowercase" if the string's length is more than 4 characters and it's all lowercase
# * otherwise print the string itself

# The output should be:
#
# long
# lowercase
# lowercase
# lowercase
# long
# lowercase
# EX
# EST
# long and lowercase
