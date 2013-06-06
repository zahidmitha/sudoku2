class Iterator

  attr_reader :row
  attr_accessor :grid, :sudoku_nums


  def initialize

    @possible_nums = [1,2,3,4,5,6,7,8,9]
  end


  # def iterate_through_possible_numbers
  #   @possible_nums.each do |num|
  #   @board = Board.new('003020600900305001001806400008102900700000008006708200002609500800203009005010300')
  #   @board.separate
  #   @board.index_by_row_column_box
  #   array_of_rows = @board.create_rows_array
  #   array_of_rows.each do |row|
  #     row.each do |cell|
  #       if cell.number == 0
  #         first_cell = cell
  #       end
  #     end
  #   end
  # end


end

class Board
  def initialize(numbers)
    @cells = numbers
    @grid = []
  end

  def separate
    @grid = @cells.split('').map {|square| square.to_i}
  end

  def index_by_row_column_box
     @grid.map!.each_with_index do
      | number, index |
      row = index % 9
      column = index/9
      box = (row - (row % 3)) + (column / 3)
      cell = Cell.new(number, row, column, box)
    end
  end

   def create_row(row_number)
    row = Row.new(row_number)
    @grid.each do
      |cell|
      if cell.row == row.row_number
        row.add_cell(cell)
      end
    end

    return row
   end


  def create_rows_array
    @rows = []
    (1..9).each do |i|
      row = create_row(i)
      @rows << row
    end
  end

  def create_column(column_number)
    column = Column.new(column_number)
    @grid.each do
      |cell|
      if cell.column == column.column_number
        column.add_cell(cell)
      end
    end

    return column
  end

  def create_columns_array
    @columns = []
    (1..9).each do |i|
      column = create_column(i)
      @columns << column
    end
  end

  def create_box(box_number)
    box = Box.new(box_number)
    @grid.each do
      |cell|
      if cell.box == box.box_number
        box.add_cell(cell)
      end
    end
    return box
  end

  def create_boxes_array
    box = []
    (1..9).each do |i|
      box = create_box(i)
      boxes << box
    end
  end

end

class Cell

  attr_accessor :number, :row, :column, :box

  def initialize(number, row, column, box)
    @number = number
    @row = row
    @column = column
    @box = box
    if number == 0
      @can_be = (1..9).to_a
    else
      @can_be = [number]
    end
    @is_not = []

  end

end

class Row

  attr_accessor :row_number
  attr_reader :cells

  def initialize(row_number)
    @row_number = row_number
    @cells = []
  end

  def add_cell(cell)
    @cells << cell
  end

end

class Column
  attr_accessor :column_number
  attr_reader :cells

  def initialize(column_number)
    @column_number = column_number
    @cells = []
  end

  def add_cell(cell)
    @cells << cell
  end
end

class Box

  attr_accessor :box_number
  attr_reader :cells

  def initialize(box_number)
    @box_number = box_number
    @cells = []
  end

  def add_cell(cell)
    @cells << cell
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