require "csv"
csv_file_path = "./spec/recipes.csv"

class Cookbook
  def initialize(csv_file_path)
    @recipes = []
    @csv_file_path = csv_file_path
    clone_csv
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    push_csv
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    push_csv
  end
end

private

def clone_csv
  CSV.foreach(@csv_file_path) do |row|
    @recipes << Recipe.new(row[0], row[1])
  end
end

def push_csv
CSV.open(@csv_file_path, "wb") do |csv|
  @recipes.each do |recipe|
    csv << [recipe.name, recipe.description]
    end
  end
end
