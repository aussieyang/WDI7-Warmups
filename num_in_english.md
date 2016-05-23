# Say it in English

Write a program that will take a number from 0 to 99 and spell out that number in English.

In other words, if the input to the program is `22`, then the output should be `'twenty-two'`

e.g.

```ruby
Say.new(22).in_english
```

```ruby
Say.new(-1).in_english
# say.rb:7:in 'in_english': Number must be between 0 and 99, inclusive. (ArgumentError)
```

The program must also report any values that are out of range.

Some good test cases for this program are:

* 0
* 14
* 50
* 98
* -1
* 100

## Extensions

Re-write the method for the Fixnum class.
