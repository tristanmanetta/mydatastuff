points = 174  # use this input to make your submission

# write your if statement here

if 1 <= points <= 50:
    prize = "wooden rabbit!"
elif 51 <= points <= 150:
    prize = 0
elif 151 <= points <= 180:
    prize = "wafer-thin mint!"
elif 181 <= points <= 200:
    prize = "pengiun!"
    
    
if prize == 0:
    result = "Oh dear, no prize this time."
else:
    result = "Congratulations! You won a "+prize
    

print(result)
