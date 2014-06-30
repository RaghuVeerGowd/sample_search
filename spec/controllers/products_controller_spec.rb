require "rails_helper"
require "spec_helper"
require "factory_girl_rails"

    describe ProductsController   do 
	   describe "GET #new" do
 	       it " assigns a name, age and country to the  new product " do
                  get :new
                  response.should render_template :new 
               end
           end
          
           describe "POST #create" do  
                 context "with valid attributes" do
                    it "create new product in database" do
                       expect{post :create, product: FactoryGirl.attributes_for(:product) }.to change(Product,:count).by(1)
	                end
                    it "redirects to the new product" do 
                        post :create , product: FactoryGirl.attributes_for(:product)
                        response.should redirect_to Product.last
                    end 
                  end
                 context "with invalid attributes" do
                     it "does not save the new product in database" do
                          expect{post :create, product: FactoryGirl.attributes_for(:invalid_product) }.to_not change(Product,:count) 
                     end
                     it "renders the :new method" do
	                  post :create, product: FactoryGirl.attributes_for(:invalid_product)
	                 response.should render_template :new
	             end
                end
              end
     
     
     
        describe "GET #index" do 
            it "shows the array of names" do
            	product = FactoryGirl.build(:product)
            	get :index
            	#assigns(:products).should eq([product])
            end
            it "render the :index template" do
               get :index
               response.should render_template :index 
            end
        end
   

        describe "GET 'edit'" do 
           it "assigns the requested product to @product" do
         
        	product=FactoryGirl.create(:product)
        	get :show, id: product
            end
            it "renders the #edit view" do
                get :edit, id: FactoryGirl.create(:product) 
                response.should render_template :edit 
            end
        end
 


     
    	describe "PUT 'update'" do 
    	    before :each do 
    	      @product = FactoryGirl.create(:product, name: 'sudha' ,age: 24, country: 'india')
    	    end
    	    context "validation " do
    	      	 it "location of the requested @contact" do
    	      		put :update, id:@product, product: FactoryGirl.attributes_for(:product)
                    assigns(:product).should eq(@product)
                  end
                it "updation of attributes" do
                	put :update, id: @product,
                	product:FactoryGirl.attributes_for(:product, name:"surya",age:29,country:"japan")
                	@product.reload
                	@product.name.should eq("surya")
                	@product.age.should eq(29)
                	@product.country.should eq("japan")
                 end
                 it "redirects to the updated product" do 
                    put :update, id: @product, product: FactoryGirl.attributes_for(:product) 
                   response.should redirect_to @product 
                 end   
             end
              context " invalid attributes " do
    	      	 it "location of the requested @contact" do
    	      		put :update, id:@product, product:       FactoryGirl.attributes_for(:invalid_product)
                        assigns(:product).should eq(@product)
                 end 
                 it "it wont update  @product attributes" do
                	put :update, id: @product,
                	product:FactoryGirl.attributes_for(:product, name:"surya",age:29,country:"japan")
                	@product.reload
                	@product.name.should eq("surya")
                	@product.age.should eq(29)
                	@product.country.should eq("japan")
                  end
		  it "re-renders the edit method" do 
			put :update, id: @product, product: FactoryGirl.attributes_for(:invalid_product) 
			      response.should render_template :edit 
	          end
                end
            end 
                   
            
   

  
        describe "#destroy" do
            before :each do
                @product = FactoryGirl.create(:product)
                
            end
            it "delete the record" do
            	expect{delete :destroy ,id: @product}.to change(Product,:count).by(-1)
            end
           it "renders the #index view" do
            delete :destroy, id: FactoryGirl.create(:product) 
            response.should redirect_to products_url
          end 
           
             
        end
    end
      


 


 
