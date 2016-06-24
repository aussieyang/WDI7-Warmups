class Queens
  attr_accessor :white, :black

  def initialize(queens={white: [0, 3], black:[7, 3]})
    raise ArgumentError if queens[:white] == queens[:black]
    @white = queens[:white]
    @black = queens[:black]
  end

  def to_s
    str = ""
    8.times do |row|
      8.times do |column|
        if [row, column] == @white
          str += "W"
        elsif [row, column] == @black
          str += "B"
        else
          str += "O"
        end
        str += " " unless column == 7
      end
      str += "\n" unless row == 7
    end
    str
  end

  def attack?
    if same_row || same_column
      true
    elsif on_middle_diagonals
      true
    else
      false
    end
  end

  def same_row
    @white[0] == @black [0]
  end

  def same_column
    @white[1] == @black [1]
  end

  def on_middle_diagonals
    ( @white[0] - @black[0] ) == ( @white[1] - @black[1] )
  end

  def eight_queens
    open_rows = (0..7).to_a
    open_cols = (0..7).to_a

    queens = {}

    ['q1','q2','q3', 'q4', 'q5', 'q6', 'q7', 'q8'].each do |q|
      queens[q] = []
      queens[q] << open_rows.unshift
      queens[q] << open_cols.unshift
    end
    q_position1 = []

    # open_rows -= q1[0]
    # open_cols -= q1[1]
  end

end

Queens.new.eight_queens
