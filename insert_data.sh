#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# Clear the tables to avoid duplicates
echo "$($PSQL "TRUNCATE TABLE games, teams;")"

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
	#do not use the first row
	if [[ $YEAR != 'year' ]]
	then
		#get team id of winner
		WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
		#if not found
		if [[ -z $WINNER_ID ]]
		then 
			#insert team
			INSERT_WINNER=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
			if [[ $INSERT_WINNER == "INSERT 0 1" ]] 
			then
				#get new winner_id
				WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
				echo "$WINNER - ID $WINNER_ID added" 
			fi
		fi
		#get team id of opponent 
		OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
		#if not found
		if [[ -z $OPPONENT_ID ]]
		then 
			#insert team
			INSERT_OPPONENT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
			if [[ $INSERT_OPPONENT == "INSERT 0 1" ]] 
			then
				#get new opponent_id 
				OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
				echo "$OPPONENT - ID $OPPONENT_ID added " 
			fi
		fi
		#insert date
		#insert round 
		#insert winner goal 
		#insert opponent goal
		INSERT_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")
		if [[ $INSERT_DATA == "INSERT 0 1" ]] 
		then 
			echo $YEAR, $ROUND, $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS
		fi
	fi
	
done
