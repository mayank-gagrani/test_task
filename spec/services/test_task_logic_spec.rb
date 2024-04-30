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

     it 'returns exception for negative numbers' do
        result = TestTaskLogic.add("1,-2,3,-5,-6")
        expect(result).to eq("negative numbers not allowed -2, -5, -6")
     end

     it 'returns 19 for an \n string' do
       result = TestTaskLogic.add('1\n4,6\n8')
       expect(result).to eq(19)
     end

     it 'returns invalid for an empty string' do
       result = TestTaskLogic.add('1,\n')
       expect(result).to eq('invalid')
     end
  end
end