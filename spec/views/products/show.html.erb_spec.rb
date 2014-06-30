require "rails_helper"
 require 'capybara/rspec'
require 'capybara/rails'
 
describe "products/show.html.erb" do
	 it "render new template" do 
	  	expect(controller.request.path_parameters[:action]).to eq("show")
	  end
end