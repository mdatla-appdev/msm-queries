Rails.application.routes.draw do

  get("/directors" , { :controller => "directors" , :action => "index"}) 

  get("/directors/eldest", { :controller => "directors" , :action => "wisest"})

  get("/directors/:an_id" , { :controller => "directors" , :action => "directors_details"})

  get("/", { :controller => "application", :action => "homepage" })





 



end
