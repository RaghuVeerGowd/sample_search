require "rails_helper"
 require 'capybara/rspec'
require 'capybara/rails'
 
describe "products/index.html.erb" do
	it "renders the list of names" do
	    assign(:products,[Product.create!(name: 'sudha' ,age: 24, country: 'india'),Product.create!(name: 'sam' ,age: 24, country: 'india')])
	    render
	    expect(rendered).to match /sudha/
	    expect(rendered).to match /24/
	    expect(rendered).to match /india/
	    expect(rendered).to match /sam/
	    expect(rendered).to match /24/
	    expect(rendered).to match /india/
	end	

	it "rendering the new template" do
        link_to "New Contact"
 	end
end





