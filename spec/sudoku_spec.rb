require './lib/sudoku'
require 'spec_helper'

# 003 020 600
# 900 305 001
# 001 806 400
#
# 008 102 900
# 700 000 008
# 006 708 200
#
# 002 609 500
# 800 203 009
# 005 010 300



describe "Iterator" do

  let(:board) { Board.new('003020600900305001001806400008102900700000008006708200002609500800203009005010300') }

  it 'creates a grid' do
    iterator = Iterator.new
    iterator.grid.should eq []

  end

  it 'separates out squares and adds them to a grid' do
    iterator = Iterator.new
    iterator.separate(board.squares)
    iterator.grid.should eq ([0, 0, 3, 0, 2, 0, 6, 0, 0, 9, 0, 0, 3, 0, 5, 0, 0, 1, 0, 0, 1, 8, 0, 6, 4, 0, 0, 0, 0, 8, 1, 0, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 6, 7, 0, 8, 2, 0, 0, 0, 0, 2, 6, 0, 9, 5, 0, 0, 8, 0, 0, 2, 0, 3, 0, 0, 9, 0, 0, 5, 0, 1, 0, 3, 0, 0]
)
  end

  it 'creates an array of cell objects' do

    iterator = Iterator.new
    iterator.separate(board.squares)
    iterator.index_by_row_column_box[0].should eq <Cell:0x9a6c0f8 @number=0, @row=0, @column=0, @box=0>

  end

  it 'orders the cells into rows' do
    iterator = Iterator.new
    iterator.separate(board.cells)
    iterator.index_by_row_column_box
    iterator.create_row(1)
    row(1).should eq
  end








  # it 'should check if an element is empty' do
  #   iterator = Iterator.new
  #   iterator.separate(board.squares)
  #   iterator.index_by_row_column_box
  #   iterator.cell_empty?.should be_true
  # end

end


