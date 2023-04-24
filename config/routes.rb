Rails.application.routes.draw do

  get("/directors" , { :controller => "directors" , :action => "index"}) 

  get("/directors/eldest", { :controller => "directors" , :action => "wisest"})

  get("/directors/youngest", { :controller => "directors" , :action => "youngest"})

  get("/directors/:an_id" , { :controller => "directors" , :action => "directors_details"})

  get("/movies", { :controller => "movies" , :action => "index_movies"})

  get("/movies/:movie_id" , { :controller => "movies" , :action => "movie_details"})

  get("/actors", { :controller => "actors" , :action => "index_actors"})

  get("/actors/:actor_id" , { :controller => "actors" , :action => "actor_details"})

  get("/", { :controller => "application", :action => "homepage" })





 



end
