require_relative "controller"
require_relative "recipe"
require_relative "cookbook"
class View
  def display_list(array_recipes)
    puts "=====//===== ***** Here is Our Recipes!!! ***** =====//====="
    array_recipes.each_with_index do |recipe, index|
      puts "#{index + 1} --> #{recipe.name} -- the best one! --> #{recipe.description}"
    end
  end

  def ask_name
    puts "Give me the name of that precious flavor!"
    name = gets.chomp
  end

  def ask_description
    puts "show me how we do!"
    description = gets.chomp
  end

  def ask_index
    puts "which recipe do you want to remove?"
    index = gets.chomp.to_i - 1
  end
end
