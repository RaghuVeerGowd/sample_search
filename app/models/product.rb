class Product < ActiveRecord::Base
  attr_accessible :age, :country, :name

 
  validates :name, :presence => {:message => "First_name can't be blank"}
  validates :country, :presence => {:message => "country can't be blank"}
  validates :age, :presence => {:message => "age can't be blank"}
  validates :age, numericality: {only_integer: true ,:message =>"please enter age correctly"}
  # validates_inclusion_of :age, in: 18..100
  # validates_uniqueness_of :name

  





def self.nsearch(search)
	 
	  if search
	   where('name LIKE ?', "%#{search}%") 
    end

end
end