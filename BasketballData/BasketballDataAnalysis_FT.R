#Basketball Data Analysis (Plus Free Throw Data)

#Free Throws Per Game
myplot(FreeThrows / Games)

#Accuracy of Free Throws
myplot(FreeThrows / FreeThrowsAttempts)

#Player Playing Style (2 vs 3 points preference)
new_points <- Points - FreeThrows
myplot(new_points / FieldGoals)