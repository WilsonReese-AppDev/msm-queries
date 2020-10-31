class MoviesController < ApplicationController
  def movie_index
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/index.html.erb"})
  end

  def each_movie
    the_id = params.fetch("movie_id")
    @the_movie = Movie.where({ :id => the_id }).first
    
    render({ :template => "movie_templates/movie_details.html.erb"})
  end
end
