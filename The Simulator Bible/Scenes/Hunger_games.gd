extends Control

#Irrelavant variables
var rng = RandomNumberGenerator.new()

#Character1
var Character1_Name = "Louis"
#Out of 10
var Character1_Health = 10
var Character1_Sanity = 10
var Character1_Might = 10
var Character1_Belongings = []
var Character1_Enemies =[]
var Character1_Friends = []
var Character1_Traits = []
var Character1_Kills = 0

#Character2
var Character2_Name = "Riley"
#Out of 10
var Character2_Health = 10
var Character2_Sanity = 10
var Character2_Might = 10
var Character2_Belongings = []
var Character2_Enemies =[]
var Character2_Friends = []
var Character2_Traits = []
var Character2_Kills = 0

#Character3
var Character3_Name = "Daniel"
#Out of 10
var Character3_Health = 10
var Character3_Sanity = 10
var Character3_Might = 10
var Character3_Belongings = []
var Character3_Enemies =[]
var Character3_Friends = []
var Character3_Traits = []
var Character3_Kills = 0

#Character4
var Character4_Name = "Aska"
#Out of 10
var Character4_Health = 10
var Character4_Sanity = 10
var Character4_Might = 10
var Character4_Belongings = []
var Character4_Enemies =[]
var Character4_Friends = []
var Character4_Traits = []
var Character4_Kills = 0

#Character5
var Character5_Name = "Jake"
#Out of 10
var Character5_Health = 10
var Character5_Sanity = 10
var Character5_Might = 10
var Character5_Belongings = []
var Character5_Enemies =[]
var Character5_Friends = []
var Character5_Traits = []
var Character5_Kills = 0

#Character6
var Character6_Name = "Ahan"
#Out of 10
var Character6_Health = 10
var Character6_Sanity = 10
var Character6_Might = 10
var Character6_Belongings = []
var Character6_Enemies =[]
var Character6_Friends = []
var Character6_Traits = []
var Character6_Kills = 0

#Character7
var Character7_Name = "Oakley"
#Out of 10
var Character7_Health = 10
var Character7_Sanity = 10
var Character7_Might = 10
var Character7_Belongings = []
var Character7_Enemies =[]
var Character7_Friends = []
var Character7_Traits = []
var Character7_Kills = 0

#Character8
var Character8_Name = "Mr Guck"
#Out of 10
var Character8_Health = 10
var Character8_Sanity = 10
var Character8_Might = 10
var Character8_Belongings = []
var Character8_Enemies =[]
var Character8_Friends = []
var Character8_Traits = []
var Character8_Kills = 0

#Character9
var Character9_Name = "Mr Dawson"
#Out of 10
var Character9_Health = 10
var Character9_Sanity = 10
var Character9_Might = 10
var Character9_Belongings = []
var Character9_Enemies =[]
var Character9_Friends = []
var Character9_Traits = []
var Character9_Kills = 0

#Character10
var Character10_Name = "Jesus"
#Out of 10
var Character10_Health = 10
var Character10_Sanity = 10
var Character10_Might = 10
var Character10_Belongings = []
var Character10_Enemies =[]
var Character10_Friends = []
var Character10_Traits = []
var Character10_Kills = 0

#Variables
var listOfCharacterNames = []
var Day = 0
#Temp Varaibles
var Response = "NULL"
var CharactersToSimulate = 10
var SimulateEventAmount
var SimulateEventType 
var SimulateRandomNumber
var listOfNumbersTemp
var TempCharacter1
var TempCharacter2
var TempCharacter3
var TempCharacter4
var listOfNumbers = [0,1,2,3,4,5,6,7,8,9]
var listOfNumbersSimulateEventAmount = [1,1,1,1,2,2]
var VarCheckerTemp1
var VarCheckerTemp2
#--------------------
const InputResponse = preload("res://Scenes/input_response_Hunger_Game.tscn")

@onready var history_rows = $Background/MarginContainer/VBoxContainer/Effect/Scroll/HistoryRows

func _ready():
	listOfCharacterNames.append(Character1_Name)
	listOfCharacterNames.append(Character2_Name)
	listOfCharacterNames.append(Character3_Name)
	listOfCharacterNames.append(Character4_Name)
	listOfCharacterNames.append(Character5_Name)
	listOfCharacterNames.append(Character6_Name)
	listOfCharacterNames.append(Character7_Name)
	listOfCharacterNames.append(Character8_Name)
	listOfCharacterNames.append(Character9_Name)
	listOfCharacterNames.append(Character10_Name)
	
func _on_line_edit_text_submitted(new_text):
	CharactersToSimulate = listOfNumbers.size()
	listOfNumbersTemp = listOfNumbers.duplicate()
	print("Lets Go")
	var input_response = InputResponse.instantiate()
	Response = "------------------------------------------------------------------------------------------"
	Simulate()
	Day += 1
	input_response.set_text(new_text, Response)
	history_rows.add_child(input_response)

func Simulate():
	while CharactersToSimulate != 0:
		SimulateEventAmount = listOfNumbersSimulateEventAmount.pick_random()
		if Day != 0:
			SimulateEventType = rng.randi_range(1,1)
			#1 = Nothing Interesting
			#2 = Trading of items
			#3 = Communication
			#4 = Battle
			#5 = Dynamic Information (Nothing Interesting + what happened previously)
		else:
			SimulateEventType = -1
		if SimulateEventAmount > CharactersToSimulate:
			pass
		else:
			#BloodBath
			if SimulateEventType == -1:
				if SimulateEventAmount == 1:
					SimulateRandomNumber = rng.randi_range(1,28)
					TempCharacter1 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
					#1
					if SimulateRandomNumber == 1:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs away from the Cornucopia"
					elif SimulateRandomNumber == 2:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " trips while running away from the Cornucopia"
						BruteForceVariableChanger(TempCharacter1, "Health", -1)
					elif SimulateRandomNumber == 3:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " rushes to a nearby forest"
					elif SimulateRandomNumber == 4:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " head south"
					elif SimulateRandomNumber == 5:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " hits their head on a tree while running away"
						BruteForceVariableChanger(TempCharacter1, "Health", -1)
					elif SimulateRandomNumber == 6:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " scrambles out of the Cornucopia crying"
						BruteForceVariableChanger(TempCharacter1, "Sanity", -1)
					elif SimulateRandomNumber == 7:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " aimlessly runs away"
					#2
					elif SimulateRandomNumber == 8:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets an axe from a chest"
						BruteForceArrayChanger(TempCharacter1, "Axe", "Add", "Belongings")
					elif SimulateRandomNumber == 9:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a wooden bow from a sack"
						BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
					elif SimulateRandomNumber == 10:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " finds a bow behind them"
						BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
					elif SimulateRandomNumber == 11:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs to get a fishing rod before running away"
						BruteForceArrayChanger(TempCharacter1, "Fishing", "Add", "Belongings")
					elif SimulateRandomNumber == 12:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " dashes away with a fishing gear"
						BruteForceArrayChanger(TempCharacter1, "Fishing", "Add", "Belongings")
					elif SimulateRandomNumber == 13:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " obtains an iron sword in a chest"
						BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
					elif SimulateRandomNumber == 14:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " smuggles a dagger away"
						BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
					elif SimulateRandomNumber == 15:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " snags a very sharp stick"
						BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
					elif SimulateRandomNumber == 16:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs away and picks up a thick stick"
						BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
					elif SimulateRandomNumber == 17:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a baseball bat"
						BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
					elif SimulateRandomNumber == 18:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " dashes to find a leather clawed glove"
						BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
					elif SimulateRandomNumber == 19:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a celtic themed shield"
						BruteForceArrayChanger(TempCharacter1, "Defense", "Add", "Belongings")
					elif SimulateRandomNumber == 20:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a round shield "
						BruteForceArrayChanger(TempCharacter1, "Defense", "Add", "Belongings")
					elif SimulateRandomNumber == 21:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " finds bandages"
						BruteForceArrayChanger(TempCharacter1, "Medical", "Add", "Belongings")
					elif SimulateRandomNumber == 22:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a first aid kit"
						BruteForceArrayChanger(TempCharacter1, "Medical", "Add", "Belongings")
					elif SimulateRandomNumber == 23:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a set of medical needles with a strange dug inside"
						BruteForceArrayChanger(TempCharacter1, "Medical", "Add", "Belongings")
					#4
					elif SimulateRandomNumber == 24:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " jumps off too early and explodes"
						listOfNumbers.erase(TempCharacter1)
					elif SimulateRandomNumber == 25:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " tries to pick up a grenade but explodes in doing so"
						listOfNumbers.erase(TempCharacter1)
					elif SimulateRandomNumber == 26:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs into a lone spear"
						listOfNumbers.erase(TempCharacter1)
					elif SimulateRandomNumber == 27:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " falls into a hemlock bush"
						listOfNumbers.erase(TempCharacter1)
					elif SimulateRandomNumber == 28:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs on a landmine and explodes"
						listOfNumbers.erase(TempCharacter1)
					listOfNumbersTemp.erase(TempCharacter1)
				elif SimulateEventAmount == 2:
					SimulateRandomNumber = rng.randi_range(1,15)
					TempCharacter1 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
					TempCharacter2 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
					while TempCharacter1 == TempCharacter2:
						TempCharacter2 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
					#2
					if SimulateRandomNumber == 1:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " steals a bow off " + listOfCharacterNames[TempCharacter2]
						BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
					elif SimulateRandomNumber == 2:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " snatches some antiseptic off " + listOfCharacterNames[TempCharacter2]
						BruteForceArrayChanger(TempCharacter1, "Health", "Add", "Belongings")
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
					elif SimulateRandomNumber == 3:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " breaks a sword trying to steal it from " + listOfCharacterNames[TempCharacter2]
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
						BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Enemies")
					elif SimulateRandomNumber == 4:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a sword before " + listOfCharacterNames[TempCharacter2] + " could get it"
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
						BruteForceArrayChanger(TempCharacter1, "Defense", "Add", "Belongings")
					elif SimulateRandomNumber == 5:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a sword that was dropped by " + listOfCharacterNames[TempCharacter2]
						BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
					elif SimulateRandomNumber == 6:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " share out some blow darts with " + listOfCharacterNames[TempCharacter2]
						BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
						BruteForceArrayChanger(TempCharacter2, "Bow", "Add", "Belongings")
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
						BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
					#3
					elif SimulateRandomNumber == 7:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs away with " + listOfCharacterNames[TempCharacter2]
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
						BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
					elif SimulateRandomNumber == 8:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " dashes into a forest behind " + listOfCharacterNames[TempCharacter2]
						BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Enemies")
					elif SimulateRandomNumber == 9:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " and " + listOfCharacterNames[TempCharacter2] + " crashes into eachother"
						BruteForceVariableChanger(TempCharacter1, "Health", -1)
						BruteForceVariableChanger(TempCharacter2, "Health", -1)
					elif SimulateRandomNumber == 10:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " helps " + listOfCharacterNames[TempCharacter2] + " escape the Cornucopia"
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
						BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
					elif SimulateRandomNumber == 11:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " screams threats to " + listOfCharacterNames[TempCharacter2] + " while they run away"
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
						BruteForceVariableChanger(TempCharacter2, "Sanity", -1)
					#4
					elif SimulateRandomNumber == 12:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " punches " + listOfCharacterNames[TempCharacter2] + " in their face to get a grenade"
						BruteForceVariableChanger(TempCharacter2, "Health", -2)
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
						BruteForceArrayChanger(TempCharacter1, "Explosive", "Add", "Belongings")
					elif SimulateRandomNumber == 13:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " throws a grenade at the feet of " + listOfCharacterNames[TempCharacter2]
						BruteForceVariableChanger(TempCharacter1, "Kills", 1)
						listOfNumbers.erase(TempCharacter2)
					elif SimulateRandomNumber == 14:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " stabs " + listOfCharacterNames[TempCharacter2]
						BruteForceVariableChanger(TempCharacter1, "Kills", 1)
						listOfNumbers.erase(TempCharacter2)
					elif SimulateRandomNumber == 15:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs into " + listOfCharacterNames[TempCharacter2] + "'s knife"
						BruteForceVariableChanger(TempCharacter2, "Kills", 1)
						listOfNumbers.erase(TempCharacter1)
						BruteForceVariableChanger(TempCharacter2, "Sanity", -1)
					listOfNumbersTemp.erase(TempCharacter1)
					listOfNumbersTemp.erase(TempCharacter2)
				elif SimulateEventAmount == 3:
					SimulateRandomNumber = rng.randi_range(1,9)
					TempCharacter1 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
					TempCharacter2 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
					TempCharacter3 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
					while TempCharacter1 == TempCharacter2 || TempCharacter2 == TempCharacter3 || TempCharacter1 == TempCharacter3:
						TempCharacter1 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
						TempCharacter2 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
						TempCharacter3 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
					#1
					if SimulateRandomNumber == 1:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + ", " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3] + " charges out of the areana in opposite directions"
					#2
					elif SimulateRandomNumber == 2:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + ", " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3] + " distribute some medical supplies"
						BruteForceArrayChanger(TempCharacter1, "Medical", "Add", "Belongings")
						BruteForceArrayChanger(TempCharacter2, "Medical", "Add", "Belongings")
						BruteForceArrayChanger(TempCharacter3, "Medical", "Add", "Belongings")
					#3
					elif SimulateRandomNumber == 3:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " trips and gets knocked out on a rock, " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3] + " watch in horror."
						BruteForceVariableChanger(TempCharacter1, "Health", -3)
						BruteForceVariableChanger(TempCharacter2, "Sanity", -1)
						BruteForceVariableChanger(TempCharacter3, "Sanity", -1)
					#4
					elif SimulateRandomNumber == 4:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " and " + listOfCharacterNames[TempCharacter2] + " kick and kill " + listOfCharacterNames[TempCharacter3]
						listOfNumbers.erase(TempCharacter3)
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
						BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
						BruteForceVariableChanger(TempCharacter1, "Kills",1)
						BruteForceVariableChanger(TempCharacter2, "Kills",1)
					elif SimulateRandomNumber == 5:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " and " + listOfCharacterNames[TempCharacter2] + " failed to stab " + listOfCharacterNames[TempCharacter3]
						BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
						BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
						BruteForceArrayChanger(TempCharacter3, TempCharacter1, "Add", "Enemies")
						BruteForceArrayChanger(TempCharacter3, TempCharacter2, "Add", "Enemies")
					elif SimulateRandomNumber == 6:  
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " cracks " + listOfCharacterNames[TempCharacter2] + "'s head and " + listOfCharacterNames[TempCharacter3] + "'s backbone"
						listOfNumbers.erase(TempCharacter2)
						listOfNumbers.erase(TempCharacter3)
						BruteForceVariableChanger(TempCharacter1, "Kills",2)
					elif SimulateRandomNumber == 7: 
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets hacked at the neck by " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3]
						listOfNumbers.erase(TempCharacter1)
						BruteForceVariableChanger(TempCharacter2, "Kills",1)
						BruteForceVariableChanger(TempCharacter3, "Kills",1)
					elif SimulateRandomNumber == 8:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " helps " + listOfCharacterNames[TempCharacter2] + " escape the wrath of " + listOfCharacterNames[TempCharacter3] + "'s sword"
						BruteForceVariableChanger(TempCharacter2, "Sanity",-1)
						BruteForceVariableChanger(TempCharacter1, "Health", -1)
						BruteForceArrayChanger(TempCharacter3, "Sword", "Add", "Belongings")
					elif SimulateRandomNumber == 9:
						Response += "\n" + listOfCharacterNames[TempCharacter1] + " headshots " + listOfCharacterNames[TempCharacter2] + " while they were running with " + listOfCharacterNames[TempCharacter3]
						listOfNumbers.erase(TempCharacter2)
						BruteForceVariableChanger(TempCharacter3, "Sanity",-1)
						BruteForceVariableChanger(TempCharacter1, "Kills", 1)
					listOfNumbersTemp.erase(TempCharacter1)
					listOfNumbersTemp.erase(TempCharacter2)
					listOfNumbersTemp.erase(TempCharacter3)
			elif SimulateEventType == 1:
				if SimulateEventAmount == 1:
					SimulateRandomNumber = rng.randi_range(1,25)
					TempCharacter1 = listOfNumbersTemp.pick_random()
					VarCheckerTemp1 = BruteForceVariableGetter(TempCharacter1, "Sanity")
					if VarCheckerTemp1 > 9:
						if SimulateRandomNumber == 1:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " thinks about home"
						elif SimulateRandomNumber == 2:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " sings a song about love"
						elif SimulateRandomNumber == 3:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " cloud watches"
						elif SimulateRandomNumber == 4:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " thinks about winning"
						elif SimulateRandomNumber == 5:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " meditates under a tree peacefully"
						elif SimulateRandomNumber == 6:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " dances quietly"
						elif SimulateRandomNumber == 7:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " thinks about Disney films"
						elif SimulateRandomNumber == 8:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " hums to their favourite show"
						elif SimulateRandomNumber == 9:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " watches squirrels run around the arena"
						elif SimulateRandomNumber == 10:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " makes a small hop scotch"
						elif SimulateRandomNumber == 11:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " organises their belongings"
						elif SimulateRandomNumber == 12:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " treads carefully on marsh land"
						elif SimulateRandomNumber == 13:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " talks to themselves about food"
						elif SimulateRandomNumber == 14:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " tries to make a face with leaves"
						elif SimulateRandomNumber == 15:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " wishes they are making their family proud"
						elif SimulateRandomNumber == 16:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " sits next to a river bank"
						elif SimulateRandomNumber == 17:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " stares into a waterfall"
						elif SimulateRandomNumber == 18:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " wonders about what it would be like to eat their childhood meal again"
						elif SimulateRandomNumber == 19:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " makes a list about their plan for the day"
						elif SimulateRandomNumber == 20:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " looks at the beautiful koi fishes"
						elif SimulateRandomNumber == 21:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " does a small exercise"
						elif SimulateRandomNumber == 22:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " whispers to the trees"
						elif SimulateRandomNumber == 23:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " washes themselves in a river"
						elif SimulateRandomNumber == 24:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " tries to find some other people, and fails"
						elif SimulateRandomNumber == 25:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " fails to get a rabbit"
					elif VarCheckerTemp1 > 5:
						if SimulateRandomNumber == 1:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " contemplates their life choices"
						elif SimulateRandomNumber == 2:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " wonders if there is a God"
						elif SimulateRandomNumber == 3:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " thinks of the meaning of life"
						elif SimulateRandomNumber == 4:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets frightful of death"
						elif SimulateRandomNumber == 5:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " does some scream therapy"
						elif SimulateRandomNumber == 6:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " questions about mortality"
						elif SimulateRandomNumber == 7:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " tries to reread a book from memory, they fail"
						elif SimulateRandomNumber == 8:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets paranoid about being watched"
						elif SimulateRandomNumber == 9:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " acts like they know where the camera is, they end up looking ridiculous"
						elif SimulateRandomNumber == 10:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " makes a message with leaves"
						elif SimulateRandomNumber == 11:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " tries to hide the trauma by bathing"
						elif SimulateRandomNumber == 12:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " chases after a shadowed figure, it ended up being a pile of leaves"
						elif SimulateRandomNumber == 13:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " smiles at the thought of death"
						elif SimulateRandomNumber == 14:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " nearly drowns by cleaning themselves"
						elif SimulateRandomNumber == 15:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " makes some poetry about nature"
						elif SimulateRandomNumber == 16:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " walks around in the hope of finding some other tribes"
						elif SimulateRandomNumber == 17:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " moans loudly about being bored"
						elif SimulateRandomNumber == 18:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " looks around for a nice place to camp"
						elif SimulateRandomNumber == 19:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " makes some music with sticks"
						elif SimulateRandomNumber == 20:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " hugs themselves for comfort"
						elif SimulateRandomNumber == 21:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " wonders what the weather will be like tomorrow"
						elif SimulateRandomNumber == 22:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " complains about the weather"
						elif SimulateRandomNumber == 23:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " whistles a comforting melody"
						elif SimulateRandomNumber == 24:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " questions reality"
						elif SimulateRandomNumber == 25:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " praises President Coriolanus Snow for mercy"
					else:
						if SimulateRandomNumber == 1:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " hugs a dead rabbit for comfort"
						elif SimulateRandomNumber == 2:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " starts thinking trees are bleeding"
						elif SimulateRandomNumber == 3:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs for 2 hours away from their shadow"
						elif SimulateRandomNumber == 4:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " cries at the thought of dying"
						elif SimulateRandomNumber == 5:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " makes a small grave incase they die"
						elif SimulateRandomNumber == 6:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " shouts out curse words"
						elif SimulateRandomNumber == 7:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " cries and wimps for mercy"
						elif SimulateRandomNumber == 8:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " forgets all of their family's names, and cries"
						elif SimulateRandomNumber == 9:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " starts screaming because they have hiccups"
						elif SimulateRandomNumber == 10:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " questions what it is like to die"
						elif SimulateRandomNumber == 11:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets paranoid that the owls are laughing at them"
						elif SimulateRandomNumber == 12:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " begs for a gift"
						elif SimulateRandomNumber == 13:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " goes skinny dipping"
						elif SimulateRandomNumber == 14:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " thinks they were having a stroke"
						elif SimulateRandomNumber == 15:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " ponders the idea of suicide"
						elif SimulateRandomNumber == 16:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " thinks about murder"
						elif SimulateRandomNumber == 17:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " cries about not having enough enemies"
						elif SimulateRandomNumber == 18:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " punches a tree"
						elif SimulateRandomNumber == 19:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " yells threats at Lady Luck"
						elif SimulateRandomNumber == 20:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " plans out their final words"
						elif SimulateRandomNumber == 21:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " has a breakdown while eating berries"
						elif SimulateRandomNumber == 22:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " becomes scared to touch their own body"
						elif SimulateRandomNumber == 23:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " acts dead to catch a squirrel"
						elif SimulateRandomNumber == 24:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " screams at a sight of a dead body, it was just a pile of leaves"
						elif SimulateRandomNumber == 25:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " climbs trees to find people desperately"
					listOfNumbersTemp.erase(TempCharacter1)
				elif SimulateEventAmount == 2:
					SimulateRandomNumber = rng.randi_range(1,15)
					TempCharacter1 = listOfNumbersTemp.pick_random()
					if rng.randi_range(1,3) != 1 && BruteForceArrayGetter(TempCharacter1, "Friends") != [] && listOfNumbersTemp.has(BruteForceArrayGetter(TempCharacter1, "Friends")) == true:
						TempCharacter2 = (BruteForceArrayGetter(TempCharacter1, "Friends")).pick_random()
					else:
						while TempCharacter1 == TempCharacter2:
							TempCharacter2 = listOfNumbersTemp.pick_random()
					VarCheckerTemp1 = BruteForceVariableGetter(TempCharacter1, "Sanity")
					if VarCheckerTemp1 > 0:
						if SimulateRandomNumber == 1:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " goes on a walk with " + listOfCharacterNames[TempCharacter2]
						elif SimulateRandomNumber == 2:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " plays hide and seek with " + listOfCharacterNames[TempCharacter2]
						elif SimulateRandomNumber == 3:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " talks about colours with " + listOfCharacterNames[TempCharacter2]
						elif SimulateRandomNumber == 4:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " discusses about winning with " + listOfCharacterNames[TempCharacter2]
						elif SimulateRandomNumber == 5:
							Response += "\n" + listOfCharacterNames[TempCharacter1] + " watches " + listOfCharacterNames[TempCharacter2] + " bathe in a river"
			print()
			print(BruteForceArrayGetter(TempCharacter1,"Friends"))
			CharactersToSimulate -= SimulateEventAmount

func BruteForceVariableChanger(Character, Element, Change):
	if Character == 0:
		if Element == "Health":
			Character1_Health += Change
		elif Element == "Sanity":
			Character1_Sanity += Change
		elif Element == "Might":
			Character1_Might += Change
		elif Element == "Kills":
			Character1_Kills += Change
	elif Character == 1:
		if Element == "Health":
			Character2_Health += Change
		elif Element == "Sanity":
			Character2_Sanity += Change
		elif Element == "Might":
			Character2_Might += Change
		elif Element == "Kills":
			Character2_Kills += Change
	elif Character == 2:
		if Element == "Health":
			Character3_Health += Change
		elif Element == "Sanity":
			Character3_Sanity += Change
		elif Element == "Might":
			Character3_Might += Change
		elif Element == "Kills":
			Character3_Kills += Change
	elif Character == 3:
		if Element == "Health":
			Character4_Health += Change
		elif Element == "Sanity":
			Character4_Sanity += Change
		elif Element == "Might":
			Character4_Might += Change
		elif Element == "Kills":
			Character4_Kills += Change
	elif Character == 4:
		if Element == "Health":
			Character5_Health += Change
		elif Element == "Sanity":
			Character5_Sanity += Change
		elif Element == "Might":
			Character5_Might += Change
		elif Element == "Kills":
			Character5_Kills += Change
	if Character == 5:
		if Element == "Health":
			Character6_Health += Change
		elif Element == "Sanity":
			Character6_Sanity += Change
		elif Element == "Might":
			Character6_Might += Change
		elif Element == "Kills":
			Character6_Kills += Change
	if Character == 6:
		if Element == "Health":
			Character7_Health += Change
		elif Element == "Sanity":
			Character7_Sanity += Change
		elif Element == "Might":
			Character7_Might += Change
		elif Element == "Kills":
			Character7_Kills += Change
	if Character == 7:
		if Element == "Health":
			Character8_Health += Change
		elif Element == "Sanity":
			Character8_Sanity += Change
		elif Element == "Might":
			Character8_Might += Change
		elif Element == "Kills":
			Character8_Kills += Change
	if Character == 8:
		if Element == "Health":
			Character9_Health += Change
		elif Element == "Sanity":
			Character9_Sanity += Change
		elif Element == "Might":
			Character9_Might += Change
		elif Element == "Kills":
			Character9_Kills += Change
	if Character == 9:
		if Element == "Health":
			Character10_Health += Change
		elif Element == "Sanity":
			Character10_Sanity += Change
		elif Element == "Might":
			Character10_Might += Change
		elif Element == "Kills":
			Character10_Kills += Change

func BruteForceArrayChanger(Character, Element, Change, List):
	if Character == 0:
		if List == "Belongnings":
			if Change == "Add":
				Character1_Belongings.append(Element)
			elif Change == "Subtract":
				Character1_Belongings.erase(Element)
		elif List == "Friends":
			if Change == "Add":
				Character1_Friends.append(Element)
			elif Change == "Subtract":
				Character1_Friends.erase(Element)
		elif List == "Enemies":
			if Change == "Add":
				Character1_Enemies.append(Element)
			elif Change == "Subtract":
				Character1_Enemies.erase(Element)
	if Character == 1:
		if List == "Belongnings":
			if Change == "Add":
				Character2_Belongings.append(Element)
			elif Change == "Subtract":
				Character2_Belongings.erase(Element)
		elif List == "Friends":
			if Change == "Add":
				Character2_Friends.append(Element)
			elif Change == "Subtract":
				Character2_Friends.erase(Element)
		elif List == "Enemies":
			if Change == "Add":
				Character2_Enemies.append(Element)
			elif Change == "Subtract":
				Character2_Enemies.erase(Element)
	if Character == 2:
		if List == "Belongnings":
			if Change == "Add":
				Character3_Belongings.append(Element)
			elif Change == "Subtract":
				Character3_Belongings.erase(Element)
		elif List == "Friends":
			if Change == "Add":
				Character3_Friends.append(Element)
			elif Change == "Subtract":
				Character3_Friends.erase(Element)
		elif List == "Enemies":
			if Change == "Add":
				Character3_Enemies.append(Element)
			elif Change == "Subtract":
				Character3_Enemies.erase(Element)
	if Character == 3:
		if List == "Belongnings":
			if Change == "Add":
				Character4_Belongings.append(Element)
			elif Change == "Subtract":
				Character4_Belongings.erase(Element)
		elif List == "Friends":
			if Change == "Add":
				Character4_Friends.append(Element)
			elif Change == "Subtract":
				Character4_Friends.erase(Element)
		elif List == "Enemies":
			if Change == "Add":
				Character4_Enemies.append(Element)
			elif Change == "Subtract":
				Character4_Enemies.erase(Element)
	if Character == 4:
		if List == "Belongnings":
			if Change == "Add":
				Character5_Belongings.append(Element)
			elif Change == "Subtract":
				Character5_Belongings.erase(Element)
		elif List == "Friends":
			if Change == "Add":
				Character5_Friends.append(Element)
			elif Change == "Subtract":
				Character5_Friends.erase(Element)
		elif List == "Enemies":
			if Change == "Add":
				Character5_Enemies.append(Element)
			elif Change == "Subtract":
				Character5_Enemies.erase(Element)
	if Character == 5:
		if List == "Belongnings":
			if Change == "Add":
				Character6_Belongings.append(Element)
			elif Change == "Subtract":
				Character6_Belongings.erase(Element)
		elif List == "Friends":
			if Change == "Add":
				Character6_Friends.append(Element)
			elif Change == "Subtract":
				Character6_Friends.erase(Element)
		elif List == "Enemies":
			if Change == "Add":
				Character6_Enemies.append(Element)
			elif Change == "Subtract":
				Character6_Enemies.erase(Element)
	if Character == 6:
		if List == "Belongnings":
			if Change == "Add":
				Character7_Belongings.append(Element)
			elif Change == "Subtract":
				Character7_Belongings.erase(Element)
		if List == "Friends":
			if Change == "Add":
				Character7_Friends.append(Element)
			elif Change == "Subtract":
				Character7_Friends.erase(Element)
		elif List == "Enemies":
			if Change == "Add":
				Character7_Enemies.append(Element)
			elif Change == "Subtract":
				Character7_Enemies.erase(Element)
	if Character == 7:
		if List == "Belongnings":
			if Change == "Add":
				Character8_Belongings.append(Element)
			elif Change == "Subtract":
				Character8_Belongings.erase(Element)
		if List == "Friends":
			if Change == "Add":
				Character8_Friends.append(Element)
			elif Change == "Subtract":
				Character8_Friends.erase(Element)
		if List == "Enemies":
			if Change == "Add":
				Character9_Enemies.append(Element)
			elif Change == "Subtract":
				Character9_Enemies.erase(Element)
	if Character == 8:
		if List == "Belongnings":
			if Change == "Add":
				Character9_Belongings.append(Element)
			elif Change == "Subtract":
				Character9_Belongings.erase(Element)
		if List == "Friends":
			if Change == "Add":
				Character9_Friends.append(Element)
			elif Change == "Subtract":
				Character9_Friends.erase(Element)
		if List == "Enemies":
			if Change == "Add":
				Character9_Enemies.append(Element)
			elif Change == "Subtract":
				Character9_Enemies.erase(Element)
	if Character == 9:
		if List == "Belongnings":
			if Change == "Add":
				Character10_Belongings.append(Element)
			elif Change == "Subtract":
				Character10_Belongings.erase(Element)
		if List == "Friends":
			if Change == "Add":
				Character10_Friends.append(Element)
			elif Change == "Subtract":
				Character10_Friends.erase(Element)
		if List == "Enemies":
			if Change == "Add":
				Character10_Enemies.append(Element)
			elif Change == "Subtract":
				Character10_Enemies.erase(Element)

func BruteForceVariableGetter(Character, Element):
	if Character == 0:
		if Element == "Health":
			return Character1_Health
		elif Element == "Sanity":
			return Character1_Sanity
		elif Element == "Might":
			return Character1_Might
		elif Element == "Kills":
			return Character1_Kills
	elif Character == 1:
		if Element == "Health":
			return Character2_Health
		elif Element == "Sanity":
			return Character2_Sanity
		elif Element == "Might":
			return Character2_Might
		elif Element == "Kills":
			return Character2_Kills
	elif Character == 2:
		if Element == "Health":
			return Character3_Health
		elif Element == "Sanity":
			return Character3_Sanity
		elif Element == "Might":
			return Character3_Might
		elif Element == "Kills":
			return Character3_Kills
	elif Character == 3:
		if Element == "Health":
			return Character4_Health
		elif Element == "Sanity":
			return Character4_Sanity
		elif Element == "Might":
			return Character4_Might
		elif Element == "Kills":
			return Character4_Kills
	elif Character == 4:
		if Element == "Health":
			return Character5_Health
		elif Element == "Sanity":
			return Character5_Sanity
		elif Element == "Might":
			return Character5_Might
		elif Element == "Kills":
			return Character5_Kills
	elif Character == 5:
		if Element == "Health":
			return Character6_Health
		elif Element == "Sanity":
			return Character6_Sanity
		elif Element == "Might":
			return Character6_Might
		elif Element == "Kills":
			return Character6_Kills
	elif Character == 6:
		if Element == "Health":
			return Character7_Health
		elif Element == "Sanity":
			return Character7_Sanity
		elif Element == "Might":
			return Character7_Might
		elif Element == "Kills":
			return Character7_Kills
	elif Character == 7:
		if Element == "Health":
			return Character8_Health
		elif Element == "Sanity":
			return Character8_Sanity
		elif Element == "Might":
			return Character8_Might
		elif Element == "Kills":
			return Character8_Kills
	elif Character == 8:
		if Element == "Health":
			return Character9_Health
		elif Element == "Sanity":
			return Character9_Sanity
		elif Element == "Might":
			return Character9_Might
		elif Element == "Kills":
			return Character9_Kills
	elif Character == 9:
		if Element == "Health":
			return Character10_Health
		elif Element == "Sanity":
			return Character10_Sanity
		elif Element == "Might":
			return Character10_Might
		elif Element == "Kills":
			return Character10_Kills

func BruteForceArrayGetter(Character, Element):
	if Character == 0:
		if Element == "Belongings":
			return Character1_Belongings
		elif Element == "Friends":
			return Character1_Friends
		elif Element == "Enemies":
			return Character1_Enemies
	if Character == 1:
		if Element == "Belongings":
			return Character2_Belongings
		elif Element == "Friends":
			return Character2_Friends
		elif Element == "Enemies":
			return Character2_Enemies
	if Character == 2:
		if Element == "Belongings":
			return Character3_Belongings
		elif Element == "Friends":
			return Character3_Friends
		elif Element == "Enemies":
			return Character3_Enemies
	if Character == 3:
		if Element == "Belongings":
			return Character4_Belongings
		elif Element == "Friends":
			return Character4_Friends
		elif Element == "Enemies":
			return Character4_Enemies
	if Character == 4:
		if Element == "Belongings":
			return Character5_Belongings
		elif Element == "Friends":
			return Character5_Friends
		elif Element == "Enemies":
			return Character5_Enemies
	if Character == 5:
		if Element == "Belongings":
			return Character6_Belongings
		elif Element == "Friends":
			return Character6_Friends
		elif Element == "Enemies":
			return Character6_Enemies
	if Character == 6:
		if Element == "Belongings":
			return Character7_Belongings
		elif Element == "Friends":
			return Character7_Friends
		elif Element == "Enemies":
			return Character7_Enemies
	if Character == 7:
		if Element == "Belongings":
			return Character8_Belongings
		elif Element == "Friends":
			return Character8_Friends
		elif Element == "Enemies":
			return Character8_Enemies
	if Character == 8:
		if Element == "Belongings":
			return Character9_Belongings
		elif Element == "Friends":
			return Character9_Friends
		elif Element == "Enemies":
			return Character9_Enemies
	if Character == 9:
		if Element == "Belongings":
			return Character10_Belongings
		elif Element == "Friends":
			return Character10_Friends
		elif Element == "Enemies":
			return Character10_Enemies
