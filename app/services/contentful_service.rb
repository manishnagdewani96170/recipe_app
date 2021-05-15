class ContentfulService
  attr_accessor :client

  def initialize   
    @client = Contentful::Client.new(
      space: ENV['SPACE'],  #  A space is like a project folder in Contentful terms
      access_token: ENV['ACCESS_TOKEN'],  # This is the access token for this space.
      environment: ENV['ENVIRONMENT']
    )
  end

  def get_all_recipes
    client.entries(content_type: 'recipe')
  end

  def get_recipe(recipe)
    client.entry(recipe)
  end  
end 