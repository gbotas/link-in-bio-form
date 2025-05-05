class FormController < ApplicationController

  def display_form
    matching_items = Item.all
    @list_of_items = matching_items.order({ :updated_at => :desc})

    render({:template => "/item_templates/backdoor"})
  end 
end
