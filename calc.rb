 # bottles = 100

# while bottles > 0
#   puts  bottles.to_s + ' bottles of beer on the wall ' + bottles.to_s 
#   bottles -= 1
#   puts ' bottles of beer, take one down pass it around ' + bottles.to_s + ' bottles of beer on the wall'
# end


# said = gets.chomp

# if said == said.downcase
#     puts 'Whats that sonny? speak up deary!'
# elsif said == said.upcase
#     puts 'No, not since 1938!'


# many_words = gets.chomp

# def englishNumber number
#     if number < 0 
#       return 'Please enter a number that isn\'t negative.'
#     end
#     if number == 0
#       return 'zero'
#     end
   
# !
  
#     numString = '' 
  
#     onesPlace = ['one',     'two',       'three',    'four',     'five',
#                  'six',     'seven',     'eight',    'nine']
#     tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
#                  'sixty',   'seventy',   'eighty',   'ninety']
#     teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
#                  'sixteen', 'seventeen', 'eighteen', 'nineteen']
  
    
#     left  = number
#     write = left/100          
#     left  = left - write*100  
  
#     if write > 0
    
#       hundreds  = englishNumber write
#       numString = numString + hundreds + ' hundred'
      
  
#       if left > 0
        
#         numString = numString + ' '
#       end
#     end
  
#     write = left/10          
#     left  = left - write*10  
  
#     if write > 0
#       if ((write == 1) and (left > 0))
       
#         numString = numString + teenagers[left-1]
        
  
        
#         left = 0
#       else
#         numString = numString + tensPlace[write-1]
        
#       end
  
#       if left > 0
        
#         numString = numString + '-'
#       end
#     end
  
#     write = left  
#     left  = 0     
  
#     if write > 0
#       numString = numString + onesPlace[write-1]
      
#     end
  
    
#     numString
#   end
  
#   puts englishNumber(  0)
#   puts englishNumber(  9)
#   puts englishNumber( 10)
#   puts englishNumber( 11)
#   puts englishNumber( 17)
#   puts englishNumber( 32)
#   puts englishNumber( 88)
#   puts englishNumber( 99)
#   puts englishNumber(100)
#   puts englishNumber(101)
#   puts englishNumber(234)
#   puts englishNumber(3211)
#   puts englishNumber(999999)
#   puts englishNumber(1000000000000)

# creating classes
# class Die

#     def roll
#       1 + rand(6)
#     end
  
#   end
  
#   # Let's make a couple of dice...
#   dice = [Die.new, Die.new]
  
#   # ...and roll them.
#   dice.each do |die|
#     puts die.roll
#   end

class Dragon

    def initialize name
      @name = name
      @asleep = false
      @stuffInBelly     = 10  # He's full.
      @stuffInIntestine =  0  # He doesn't need to go.
  
      puts @name + ' is born.'
    end
  
    def feed
      puts 'You feed ' + @name + '.'
      @stuffInBelly = 10
      passageOfTime
    end
  
    def walk
      puts 'You walk ' + @name + '.'
      @stuffInIntestine = 0
      passageOfTime
    end
  
    def putToBed
      puts 'You put ' + @name + ' to bed.'
      @asleep = true
      3.times do
        if @asleep
          passageOfTime
        end
        if @asleep
          puts @name + ' snores, filling the room with smoke.'
        end
      end
      if @asleep
        @asleep = false
        puts @name + ' wakes up slowly.'
      end
    end
  
    def toss
      puts 'You toss ' + @name + ' up into the air.'
      puts 'He giggles, which singes your eyebrows.'
      passageOfTime
    end
  
    def rock
      puts 'You rock ' + @name + ' gently.'
      @asleep = true
      puts 'He briefly dozes off...'
      passageOfTime
      if @asleep
        @asleep = false
        puts '...but wakes when you stop.'
      end
    end
  
    private
  
    # "private" means that the methods defined here are
    # methods internal to the object.  (You can feed
    # your dragon, but you can't ask him if he's hungry.)
  
    def hungry?
      # Method names can end with "?".
      # Usually, we only do this if the method
      # returns true or false, like this:
      @stuffInBelly <= 2
    end
  
    def poopy?
      @stuffInIntestine >= 8
    end
  
    def passageOfTime
      if @stuffInBelly > 0
        # Move food from belly to intestine.
        @stuffInBelly     = @stuffInBelly     - 1
        @stuffInIntestine = @stuffInIntestine + 1
      else  # Our dragon is starving!
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts @name + ' is starving!  In desperation, he ate YOU!'
        exit  # This quits the program.
      end
  
      if @stuffInIntestine >= 10
        @stuffInIntestine = 0
        puts 'Whoops!  ' + @name + ' had an accident...'
      end
  
      if hungry?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts @name + '\'s stomach grumbles...'
      end
  
      if poopy?
        if @asleep
          @asleep = false
          puts 'He wakes up suddenly!'
        end
        puts @name + ' does the potty dance...'
      end
    end
  
  end
  
  pet = Dragon.new 'Norbert'
  pet.feed
  pet.toss
  pet.walk
  pet.putToBed
  pet.rock
  pet.putToBed
  pet.putToBed
  pet.putToBed
  pet.putToBed