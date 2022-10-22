require_relative "cookbook"
require_relative "recipe"
require_relative "view"
require_relative "ester_egg"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
    @ester_egg = Ester_egg.new
  end

  def list
    cookbook_recipes = @cookbook.all
    @view.display_list(cookbook_recipes)
  end

  def create
    name = @view.ask_name
    description = @view.ask_description
    new_recipe = Recipe.new(name, description)
    @cookbook.add_recipe(new_recipe)
  end

  def destroy
    list
    index = @view.ask_index
    @cookbook.remove_recipe(index)
  end

  def show_en
    @ester_egg.black_jack
  end
end
