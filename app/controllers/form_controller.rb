class FormController < ApplicationController

  def insert_item
    render({:template => "/item_templates/backdoor"})
  end 
end
