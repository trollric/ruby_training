class Orange_tree

  # Initializes the orange tree
  def initialize
    @height = 1
    @age = 0
    @oranges = 0
    @bears_fruit = false
  end

  # Returns the orange trees height
  def height
    @height
  end

  def count_oranges
    @oranges
  end

  def pick_orange
    if @oranges < 1
      puts "Sorry there are no oranges on the tree"
    else
      @oranges -= 1
    end
  end

  # Turn the clock one year forward
  def one_year_passes
    if @age >= 46
      puts "The orange tree has died at the age of #{@age}"
      exit
    end
    @age +=1
    @height += 0.8

    if fruit_bearing?
      @bears_fruit = true
    end
    puts "All the oranges from last season has fallen off during the cold winter"
    puts "But new oranges sprout again this summer"
    # Add an random amount of fruit
    if @bears_fruit
      if @age < 10
        @oranges = 38+rand(10)
      elsif @age < 40 and @age >=10
        @oranges = 70+rand(24)
      else
        @oranges = rand(40)
      end
    end
  end

  def fruit_bearing?
    if @age>5
      return true
    else
      return false
    end
  end
end

def help
  puts "Commandlist"
  puts "time: Passes the time one year"
  puts "pluck: Picks one orange from the tree"
  puts "count: counts the number of remaining oranges"
  puts "tall: returns the trees height in meters"
  puts "quit: exit the program"
  puts ">"
end
# Spawn an orange tree
otree = Orange_tree.new

# Make an CLI
puts "Hi and welcome to the orange tree!"
puts "I have taken the liberty to already plant a tree for you"
puts "you can type help whenever you like to find out about the commands"

finished = false
while not finished
  puts "What would you like to do?"
  cmd = gets.chomp.downcase
  if cmd == "help"
    help
  elsif cmd == "time"
    puts "A year of time passes"
    otree.one_year_passes
  elsif cmd == "pluck"
    otree.pick_orange
  elsif cmd == "count"
    puts "There are currently #{otree.count_oranges} oranges on the tree"
  elsif cmd == "tall"
    puts "The Orange tree is #{otree.height}m tall."
  elsif cmd == "quit"
    puts "You have chosen to exit. Are you sure? Y/n"
    answer = gets.chomp.downcase
    if answer == "y" or answer == ""
      puts "See you next time"
      exit
    else
      puts "returning to the program"
    end
  else
    puts "If you have forgotten the commands type help"
  end
end
