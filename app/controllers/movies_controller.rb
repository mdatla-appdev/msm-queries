class MoviesController < ApplicationController

def index_movies
 

 

  @list_of_movies = Movie.all
  
 
  

  render ({ :template => "movies_templates/films.html.erb" })

end 


end 
