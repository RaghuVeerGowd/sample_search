 require "spec_helper"
 require "rails_helper"
 require "factory_girl_rails"



  # describe Products do
  # 	it "First_name can't be blank"
  #     it "country can't be blank"
  #     it "age can't be blank"
  # end

    describe Product do
        it "is valid with a name, age and country" do
            product = Product.create!( name: 'raghuraas',age: 24 ,country: 'india') 
        
        end
    end	

    describe Product do
     it { should validate_presence_of(:name).with_message("First_name can't be blank") }
     it { should validate_presence_of(:country).with_message("country can't be blank") }    
     it { should validate_presence_of(:age).with_message("age can't be blank") }
     it { should validate_numericality_of(:age).only_integer.with_message("please enter age correctly") } 
     # it { should ensure_inclusion_of(:age).in_range(18..100) }
     # it { should validate_uniqueness_of (:name) }
    end

    # describe Product do 
    # 	a = Product.create!(  name: 'sudha' ,age: 24, country: 'india')
    #      # b = Product.create!(name: "shanu",age: 27,country: "India")
    # end

     # describe Product do
     #     it "has a valid factory" do
     # 	FactoryGirl.create(:product).should be_valid
     # end
     #    it "is invalid without a First_name" do
     #    FactoryGirl.build(:product, name: nil).should_not be_valid
     # end 
     #    it "is invalid without a age" do
     #    FactoryGirl.build(:product, age: nil).should_not be_valid
     # end
     #    it "is invalid without a country" do
     #    FactoryGirl.build(:product, country: nil).should_not be_valid
     # end
     # end

    # describe Product do
    #      it "is invalid without a name" do
    #           expect(FactoryGirl.build(:product,  name: nil ,age: 24 ,country: 'india' )).to have(1).errors_on(:name)
    #      end   
    # end

    describe Product do
          
       it "return a name results that match" do
          a = Product.create(name: 'shanthi' ,age: 24, country: 'india')
           expect(Product.nsearch("shanthi")).to eq [a]
 
       end
    end
 