require 'first_tdd_project.rb'

describe Array do

    describe '#my_uniq' do
        it 'should return an array with only unique elements' do
            expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
        end
    end

    describe '#two_sum' do
        it 'should return pairs of positions that sum to zero' do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe '#my_transpose' do 
        it 'convert between the row-oriented and column-oriented representations' do
            expect([[0, 1, 2],[3, 4, 5],[6, 7, 8]].my_transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
        end
    end

    describe '#stock_picker' do 
        it 'ouput the most profitable pair of days' do 
            expect([5, 10, 7, 14, 9].stock_picker).to eq([0,3])
        end
    end
end

describe 'Tower' do
    subject(:tower) {Tower.new} 

    describe '#initialize' do
        it 'shoulde accept start state' do
            expect(tower.store).to eq([[1,2,3],[],[]])
        end
    end

    describe '#move' do
        context 'shift from a stack'


    end

    describe '#won?' do
        context 'should return true when game is over' do
            it 'have initial stack in the last index' do
                
                expect(tower.won?).to eq(true)
            end
        end
    end
    
end