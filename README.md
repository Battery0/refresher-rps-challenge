# Rock Paper Scissors - The Game 
* Deployed ~ https://rock-paper-scissors-5847.herokuapp.com/
* 100% test coverage

To create a fully unit & feature test driven program that allows a player/user to enter their name and have a game of rock paper scissors with the computer. The player will be notified what the computer chooses (based on randomness) and whether they won / lost / drew.

## Identified Further Expansion
* Make the game playable between 2 people instead of 1 person and the computer
* Use a variation of the 'special rules' https://en.wikipedia.org/wiki/Rock_paper_scissors#Additional_weapons

## User Stories
The following are the user stories used to drive the specifications of the project and create the program.

```
As a marketeer
So that I can see my name in lights
I would like to register my name before playing an online game

As a marketeer
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## Getting Started
In your terminal run:
`git clone https://github.com/Battery0/refresher-rps-challenge.git`

To install all project dependencies, in the project directory run:
`bundle install` (if bundler is not installed, run `gem install bundler` first)

## Usage
To run the deployed version, head to:
* https://rock-paper-scissors-5847.herokuapp.com/

Alternatively, to interact with the program/server locally:
* In the project directory run `rackup`
* In your browser navigate (usually) to the URL `http://localhost:9292/` (the port should be displayed in the terminal when running rack, adjust the url as required)

## Running Tests
To run the test suite, in the project directory run: `rspec`
