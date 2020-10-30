class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all

    render({ :template => "director_templates/index.html.erb" })
  end

  def wisest
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first

    render({ :template => "director_templates/eldest.html.erb"})
  end

  def each_director
  #   @list_of_directors = Director.all
  #   @director_id = @list_of_directors.at(params.fetch("dir_id").to_i - 1).id
  #   @director_name = @list_of_directors.at(params.fetch("dir_id").to_i - 1).name
  #   @director_bio = @list_of_directors.at(params.fetch("dir_id").to_i - 1).bio
  #   @director_image = @list_of_directors.at(params.fetch("dir_id").to_i - 1).image
  #   @director_dob = @list_of_directors.at(params.fetch("dir_id").to_i - 1).dob
    
  #   require "date"
  #   director_creation_date = @list_of_directors.at(params.fetch("dir_id").to_i - 1).created_at
  #   director_updated_at = @list_of_directors.at(params.fetch("dir_id").to_i - 1).updated_at

  #   @age_of_record = Date.today.year - director_creation_date.year
  #   @last_update = Date.today.year - director_updated_at.year
    the_id = params.fetch("dir_id")
    @the_director = Director.where({ :id => the_id }).first
    

    render({ :template => "director_templates/director_details.html.erb"})
  end
end