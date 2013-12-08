require './board'
require './box'
require './cell'
require './column'
require './row'
require './scroller'

class Iterator

  attr_reader :row
  attr_accessor :grid, :sudoku_nums


  def initialize

    @possible_nums = [1,2,3,4,5,6,7,8,9]
  end


  def iterate_through_possible_numbers
    @possible_nums.each do |num|
    @board = Board.new('003020600900305001001806400008102900700000008006708200002609500800203009005010300')
    @board.separate
    @board.index_by_row_column_box
    array_of_rows = @board.create_rows_array
    array_of_rows.each do |row|
      row.each do |cell|
        if cell.number == 0
          first_cell = cell
        end
      end
    end
  end

end


board = Board.new('003020600900305001001806400008102900700000008006708200002609500800203009005010300')
board.separate
all = board.index_by_row_column_box
puts all.each.inspect


# iterator.cell_empty?

# Pseudo-code

# Turn string to array of arrays (each subarray is a row)
# Iterate over each row
#Check number in array is empty (0)
# If it is, test numbers 1-9 as available against the row
#then check them to be available against the column
# then check them against the box
#if they are all available with 1 number, fill it in and replace 0.
#go to next number

# https://github.com/h00s/Ruby-Sudoku-Solver/blob/master/sudoku_solver.rb

# http://norvig.com/sudoku.html

# it 'creates the rows' do
#   board.create_row(0).should eq 0
#   board.create_row(1)
# end

# it 'creates the columns' do
#   board.
# end





# def create_row(cell_index)
#   @row_index = cell_index / 9
# end

# def create_column

# end

# def iterate
#   @square_array.each do |square|
#     if square == 0
#       row_iterator
#     end
#   end
# end

# def row_iterator
#   @grid.each {|row| check_row(row)}
# end

# def check_row
#   # if square == 0

# end

# def column_iterator

# end

# def check_column

# end

# def box_iterator

# end

# def check_box

# end
