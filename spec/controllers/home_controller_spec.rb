require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  context "GET quiz" do
   it "should get a random question" do
     get :quiz
     @q = Question.all.sample
     expect(assigns(:question)).to eq @q
   end
 end

end
