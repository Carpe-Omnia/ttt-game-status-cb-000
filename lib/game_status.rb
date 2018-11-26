# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
]
def x_won?(win_combo)
  win_combo.all? do |index|
    board[index] == "X"
  end
end

def o_won(win_combo)
  win_combo.all? do |index|
    board[index] == "O"
  end
end

def won?(board)
  winner = []
  WIN_COMBINATIONS.each do |win_combo|
    if x_won?(win_combo) == true
      winner << win_combo
    elsif o_won?(win_combo) == true
      winner << win_combo
    end
  end
  return winner
end
       
