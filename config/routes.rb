Rails.application.routes.draw do

get("/", { :controller => "movies", :action => "option" })
get("/directors", { :controller => "movies", :action => "director_index" })
get("/actors", { :controller => "movies", :action => "actor_index" })
get("/movies", { :controller => "movies", :action => "movie_index" })

get("/directors/new", { :controller => "movies", :action => "director_new" })
get("/actors/new", { :controller => "movies", :action => "actor_new" })
get("/movies/new", { :controller => "movies", :action => "movie_new" })

get("/directors/:id", { :controller => "movies", :action => "director_show" })
get("/actors/:id", { :controller => "movies", :action => "actor_show" })
get("/movies/:id", { :controller => "movies", :action => "movie_show" })

get("/delete_director/:id", { :controller => "movies", :action => "destroy_director" })
get("/delete_actor/:id", { :controller => "movies", :action => "destroy_actor" })
get("/delete_movie/:id", { :controller => "movies", :action => "destroy_movie" })

get("/create_director", { :controller => "movies", :action => "create_director" })
get("/create_actor", { :controller => "movies", :action => "create_actor" })
get("/create_movie", { :controller => "movies", :action => "create_movie" })

get("/directors/:id/edit", { :controller => "movies", :action => "director_edit" })
get("/actors/:id/edit", { :controller => "movies", :action => "actor_edit" })
get("/movies/:id/edit", { :controller => "movies", :action => "movie_edit" })

get("/update_director/:id/", { :controller => "movies", :action => "director_update" })
get("/update_actor/:id/", { :controller => "movies", :action => "actor_update" })
get("/update_movie/:id/", { :controller => "movies", :action => "movie_update" })

end
