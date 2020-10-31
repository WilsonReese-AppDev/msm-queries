Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest"})
  get("/directors/youngest", { :controller => "directors", :action => "littlest"})
  get("/directors/:dir_id", { :controller => "directors", :action => "each_director" })
end
