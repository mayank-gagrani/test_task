require 'rails_helper'
# require 'test_task_logic' 


RSpec.describe TestTaskLogic do
  describe '#add' do
     it 'returns 0 for an empty string' do
       result = TestTaskLogic.add("")
       expect(result).to eq(0)
       puts "returns 0 for an empty string"
     end

     it 'returns sum for an string' do
       result = TestTaskLogic.add("1")
       expect(result).to eq(1)
       puts "returns 1 for an empty string"
     end

     it 'returns sum for an string' do
       result = TestTaskLogic.add("0,5")
       expect(result).to eq(5)
     end

     it 'returns 11 for an string' do
       result = TestTaskLogic.add("3,2,6")
       expect(result).to eq(11)
     end

     it 'returns 12 for an empty string' do
       result = TestTaskLogic.add("1,4,2,5")
       expect(result).to eq(12)
     end
  end
end