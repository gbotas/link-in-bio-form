Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })

  get("/backdoor", { :controller => "form", :action => "display_form"})

  post("/insert_item", { :controller => "newitem", :action => "insert_item"})

end
