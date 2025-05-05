class FormController < ApplicationController

  def display_form
    render({:template => "/item_templates/backdoor"})
  end 
end
