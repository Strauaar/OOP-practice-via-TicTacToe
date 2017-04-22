require "spec_helper"

module TicTacToe
  describe Cell do
    context "#initialize" do
      it "can be initialized with a value of 'X'" do
        cell = Cell.new("X")
        expect(cell.value).to eq 'X'
      end
    end
  end
end
