require_relative 'farm'
require_relative 'field'
# Options:
# field -> adds a new field
# harvest -> harvests crops and adds to total harvested
# status -> displays some information about the farm
# relax -> provides lovely descriptions of your fields
# exit -> exits the program
class App < Farm
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def name_of_app
    "This application is called " + @name
  end

  def main_menu
    loop do # repeat indefinitely - inifinite loop
      print_main_menu # calls print_main_menu method
      user_selected = gets.to_i # stores user input into a local variable
      call_option(user_selected) # passes local variable to call_option mehtod below
    end
   end

  def print_main_menu
    puts '[1] Add a field'
    puts '[2] Harvest your fields'
    puts '[3] Status of Fields'
    puts '[4] Just Chill'
    puts '[5] Exit'
    puts 'Enter a number: '
    end

  def call_option(user_selected)
    case user_selected
    when 1 then add_field
    when 2 then harvest
    when 3 then status
    when 4 then relax
    when 5 then exit(0) # can also do else exit as the last condition, up to programmer
    end
  end
end

farm = Farm.new
app = App.new("This is my shitty farm")

app.main_menu
app.print_main_menu
