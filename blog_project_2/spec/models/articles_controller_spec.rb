require 'rails_helper'

RSpec.describe ArticlesController, :type => :controller do
  describe "Get #index" do
    it "should render the :index view" do
      get :index
      expect(response).to render_template(:index)
    end

    it "should assign @articles" do
      @articles = Article.all
      get :index
      expect(assigns(:articles)).to eq(@current_user.articles)
    end
  end

  describe "Get #new" do
    it "should assign @article" do
      get :new
      expect(assigns(:article)).to be_instance_of(Article)
    end

    it "should render the :new view" do
      get :new
      expect(response).to render_template(:new)
    end
  end

end