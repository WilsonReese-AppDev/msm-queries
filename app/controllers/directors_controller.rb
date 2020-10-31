class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb" })
  end

  def wisest
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first

    render({ :template => "director_templates/eldest.html.erb"})
  end

  def littlest
    @youngest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).last

    render({ :template => "director_templates/youngest.html.erb"})
  end

  def each_director
    the_id = params.fetch("dir_id")
    @the_director = Director.where({ :id => the_id }).first
    @filmography = Movie.where({ :director_id => the_id })
    
    render({ :template => "director_templates/director_details.html.erb"})
  end
end