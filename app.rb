require_relative 'farm'
# Options:
# field -> adds a new field
# harvest -> harvests crops and adds to total harvested
# status -> displays some information about the farm
# relax -> provides lovely descriptions of your fields
# exit -> exits the program

def main_menu
   while true #repeat indefinitely - inifinite loop
     print_main_menu # calls print_main_menu method
     user_selected = gets.to_i #stores user input into a local variable
     call_option(user_selected) #passes local variable to call_option mehtod below
   end
 end

def print_main_menu
    puts '[1] Add new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all contacts'
    puts '[5] Search by attributes'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
      case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then exit(0)  # can also do else exit as the last condition, up to programmer
      end
    end
