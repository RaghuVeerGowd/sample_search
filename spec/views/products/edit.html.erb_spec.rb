require "rails_helper"
 require 'capybara/rspec'
require 'capybara/rails'
 
describe "products/edit.html.erb" do
	it "renders the edit page" do
	 expect(controller.request.path_parameters[:action]).to eq("edit")
	end
	it "includes a link to back" do
		 link_to 'Back'
		 link_to 'Show'
		 link_to 'Update Product' 
   	  end
end