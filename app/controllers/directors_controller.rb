class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb" })
  end

  def each_director
    list_of_directors = Director.all
    @director_id = list_of_directors.at(params.fetch("id").to_i - 1).id

    render({ :template => "director_templates/director_details.html.erb"})
  end
end