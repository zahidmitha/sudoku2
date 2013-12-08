
  attr_accessor :number, :row, :column, :box

  def initialize(number, row, column, box)
    @number = number
    @row = row
    @column = column
    @box = box
  end

  def check_number
    if @number == 0
      @can_be = (1..9).to_a
    else
      @can_be = [@number]
    end
      @is_not = []

  end

end