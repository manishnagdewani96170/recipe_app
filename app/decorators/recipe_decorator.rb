class RecipeDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #

  def photo_url
    defined?(object.photo) ? object.photo.url : ''
  end 

  def tags
    defined?(object.tags) ? object.tags.map(&:name).join(', ') : 'NA'
  end  

  def chef_name
    defined?(object.chef) ? object.chef.name : 'NA'
  end 
end
