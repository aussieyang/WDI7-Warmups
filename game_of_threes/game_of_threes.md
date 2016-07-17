##Game of Threes

Back in primary school, I had a peculiar way of dealing with super boring classes. I would take my handy pocket calculator and play a "Game of Threes". Here's how you play it:
First, you mash in a random large number to start with. Then, repeatedly do the following:
If the number is divisible by 3, divide it by 3.
If it's not, either add 1 or subtract 1 (to make it divisible by 3), then divide it by 3.
The game stops when you reach "1".
While the game was originally a race against myself in order to hone quick math reflexes, it also poses an opportunity for some interesting programming challenges. Today, the challenge is to create a program that "plays" the Game of Threes.

#### Challenge Description

The input is a single number: the number at which the game starts. Write a program that plays the Threes game, and outputs a valid sequence of steps you need to take to get to 1. Each step should be output as the number you start at, followed by either -1 or 1 (if you are adding/subtracting 1 before dividing), or 0 (if you are just dividing). The last line should simply be 1.

Once you have solved this game in ruby, solve it using Javascript (or visa versa).

####Input Description

The input is a single number: the number at which the game starts.
```
100
```

#### Output Description

The output is a list of valid steps that must be taken to play the game. Each step is represented by the number you start at, followed by either -1 or 1 (if you are adding/subtracting 1 before dividing), or 0 (if you are just dividing). The last line should simply be 1.

```
100 -1
33 0
11 1
4 -1
1
```

####Challenge Input

```
31337357
```


___

## Bonus

To make it more fun (and make it a 1-player instead of a 0-player game), let's change the rules a bit: You can now add any of [-2, -1, 1, 2] to reach a multiple of 3. This gives you two options at each step, instead of the original single option.

With this modified rule, find a Threes sequence to get to 1, with this extra condition: The sum of all the numbers that were added must equal 0. If there is no possible correct solution, print Impossible.

Sample Input:
```
929
```

Sample Output:
```
929 1
310 -1
103 -1
34 2
12 0
4 -1
1
```
Since `1 - 1 - 1 + 2 - 1 == 0`, this is a correct solution.

#### Bonus Bonus points

Make your solution work (and run reasonably fast) for numbers up to your operating system's maximum long int value, or its equivalent. For some concrete test cases, try:
```
18446744073709551615
18446744073709551614
```
