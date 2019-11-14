require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  
  let(:posts){
    Post.newest_first
  }                      

  before { sign_in FactoryBot.create(:user) }
  
  describe "GET #index" do
    
    it "returns http success on succesful login" do
      get :index
      expect(response).to have_http_status(:success)
    end
  
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "assigns all the posts order by newest to @posts" do
      get :index
      expect(assigns['posts']).to eq(posts)      
    end

  end
end
