class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end

  def delete
    matching_items= Item.where({:id => params.fetch("id")})
    the_item= matching_items.at(0)
    the_item.destroy

    redirect_to("/backdoor")
  end 
end
