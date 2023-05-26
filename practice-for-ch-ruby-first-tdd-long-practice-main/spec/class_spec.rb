require 'rspec'
require 'class_lib'

describe Array do 


    describe "#my_uniq" do 
        it 'returns an array without duplicates' do 
            expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3]) 
        end 
    end 

    describe "#two_sum" do 
        it 'returns all the indexes where elements sum to 0' do 
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]]) 
        end 
    end 

    describe "#my_transpose" do
        it "returns transposed version of matrix provided" do
            arr = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
            expect(arr.my_transpose).to eq(arr.transpose)
        end 
    end

end 

