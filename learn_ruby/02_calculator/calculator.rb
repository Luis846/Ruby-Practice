#write your code here

def add(x,y)
    x + y
  end
  
  def subtract(x,y)
    x - y
  end
  
  def sum(numbers)
    if (numbers == [])
      0
    else numbers.inject(0){| result , element | result + element}
   end
  end
  
  def multiply(x,y)
    x * y
  end
  
  def power(x,y)
    x ** y
  end
  
  
  def factorial(x)
    if x < 1
      1
    else x * factorial(x-1)
    end
  end
