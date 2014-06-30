require "rails_helper"
 require 'capybara/rspec'
require 'capybara/rails'
 
describe "products/new.html.erb" do
	  it "render new template" do 
	  	expect(controller.request.path_parameters[:action]).to eq("new")
	  end
     it "includes a link to back" do 
        link_to 'back' 
   	  end
end