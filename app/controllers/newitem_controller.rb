class NewitemController < ApplicationController

    def insert_item
      i = Item.new

      i.link_url = params.fetch("link_url")
      i.link_description= params.fetch("link_description")
      i.thumbnail_url = params.fetch("thumbnail")
      i.save

      redirect_to("/")

    end 
  
end
