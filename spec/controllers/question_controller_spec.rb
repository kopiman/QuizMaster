require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  context "GET new" do
    it "assigns a blank question to the view" do
      get :new
      expect(assigns(:question)).to be_a_new(Question)
    end
  end

  context "POST create" do
    it "redirects to questions page" do
      post :create, params: { question: { content: "what?", answer: "nothing" } }


      expect(response).to redirect_to(assigns(:question))
    end
  end

  context "GET show" do
    it "should show the question" do
      q = Question.create
      get :show, params: { id: q.id }
      expect(response).to render_template(:show)
    end
  end

  context "GET edit" do
    it "should show the edit page of question" do
      q = Question.create
      get :edit, params: { id: q.id }
      expect(response).to render_template(:edit)
    end
  end

end
