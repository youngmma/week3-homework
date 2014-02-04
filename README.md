# Homework Instructions

**Due on Monday, January 27, 11:59PM**

Fork this repository to your github account and clone it down to your local computer. Refer to the Week 1 homework for step-by-step instructions on forking and cloning <a
href='https://github.com/mpcs52553/html-css/blob/master/README.md'>here</a>.

Refer to the <a href='https://github.com/mpcs52553/week3'>Week 3 class
repository</a> code for hints. 


### Rules

For this assignment, you will be creating a dice game with Rails. 

Implement the following rules into the dice game:

* A user can roll the dice to start the game.
* If the user's first roll is a 7 or 11, the user wins.
* If the user's first roll is a 2, 3 or 12, the user loses.
* Anything else becomes the user's goal.
* Have the user roll for their goal again before rolling a 7, and they win.
* If the user rolls a 7 instead of their goal, they lose.
* A user should be able to restart the game after a win or loss.

### Tips on getting started

Here's screenshots to help guide you through the user stories. 

#### SCREENSHOT 1
<img src='https://uchicago.s3.amazonaws.com/dice-01.png'><br />
#### SCREENSHOT 2
<img src='https://uchicago.s3.amazonaws.com/dice-02.png'><br />
#### SCREENSHOT 3
<img src='https://uchicago.s3.amazonaws.com/dice-03.png'><br />
#### SCREENSHOT 4
<img src='https://uchicago.s3.amazonaws.com/dice-04.png'><br />

Use the following urls for photos of the dice:

* https://uchicago.s3.amazonaws.com/d01.png
* https://uchicago.s3.amazonaws.com/d02.png
* https://uchicago.s3.amazonaws.com/d03.png
* https://uchicago.s3.amazonaws.com/d04.png
* https://uchicago.s3.amazonaws.com/d05.png
* https://uchicago.s3.amazonaws.com/d06.png

When you first try to run `rails server`, you may need to `bundle install`.

http://localhost:3000/poker?number=150

It's not necessary to recreate the button graphics. Links are
acceptable. You're welcome to style the button with your own CSS or use Bootstrap to implement the styling.


# Grading

Your code should:

* use HTML views with embedded Ruby to render output,
* use query string parameters,
* use the params hash,
* and use conditional logic.

The grading rubric is as followed:

* <b>[2 pts]</b> Show first page of instructions.
* <b>[3 pts]</b> Let them roll the dice once to either instantly win (7 or  11), instantly win (2, 3, or 12), or establish the "goal" amount (anything other than 2, 3, 7, 11, or 12).
* <b>[4 pts]</b> Let them keep rolling until they win or lose.
* <b>[1 pts]</b> When the game is over, display whether they won or lost, and a link to let them start over.

Good luck!
