require 'rails_helper'

RSpec.describe Question, :type => :model do
  let(:first_q) { Question.create(content:"what?", answer:"2") }
  let(:last_q) { Question.create(content:"what?", answer:"yes") }

  it "should make an alternate answer if answer is number" do
    expect(first_q.alternate_answer).to eq "two"
  end

  it "should not make an alternate answer if answer is not a number" do
    expect(last_q.alternate_answer).to eq ""
  end

end
