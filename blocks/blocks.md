# Quiz Letter blocks

You are given a collection of ABC blocks. Just like the ones you had when you were a kid. There are twenty blocks with two letters on each block. You are guaranteed to have a complete alphabet amongst all sides of the blocks. The sample blocks are:


```
[['B','O'],
['X','K'],
['D','Q'],
['C','P'],
['N','A'],
['G','T'],
['R','E'],
['T','G'],
['Q','D'],
['F','S'],
['J','W'],
['H','U'],
['V','I'],
['A','N'],
['E','R'],
['F','S'],
['L','Y'],
['P','C'],
['Z','M'],]
```

If you test these words, these results will happen:

```
can_make_word("A")
# => true
can_make_word("BARK")
# => true
can_make_word("BOOK")
# => false
can_make_word("TREAT")
# => true
can_make_word("COMMON")
# => false
can_make_word("SQUAD")
# => true
can_make_word("CONFUSE")
# => true
can_make_word("BOUGHT")
# => false
```
Write a program in `ruby` that evaluates `can_make_word`

## Extension

Use the `lots_of_words.txt` file to test your code.

Now order the words that can be made by length.
