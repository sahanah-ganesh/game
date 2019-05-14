# Create a 2-Player math game where players take turns to
# answer simple math addition problems.
# A new math question is generated for each turn by
# picking two numbers between 1 and 20.
# The player whose turn it is is prompted the question
# and must answer correctly or lose a life.

# Both players start with 3 lives.
# They lose a life if they mis-answer a question.
# At the end of every turn, the game should output
# the new scores for both players, so players know where they stand.
# The game doesn’t end until one of the players loses all their lives.
# At this point, the game should announce who won
# and what the other player’s score is.

players
-state: name (USER_INPUT), lives, score
-behaviour: player1_name and player2_name inputted
-methods: function to take user input and display
          function to create lives based on wrong answer
          show player score

games
-state: random1, random2, correct_answer, player1_answer, player2_answer
-methods: function to display random number (1 - 20) as random1 and random2 (result is string of math problem)
          function to check if player_answer (USER_INPUT) === correct_answer
          if match, show scores, generate two more random numbers (1-20) as math problem string
          else no match, player who answered loses 1 life, show scores, generate another random number (1-20) as question_id
          continue until player1 or player2 lives === 0, show winner & game over








