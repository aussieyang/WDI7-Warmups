# Queen Attack

In the game of chess, a queen can attack pieces which are on the same row,
column, or diagonal.

A chessboard can be represented by an 8 by 8 array.

Write a program that positions two queens on a chess board and indicates
whether or not they are positioned so that they can attack each other.

```ruby
queens = Queens.new(:white => [2, 3], :black => [5, 6])
queens.to_s
# => "O O O O O O O O
      O O O O O O O O
      O O O W O O O O
      O O O O O O O O
      O O O O O O O O
      O O O O O O B O
      O O O O O O O O
      O O O O O O O O"

queens.attack?
# => true
```
