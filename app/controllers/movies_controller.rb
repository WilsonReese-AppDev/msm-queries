class MoviesController < ApplicationController
  def movie_index
    @list_of_movies = Movie.all
    render({ :template => "movie_templates/index.html.erb"})
  end
end
