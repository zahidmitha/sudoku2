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