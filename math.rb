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

player (USER_INPUT)
-state: player1_name, player2_name
-behaviour: player1_name and player2_name inputted
-methods: function to take user input and display name

question (USER_INPUT)
-state: question_id, question_id_answer, player1_answer, player2_answer, player1_valid, player2_valid
-behaviour: displays new question_id after each turn (both players answer),
            question_id_answer validate with player_answer, make player_valid
-methods: function to display new question_id,
          function to take user input and display player_answer,
          function to match player_answer to question_id_answer,
            if match, player_valid count += 1, remove question_id
            else no match, !player_valid => function to display new question_id

number (USER_INPUT)
-state: player1_number, player2_number, correct_number, player1_turn, player2_turn
-behaviour: player_number selected by player,
            player_number validated by correct_number
            if player_number === true, player_turn
-methods: function to generate random correct_number between 1 - 20 (LOOP),
          function to take user input and display player_number,
          function to match player_number with correct_number (player_number true)
              and change player_turn === true (CURRENT_PLAYER)

life
-state: player1_life, player2_life, player1_score, player2_score
-behaviour: player1_life && player2_life starts at 3,
            !player1_valid && !player2_valid decreases life by 1,
            if (player1_life || player2_life === 0) game ends,
            player_score received from player_valid count
-methods: function to start player_life === 3,
          function to decrease player_life by 1 with each !player_valid,
          if player_life === 0, return string game end player_score





