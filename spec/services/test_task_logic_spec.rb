require 'rails_helper'
require 'test_task_logic' 


RSpec.describe TestTaskLogic do
  describe '#add' do
     it 'returns 0 for an empty string' do
       result = TestTaskLogic.add("")
       expect(result).to eq(0)
       puts "returns 0 for an empty string"
     end
  end
end