class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all

  render ({ :template => "directors_templates/index.html.erb" })

  end

  def wisest

    @oldest = Director.where.not({ :dob => nil}).order({ :dob => :asc}).at(0)
  
    render ({ :template => "directors_templates/wisest.html.erb" })

  end

  def directors_details

    # params looks like {"an_id"=>"42"}

  @the_id = params.fetch("an_id")

  Director.where({ :id => the_id })
  
  
    render ({ :template => "directors_templates/show.html.erb" })

  end
end
