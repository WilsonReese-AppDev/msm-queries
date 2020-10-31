class ActorsController < ApplicationController

def actor_index
  @list_of_actors = Actor.all
  render({ :template => "actor_templates/index.html.erb" })
end

def each_actor
  the_id = params.fetch("actor_id")
  @the_actor = Actor.where({ :id => the_id }).first
  @characters = Character.where({ :actor_id => the_id })
  # @filmography = @characters.movie_id

  render({ :template => "actor_templates/actor_details.html.erb"})
end

end
