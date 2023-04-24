class MoviesController < ApplicationController

def index_movies
 

  @list_of_movies = Movie.all


  render ({ :template => "movies_templates/films.html.erb" })

end 

def movie_details
 
the_id = params.fetch("movie_id")

@the_movie = Movie.where({ :id => the_id }).at(0)
@director = Director.where({ :id => @the_movie.director_id}).at(0)

render ({ :template => "movies_templates/movie_show.html.erb" })

end 



end 
