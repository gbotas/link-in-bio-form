class FormController < ApplicationController
  http_basic_authenticate_with(
    :name     => "admin",
    :password => "secret",
    :only     => [:display_form]
  )
  
  def display_form
    matching_items = Item.all
    @list_of_items = matching_items.order({ :updated_at => :desc})

    render({:template => "/item_templates/backdoor"})
  end 
end
