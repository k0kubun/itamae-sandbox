module RecipeHelper
  def load_config(name)
    node.reverse_merge!(node[:shared])
    node.reverse_merge!(node[name])

    node[:roles].each do |role|
      node.delete(role)
    end
    node.delete(:roles)
    node.delete(:shared)
  end

  def include_role(name)
    base_dir    = File.expand_path('../../', __FILE__)
    recipe_path = File.join(base_dir, 'roles', name, 'default.rb')
    raise "Role #{name} is not found" unless File.exists?(recipe_path)

    include_recipe(recipe_path)
  end

  def include_cookbook(name)
    base_dir    = File.expand_path('../../', __FILE__)
    recipe_path = File.join(base_dir, 'cookbooks', name, 'default.rb')
    raise "Cookbook #{name} is not found" unless File.exists?(recipe_path)

    include_recipe(recipe_path)
  end
end

Itamae::Recipe::EvalContext.prepend(RecipeHelper)
