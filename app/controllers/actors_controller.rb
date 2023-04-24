class ActorsController < ApplicationController

  def index_actors

    @list_of_actors = Actor.all 

    render ({ :template => "actors_templates/actor_index.html.erb"})

  end

  def actor_details

the_id = params.fetch("actor_id")

@the_actor = Actor.where({ :id => the_id }).at(0)

@character = Character.where({ :actor_id => @the_actor.id})



    render ({ :template => "actors_templates/actor_show.html.erb"})

  end


end
