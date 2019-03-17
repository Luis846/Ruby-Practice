#write your code here
def echo(s)
    s
  end
  
  def shout(s)
  s.upcase
  end
  
  def repeat(s, times = 2)
    ([s] * times).join(" ")
  end
  
  def start_of_word(s,n)
    s[0...n]
  end
  
  def first_word(s)
    s.split[0]
  end
  
  def titleize(s)
    arr = s.split(" ")
    exempt = ["and", "the", "over"]
    arr.each do |word|
      word.capitalize! unless exempt.include?(word)
    end
    arr[0].capitalize!
    arr.join(" ")
  end
  