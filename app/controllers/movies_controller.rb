class MoviesController < ApplicationController

  def option
    render("option.html.erb")
  end

  def director_index
    @list_of_directors = Director.all
  end

  def actor_index
    @list_of_actors = Actor.all
  end

  def movie_index
    @list_of_movies=Movie.all
  end

  def director_show
    @director_id=params["id"]
    @director_name=Director.find(@director_id).name
    @director_bio=Director.find(@director_id).bio
    @director_dob=Director.find(@director_id).dob
    @director_image=Director.find(@director_id).image_url
    render("director_show.html.erb")
  end

  def actor_show
    @actor_id=params["id"]
    @actor_name=Actor.find(@actor_id).name
    @actor_bio=Actor.find(@actor_id).bio
    @actor_dob=Actor.find(@actor_id).dob
    @actor_image=Actor.find(@actor_id).image_url
    render("actor_show.html.erb")
  end

  def movie_show
    @movie_id=params["id"]
    @movie_title=Movie.find(@movie_id).title
    @movie_year=Movie.find(@movie_id).year
    @movie_duration=Movie.find(@movie_id).duration
    @movie_description=Movie.find(@movie_id).description
    @movie_image=Movie.find(@movie_id).image_url
    render("movie_show.html.erb")
  end

  def destroy_director
    @director_id=params["id"]
    i=Director.find(@director_id)
    i.destroy
    redirect_to("http://localhost:3000/directors")
  end

  def destroy_actor
   @actor_id=params["id"]
   i=Actor.find(@actor_id)
   i.destroy
   redirect_to("http://localhost:3000/actors")
 end

 def destroy_movie
  @movie_id=params["id"]
  i=Movie.find(@movie_id)
  i.destroy
  redirect_to("http://localhost:3000/movies")
end

def director_new
  render("director_new_form.html.erb")
end

def actor_new
  render("actor_new_form.html.erb")
end

def movie_new
  render("movie_new_form.html.erb")
end

def create_director
  i=Director.new
  i.name=params["the_name"]
  i.bio=params["the_bio"]
  i.dob=params["the_dob"]
  i.image_url=params["the_url"]
  i.save
  redirect_to("http://localhost:3000/directors")
end

def create_actor
  i=Actor.new
  i.name=params["the_name"]
  i.bio=params["the_bio"]
  i.dob=params["the_dob"]
  i.image_url=params["the_url"]
  i.save
  redirect_to("http://localhost:3000/actors")
end


def create_movie
  i=Movie.new
  i.title=params["the_title"]
  i.year=params["the_year"]
  i.duration=params["the_duration"]
  i.description=params["the_description"]
  i.image_url=params["the_url"]
  i.save
  redirect_to("http://localhost:3000/movies")
end

def director_edit
  @director_id=params["id"]
  @director_name=Director.find(@director_id).name
  @director_bio=Director.find(@director_id).bio
  @director_dob=Director.find(@director_id).dob
  @director_image=Director.find(@director_id).image_url
  render("director_edit.html.erb")

end

def actor_edit
  @actor_id=params["id"]
  @actor_name=Actor.find(@actor_id).name
  @actor_bio=Actor.find(@actor_id).bio
  @actor_dob=Actor.find(@actor_id).dob
  @actor_image=Actor.find(@actor_id).image_url
  render("actor_edit.html.erb")
end

def movie_edit
  @movie_id=params["id"]
  @movie_title=Movie.find(@movie_id).title
  @movie_year=Movie.find(@movie_id).year
  @movie_duration=Movie.find(@movie_id).duration
  @movie_description=Movie.find(@movie_id).description
  @movie_image=Movie.find(@movie_id).image_url
  render("movie_edit.html.erb")
end

def director_update
  @director_id=params["id"]
  i = Director.find(@director_id)
  i.name=params["the_name"]
  i.bio=params["the_bio"]
  i.dob=params["the_dob"]
  i.image_url=params["the_url"]
  i.save
  redirect_to action:"director_show"
end

def actor_update
  @actor_id=params["id"]
  i = Actor.find(@actor_id)
  i.name=params["the_name"]
  i.bio=params["the_bio"]
  i.dob=params["the_dob"]
  i.image_url=params["the_url"]
  i.save
  redirect_to action:"actor_show"
end

def movie_update
  @movie_id=params["id"]
  i = Movie.find(@movie_id)
  i.title=params["the_title"]
  i.year=params["the_year"]
  i.duration=params["the_duration"]
  i.description=params["the_description"]
  i.image_url=params["the_url"]
  i.save
  redirect_to action:"movie_show"

end



end
