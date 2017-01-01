class Question < ApplicationRecord
  before_save do
  	self.alternate_answer = (!self.answer.to_i.eql?(0) && self.answer.to_i.is_a?(Integer)) ? self.answer.to_i.humanize : ""
  end
end
