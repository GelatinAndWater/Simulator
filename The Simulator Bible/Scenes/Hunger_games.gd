extends Control

#Irrelavant variables 🙈
var rng = RandomNumberGenerator.new()

#Character1
var Character1_Name = "Louis"
var Character1_Health = 10
var Character1_Sanity = 10
var Character1_Might = 10
var Character1_Kills = 0
var Character1_Hunger = 10
var Character1_Belongings = []
var Character1_Enemies =[]
var Character1_Friends = []
var Character1_Traits = []

#Character2
var Character2_Name = "Riley"
var Character2_Health = 10
var Character2_Sanity = 10
var Character2_Might = 10
var Character2_Kills = 0
var Character2_Hunger = 10
var Character2_Belongings = []
var Character2_Enemies =[]
var Character2_Friends = []
var Character2_Traits = []

#Character3
var Character3_Name = "Daniel"
var Character3_Health = 10
var Character3_Sanity = 10
var Character3_Might = 10
var Character3_Kills = 0
var Character3_Hunger = 10
var Character3_Belongings = []
var Character3_Enemies =[]
var Character3_Friends = []
var Character3_Traits = []

#Character4
var Character4_Name = "Aska"
var Character4_Health = 10
var Character4_Sanity = 10
var Character4_Might = 10
var Character4_Kills = 0
var Character4_Hunger = 10
var Character4_Belongings = []
var Character4_Enemies =[]
var Character4_Friends = []
var Character4_Traits = []

#Character5
var Character5_Name = "Jake"
var Character5_Health = 10
var Character5_Sanity = 10
var Character5_Might = 10
var Character5_Kills = 0
var Character5_Hunger = 10
var Character5_Belongings = []
var Character5_Enemies =[]
var Character5_Friends = []
var Character5_Traits = []

#Character6
var Character6_Name = "Ahan"
var Character6_Health = 10
var Character6_Sanity = 10
var Character6_Might = 10
var Character6_Kills = 0
var Character6_Hunger = 10
var Character6_Belongings = []
var Character6_Enemies =[]
var Character6_Friends = []
var Character6_Traits = []

#Character7
var Character7_Name = "Luke"
var Character7_Health = 10
var Character7_Sanity = 10
var Character7_Might = 10
var Character7_Kills = 0
var Character7_Hunger = 10
var Character7_Belongings = []
var Character7_Enemies =[]
var Character7_Friends = []
var Character7_Traits = []

#Character8
var Character8_Name = "Mr Guck"
var Character8_Health = 10
var Character8_Sanity = 10
var Character8_Might = 10
var Character8_Kills = 0
var Character8_Hunger = 10
var Character8_Belongings = []
var Character8_Enemies =[]
var Character8_Friends = []
var Character8_Traits = []

#Character9
var Character9_Name = "Mr Dawson"
var Character9_Health = 10
var Character9_Sanity = 10
var Character9_Might = 10
var Character9_Kills = 0
var Character9_Hunger = 10
var Character9_Belongings = []
var Character9_Enemies =[]
var Character9_Friends = []
var Character9_Traits = []

#Character10
var Character10_Name = "Jesus"
var Character10_Health = 10
var Character10_Sanity = 10
var Character10_Might = 10
var Character10_Kills = 0
var Character10_Hunger = 10
var Character10_Belongings = []
var Character10_Enemies =[]
var Character10_Friends = []
var Character10_Traits = []

#-------------------------

#Variables 🔢
var listOfCharacterNames = []
var Day = 0
var Night = false
var listOfNumbers = [0,1,2,3,4,5,6,7,8,9]
var listOfNumbersSimulateEventAmount = [1,1,1,1,1,1]

#Temp Varaibles ♻️
var time
var Response = "NULL"
var CharactersToSimulate: int = 10
var SimulateEventAmount: int
var SimulateEventType 
var SimulateRandomNumber
var listOfNumbersTemp
var TempCharacter1
var TempCharacter2
var TempCharacter3
var TempCharacter4
var VarCheckerTemp1
var VarCheckerTemp2

#--------------------

#Connecting Scenes 🌄
const InputResponse = preload("res://Scenes/input_response_Hunger_Game.tscn")

#Connect Nodes 🔗
@onready var history_rows = $Background/MarginContainer/VBoxContainer/Effect/Scroll/HistoryRows

#Start ▶️
func _ready():
	#OML IS THERE AN EASIER WAY 😫
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

#Every Input ♾️
func _on_line_edit_text_submitted(new_text):
	#What I need to do every time (Reset all)
	if Night:
		Night = false
		time = "Day ☀️"
		Day += 1
	else:
		Night = true
		time = "Night 🌑"
	CharactersToSimulate = listOfNumbers.size()
	listOfNumbersTemp = listOfNumbers.duplicate()
	print("Lets Go")
	
	#Actually Starting this
	var input_response = InputResponse.instantiate()
	Response = "------------------------------------------------------------------------------------------"
	
	#For the title
	if Day == 0:
		Response += "\nThe Blood Bath\n"
		BloodBath()
	elif listOfNumbers.size() == 2:
		Response += "\nThe Finale\n"
	else:
		Response +="\nDay - " + str(Day) + " |  Time - " + time + "\n"
		SimulateSeperation()
	
	#Finish all of it off
	input_response.set_text(new_text, Response)
	history_rows.add_child(input_response)

#Filter 📁
func SimulateSeperation():
	var SimulateSeperationVar
	while CharactersToSimulate != 0:
		SimulateEventAmount = listOfNumbersSimulateEventAmount.pick_random()
		if SimulateEventAmount > CharactersToSimulate:
			pass
		else:
			TempCharacter1 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
			if rng.randi_range(2,3) == 1:
				if BruteForceVariableGetter(TempCharacter1,"Health") < 5:
					#Health Event ⚕️
					#HealthEvent()
					pass
				elif BruteForceVariableGetter(TempCharacter1,"Hunger") < 5:
					#Hunger Event 🤤
					#HungerEvent()
					pass
				elif BruteForceVariableGetter(TempCharacter1,"Sanity") < 5:
					#Sanity Event 🧘
					#SanityEvent()
					pass
				elif BruteForceVariableGetter(TempCharacter1,"Might") < 5:
					#Might Event 💪
					#MightEvent()
					pass
			else:
				if Night == false:
					SimulateSeperationVar = rng.randi_range(1,4)
					#Fixing some logic
					if SimulateSeperationVar == 3 && SimulateEventAmount == 1:
						SimulateSeperationVar = 1
					
					if SimulateSeperationVar == 1:
						#Boring Event 🥱
						DescriptiveEvent()
					elif SimulateSeperationVar == 2:
						#Trading Event 🤝
						TradingEvent()
						pass
					elif SimulateSeperationVar == 3:
						#Communication Event 📞
						CommunicationEvent()
						pass
					elif SimulateSeperationVar == 4:
						#Violence Event 💥
						ViolenceEvent()
						pass
			CharactersToSimulate -= SimulateEventAmount

#First Event🩸
func BloodBath():
	while CharactersToSimulate != 0:
		SimulateEventAmount = listOfNumbersSimulateEventAmount.pick_random()
		if SimulateEventAmount > CharactersToSimulate:
			pass
		else:
			if SimulateEventAmount == 1:
				SimulateRandomNumber = rng.randi_range(1,55)
				TempCharacter1 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
				#1 - Nothing Happens
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
				elif SimulateRandomNumber == 8:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs north"
				elif SimulateRandomNumber == 9:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " heads to the sun rising from the east"
				elif SimulateRandomNumber == 10:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " chases birds to the west"
				
				#2 - Gets stuff
				elif SimulateRandomNumber == 11:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets an axe from a chest"
					BruteForceArrayChanger(TempCharacter1, "Axe", "Add", "Belongings")
				elif SimulateRandomNumber == 12:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets an axe from the grass"
					BruteForceArrayChanger(TempCharacter1, "Axe", "Add", "Belongings")
				elif SimulateRandomNumber == 13:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a wooden bow from a sack"
					BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
				elif SimulateRandomNumber == 14:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " finds a bow behind them"
					BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
				elif SimulateRandomNumber == 15:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " rushes over to get a celtic looking bow"
					BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
				elif SimulateRandomNumber == 16:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " grabs a longbow"
					BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
				elif SimulateRandomNumber == 17:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs to get a fishing rod before running away"
					BruteForceArrayChanger(TempCharacter1, "Fishing", "Add", "Belongings")
				elif SimulateRandomNumber == 18:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " dashes away with a fishing gear"
					BruteForceArrayChanger(TempCharacter1, "Fishing", "Add", "Belongings")
				elif SimulateRandomNumber == 19:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " obtains an iron sword in a chest"
					BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
				elif SimulateRandomNumber == 20:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " smuggles a dagger away"
					BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
				elif SimulateRandomNumber == 21:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " snags a very sharp stick"
					BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
				elif SimulateRandomNumber == 22:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs away with a sword"
					BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
				elif SimulateRandomNumber == 23:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a well hidden broadsword"
					BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
				elif SimulateRandomNumber == 24:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs away and picks up a thick stick"
					BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
				elif SimulateRandomNumber == 25:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a baseball bat"
					BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
				elif SimulateRandomNumber == 26:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " dashes to find a leather clawed glove"
					BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
				elif SimulateRandomNumber == 27:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a frying pan"
					BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
				elif SimulateRandomNumber == 28:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " picks up a lead pipe"
					BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
				elif SimulateRandomNumber == 29:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " picks up a wrench"
					BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
				elif SimulateRandomNumber == 30:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a tonfa"
					BruteForceArrayChanger(TempCharacter1, "Defense", "Add", "Belongings")
				elif SimulateRandomNumber == 31:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " goes to a chest and recieves a chainblade"
					BruteForceArrayChanger(TempCharacter1, "Defense", "Add", "Belongings")
				elif SimulateRandomNumber == 32:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a celtic themed shield"
					BruteForceArrayChanger(TempCharacter1, "Defense", "Add", "Belongings")
				elif SimulateRandomNumber == 33:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a round shield"
					BruteForceArrayChanger(TempCharacter1, "Defense", "Add", "Belongings")
				elif SimulateRandomNumber == 34:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a very thick stick"
					BruteForceArrayChanger(TempCharacter1, "Defense", "Add", "Belongings")
				elif SimulateRandomNumber == 35:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " finds bandages"
					BruteForceArrayChanger(TempCharacter1, "Medical", "Add", "Belongings")
				elif SimulateRandomNumber == 36:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a first aid kit"
					BruteForceArrayChanger(TempCharacter1, "Medical", "Add", "Belongings")
				elif SimulateRandomNumber == 37:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a set of medical needles with a strange drug inside"
					BruteForceArrayChanger(TempCharacter1, "Medical", "Add", "Belongings")
				elif SimulateRandomNumber == 38:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " finds a packet of antibiotics"
					BruteForceArrayChanger(TempCharacter1, "Medical", "Add", "Belongings")
				elif SimulateRandomNumber == 39:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " obtains a collection of painkillers"
					BruteForceArrayChanger(TempCharacter1, "Medical", "Add", "Belongings")
				elif SimulateRandomNumber == 40:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " picks up a can of beans"
					BruteForceArrayChanger(TempCharacter1, "Food", "Add", "Belongings")
				elif SimulateRandomNumber == 41:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " finds a tin of honey"
					BruteForceArrayChanger(TempCharacter1, "Food", "Add", "Belongings")
				elif SimulateRandomNumber == 42:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " shoves some nuts into their pocket"
					BruteForceArrayChanger(TempCharacter1, "Food", "Add", "Belongings")
				elif SimulateRandomNumber == 43:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " finds an orange"
					BruteForceArrayChanger(TempCharacter1, "Food", "Add", "Belongings")
				elif SimulateRandomNumber == 44:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets an unlabled tin of food from a chest"
					BruteForceArrayChanger(TempCharacter1, "Food", "Add", "Belongings")
				elif SimulateRandomNumber == 45:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " obtains a bag of vegetables"
					BruteForceArrayChanger(TempCharacter1, "Food", "Add", "Belongings")
				#4 - Death
				elif SimulateRandomNumber == 46:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " jumps off too early and explodes"
					listOfNumbers.erase(TempCharacter1)
				elif SimulateRandomNumber == 47:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " tries to pick up a grenade but explodes in doing so"
					listOfNumbers.erase(TempCharacter1)
				elif SimulateRandomNumber == 48:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs into a lone spear"
					listOfNumbers.erase(TempCharacter1)
				elif SimulateRandomNumber == 49:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " falls into a hemlock bush"
					listOfNumbers.erase(TempCharacter1)
				elif SimulateRandomNumber == 50:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs on a landmine and explodes"
					listOfNumbers.erase(TempCharacter1)
				elif SimulateRandomNumber == 51:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets blown up from a rigged chest"
					listOfNumbers.erase(TempCharacter1)
				elif SimulateRandomNumber == 52:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " panics so badly they die from shock"
					listOfNumbers.erase(TempCharacter1)
				elif SimulateRandomNumber == 53:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs to a chest and gets a sword, and stabs themselves"
					listOfNumbers.erase(TempCharacter1)
				elif SimulateRandomNumber == 54:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " falls over on a rock and gets blunt force trauma to the head"
					listOfNumbers.erase(TempCharacter1)
				elif SimulateRandomNumber == 55:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " falls over before the beginning of the game, and dies"
					listOfNumbers.erase(TempCharacter1)
				listOfNumbersTemp.erase(TempCharacter1)
			elif SimulateEventAmount == 2:
				SimulateRandomNumber = rng.randi_range(1,33)
				TempCharacter1 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
				TempCharacter2 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
				while TempCharacter1 == TempCharacter2:
					TempCharacter2 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
				#2 - Getting Stuff
				if SimulateRandomNumber == 1:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " snatches an axe from " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, "Axe", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 2:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " steals a bow off " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 3:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " steals a fishing rod from " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, "Fishing", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 4:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a sword before " + listOfCharacterNames[TempCharacter2] + " could get it"
					BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 5:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a bat before " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 6:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " takes a shield while " + listOfCharacterNames[TempCharacter2] + " was not looking"
					BruteForceArrayChanger(TempCharacter1, "Defense", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 7:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " snatches some antiseptic off " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, "Health", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 8:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " steals a medical kit from " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, "Health", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 9:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " snatches a tub of chickpeas from " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, "Food", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 10:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " breaks a sword trying to steal it from " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Enemies")
				elif SimulateRandomNumber == 11:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a sword before " + listOfCharacterNames[TempCharacter2] + " could get it"
					BruteForceArrayChanger(TempCharacter1, "Defense", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 12:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a sword that was dropped by " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
				elif SimulateRandomNumber == 13:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " share out some blow darts with " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, "Bow", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
				elif SimulateRandomNumber == 14:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " share out some canned food with " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, "Food", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, "Food", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
				#3 - Social shenanigans
				elif SimulateRandomNumber == 15:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs away with " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
				elif SimulateRandomNumber == 16:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " dashes into a forest behind " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Enemies")
				elif SimulateRandomNumber == 17:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " and " + listOfCharacterNames[TempCharacter2] + " crashes into eachother"
					BruteForceVariableChanger(TempCharacter1, "Health", -1)
					BruteForceVariableChanger(TempCharacter2, "Health", -1)
				elif SimulateRandomNumber == 18:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " helps " + listOfCharacterNames[TempCharacter2] + " escape the Cornucopia"
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
				elif SimulateRandomNumber == 19:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " screams threats to " + listOfCharacterNames[TempCharacter2] + " while they run away"
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
					BruteForceVariableChanger(TempCharacter2, "Sanity", -1)
				#4 - Death
				elif SimulateRandomNumber == 20:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " punches " + listOfCharacterNames[TempCharacter2] + " in their face to get a grenade"
					BruteForceVariableChanger(TempCharacter2, "Health", -2)
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
					BruteForceArrayChanger(TempCharacter1, "Explosive", "Add", "Belongings")
				elif SimulateRandomNumber == 21:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " throws a grenade at the feet of " + listOfCharacterNames[TempCharacter2]
					BruteForceVariableChanger(TempCharacter1, "Kills", 1)
					listOfNumbers.erase(TempCharacter2)
				elif SimulateRandomNumber == 22:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " stabs " + listOfCharacterNames[TempCharacter2]
					BruteForceVariableChanger(TempCharacter1, "Kills", 1)
					listOfNumbers.erase(TempCharacter2)
				elif SimulateRandomNumber == 23:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs into " + listOfCharacterNames[TempCharacter2] + "'s knife"
					BruteForceVariableChanger(TempCharacter2, "Kills", 1)
					listOfNumbers.erase(TempCharacter1)
					BruteForceVariableChanger(TempCharacter2, "Sanity", -1)
				#1 I just can't be asked with the awful way I mapped this out
				elif SimulateRandomNumber == 24:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " sees " + listOfCharacterNames[TempCharacter2] + " and runs away"
				elif SimulateRandomNumber == 25:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " scream's " + listOfCharacterNames[TempCharacter2] + " name and runs away"
				elif SimulateRandomNumber == 26:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " recognises " + listOfCharacterNames[TempCharacter2] + " while headinmg south"
				elif SimulateRandomNumber == 27:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " is shocked by the beauty of " + listOfCharacterNames[TempCharacter2] + " as they run away"
				elif SimulateRandomNumber == 28:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " is horrified by the looks of " + listOfCharacterNames[TempCharacter2] + " during their run to the north"
				elif SimulateRandomNumber == 29:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " questions if they seen " + listOfCharacterNames[TempCharacter2] + " before"
				elif SimulateRandomNumber == 30:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " runs east, but quickly runs west instead as they thought " + listOfCharacterNames[TempCharacter2] + " was following them"
				elif SimulateRandomNumber == 31:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " heads in the same direction as " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 32:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " blushes at the sight of " + listOfCharacterNames[TempCharacter2] + ", but tries to hide it"
				elif SimulateRandomNumber == 33:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " slowly walks away from " + listOfCharacterNames[TempCharacter2] + " as a hopeful manner of respect"
				listOfNumbersTemp.erase(TempCharacter1)
				listOfNumbersTemp.erase(TempCharacter2)
			elif SimulateEventAmount == 3:
				SimulateRandomNumber = rng.randi_range(1,20)
				TempCharacter1 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
				TempCharacter2 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
				TempCharacter3 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
				while TempCharacter1 == TempCharacter2 || TempCharacter2 == TempCharacter3 || TempCharacter1 == TempCharacter3:
					TempCharacter1 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
					TempCharacter2 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
					TempCharacter3 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
				#1 - Nothing Happens
				if SimulateRandomNumber == 1:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + ", " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3] + " charges out of the areana in opposite directions"
				elif SimulateRandomNumber == 2:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + ", " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3] + " charges out of the areana in similiar directions"
				elif SimulateRandomNumber == 3:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + ", " + listOfCharacterNames[TempCharacter2] + " are taken back by the beauty of " + listOfCharacterNames[TempCharacter3]
				elif SimulateRandomNumber == 4:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + ", " + listOfCharacterNames[TempCharacter2] + " are taken back by the uglyness of " + listOfCharacterNames[TempCharacter3]
				elif SimulateRandomNumber == 5:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " watches " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3] + " panic while leaving the Cornucopia"
				#2
				elif SimulateRandomNumber == 6:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + ", " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3] + " distribute some medical supplies"
					BruteForceArrayChanger(TempCharacter1, "Medical", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, "Medical", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter3, "Medical", "Add", "Belongings")
				elif SimulateRandomNumber == 7:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " snatches a bow which " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3] + " were disbuting over"
					BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
					BruteForceArrayChanger(TempCharacter3, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 8:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " steals some food which" + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3] + " were competing for"
					BruteForceArrayChanger(TempCharacter1, "Food", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 9:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " and " + listOfCharacterNames[TempCharacter2] + " were too slow to get an axe, since " + listOfCharacterNames[TempCharacter3] + " ran to it first"
					BruteForceArrayChanger(TempCharacter3, "Axe", "Add", "Belongings")
				elif SimulateRandomNumber == 10:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " and " + listOfCharacterNames[TempCharacter2] + " team up to get some fishing gear off " + listOfCharacterNames[TempCharacter3]
					BruteForceArrayChanger(TempCharacter1, "Fishing", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, "Fishing", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter3, TempCharacter1, "Add", "Enemies")
					BruteForceArrayChanger(TempCharacter3, TempCharacter2, "Add", "Enemies")
				#3
				elif SimulateRandomNumber == 11:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " trips and gets knocked out on a rock, " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3] + " watch in horror."
					BruteForceVariableChanger(TempCharacter1, "Health", -3)
					BruteForceVariableChanger(TempCharacter2, "Sanity", -1)
					BruteForceVariableChanger(TempCharacter3, "Sanity", -1)
				#4
				elif SimulateRandomNumber == 12:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " and " + listOfCharacterNames[TempCharacter2] + " kick and kill " + listOfCharacterNames[TempCharacter3]
					listOfNumbers.erase(TempCharacter3)
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
					BruteForceVariableChanger(TempCharacter1, "Kills",1)
					BruteForceVariableChanger(TempCharacter2, "Kills",1)
				elif SimulateRandomNumber == 13:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " and " + listOfCharacterNames[TempCharacter2] + " failed to stab " + listOfCharacterNames[TempCharacter3]
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter3, TempCharacter1, "Add", "Enemies")
					BruteForceArrayChanger(TempCharacter3, TempCharacter2, "Add", "Enemies")
				elif SimulateRandomNumber == 14:  
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " cracks " + listOfCharacterNames[TempCharacter2] + "'s head and " + listOfCharacterNames[TempCharacter3] + "'s backbone"
					listOfNumbers.erase(TempCharacter2)
					listOfNumbers.erase(TempCharacter3)
					BruteForceVariableChanger(TempCharacter1, "Kills",2)
				elif SimulateRandomNumber == 15: 
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets hacked at the neck by " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3]
					listOfNumbers.erase(TempCharacter1)
					BruteForceVariableChanger(TempCharacter2, "Kills",1)
					BruteForceVariableChanger(TempCharacter3, "Kills",1)
				elif SimulateRandomNumber == 16:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " helps " + listOfCharacterNames[TempCharacter2] + " escape the wrath of " + listOfCharacterNames[TempCharacter3] + "'s sword"
					BruteForceVariableChanger(TempCharacter2, "Sanity",-1)
					BruteForceVariableChanger(TempCharacter1, "Health", -1)
					BruteForceArrayChanger(TempCharacter3, "Sword", "Add", "Belongings")
					BruteForceArrayChanger(TempCharacter2, TempCharacter2, "Add", "Friends")
				elif SimulateRandomNumber == 17:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " headshots " + listOfCharacterNames[TempCharacter2] + " while they were running with " + listOfCharacterNames[TempCharacter3]
					listOfNumbers.erase(TempCharacter2)
					BruteForceVariableChanger(TempCharacter3, "Sanity",-1)
					BruteForceVariableChanger(TempCharacter1, "Kills", 1)
				elif SimulateRandomNumber == 18:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " shoots " + listOfCharacterNames[TempCharacter2] + " and " + listOfCharacterNames[TempCharacter3]
					listOfNumbers.erase(TempCharacter2)
					listOfNumbers.erase(TempCharacter3)
					BruteForceVariableChanger(TempCharacter1, "Kills", 2)
				elif SimulateRandomNumber == 19:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " heroically protects " + listOfCharacterNames[TempCharacter2] + " from " + listOfCharacterNames[TempCharacter3] + "'s dagger and dies doing so"
					listOfNumbers.erase(TempCharacter1)
					BruteForceVariableChanger(TempCharacter1, "Kills", 1)
				elif SimulateRandomNumber == 20:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " chaotically kills " + listOfCharacterNames[TempCharacter2] + " while they were killing " + listOfCharacterNames[TempCharacter3]
					listOfNumbers.erase(TempCharacter2)
					listOfNumbers.erase(TempCharacter3)
					BruteForceVariableChanger(TempCharacter1, "Sanity",-1)
					BruteForceVariableChanger(TempCharacter1, "Kills", 1)
					BruteForceVariableChanger(TempCharacter2, "Kills", 1)
				listOfNumbersTemp.erase(TempCharacter1)
				listOfNumbersTemp.erase(TempCharacter2)
				listOfNumbersTemp.erase(TempCharacter3)
			CharactersToSimulate -= SimulateEventAmount

#Boring Event 🥱
func DescriptiveEvent():
	if SimulateEventAmount == 1:
		SimulateRandomNumber = rng.randi_range(1,25)
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

#Trading Event 🤝
func TradingEvent():
	if SimulateEventAmount == 1:
		SimulateRandomNumber = rng.randi_range(1,10)
		if SimulateRandomNumber == 1:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " creates a makeshift axe"
			BruteForceArrayChanger(TempCharacter1, "Axe", "Add", "Belongings")
		elif SimulateRandomNumber == 2:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets a stick and some nettles to make a bow"
			BruteForceArrayChanger(TempCharacter1, "Bow", "Add", "Belongings")
		elif SimulateRandomNumber == 3:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " produces a makeshift fishing rod"
			BruteForceArrayChanger(TempCharacter1, "Fishing", "Add", "Belongnings")
		elif SimulateRandomNumber == 4:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " builds a wooden sword" 
			BruteForceArrayChanger(TempCharacter1, "Sword", "Add", "Belongings")
		elif SimulateRandomNumber == 5:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " crafts a cudgel with a massive stick and some thorns" 
			BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
		elif SimulateRandomNumber == 6:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " crafts a cudgel with a massive stick and some thorns" 
			BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
		elif SimulateRandomNumber == 7:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " crafts a cudgel with a massive stick and some thorns" 
			BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
		elif SimulateRandomNumber == 8:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " crafts a cudgel with a massive stick and some thorns" 
			BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
		elif SimulateRandomNumber == 9:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " crafts a cudgel with a massive stick and some thorns" 
			BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")
		elif SimulateRandomNumber == 10:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " crafts a cudgel with a massive stick and some thorns" 
			BruteForceArrayChanger(TempCharacter1, "Melee", "Add", "Belongings")


#Communication Event 📞
func CommunicationEvent():
	if SimulateEventAmount == 2:
		if rng.randi_range(1,2) == 1:
			VarCheckerTemp2 = BruteForceArrayGetter(TempCharacter1, "Friends") 
			if VarCheckerTemp2.size() > 0 && rng.randi_range(1,3) != 1:
				TempCharacter2 = VarCheckerTemp2.pick_random()
				SimulateRandomNumber = rng.randi_range(1,10)
				
				if SimulateRandomNumber == 1:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " finds an apple and shares it with " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 2:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " goes on a walk with " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 3:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " talks about the weather with " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 4:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " comforts " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 5:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " climbs trees with " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 6:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " discusses winning with " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 7:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " and " + listOfCharacterNames[TempCharacter2] + " plays in a nearby river"
				elif SimulateRandomNumber == 8:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " complains about life with " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 9:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " and " + listOfCharacterNames[TempCharacter2] + " talk about food"
				elif SimulateRandomNumber == 10:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " compliments " + listOfCharacterNames[TempCharacter2] + "'s looks"
			else:
				SimulateRandomNumber = rng.randi_range(1,5)
				
				TempCharacter2 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
				if SimulateRandomNumber == 1:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gives a wild flower as a gift to " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
				elif SimulateRandomNumber == 2:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gifts a pretty rock to " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
				elif SimulateRandomNumber == 3:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets in an alliance with " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
				elif SimulateRandomNumber == 4:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " talks about how they have similiar interests with " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
				elif SimulateRandomNumber == 5:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " asks to be friends with " + listOfCharacterNames[TempCharacter2] + "... and they said yes"
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Friends")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Friends")
		else:
			VarCheckerTemp2 = BruteForceArrayGetter(TempCharacter1, "Enemies") 
			if VarCheckerTemp2.size() > 0 && rng.randi_range(1,3) != 1:
				SimulateRandomNumber = rng.randi_range(1,10)
				TempCharacter2 = VarCheckerTemp2.pick_random()
				
				if SimulateRandomNumber == 1:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " uncomfortably keeps bumping into eachother " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 2:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " screams a slur at " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 3:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " shouts out death threats at " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 4:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " realises they now have crippling depression and blames it on " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 5:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " refers " + listOfCharacterNames[TempCharacter2] + " as a personification of incest"
				elif SimulateRandomNumber == 6:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " calls " + listOfCharacterNames[TempCharacter2] + " a potato"
				elif SimulateRandomNumber == 7:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " mocks " + listOfCharacterNames[TempCharacter2] + "'s voice"
				elif SimulateRandomNumber == 8:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " continuously scares " + listOfCharacterNames[TempCharacter2]
				elif SimulateRandomNumber == 9:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets into " + listOfCharacterNames[TempCharacter2] + "'s anxiety"
				elif SimulateRandomNumber == 10:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " tells " + listOfCharacterNames[TempCharacter2] + " to jump and die"
			else:
				SimulateRandomNumber = rng.randi_range(1,5)
				TempCharacter2 = listOfNumbersTemp[rng.randi_range(0,(CharactersToSimulate-1))]
				
				if SimulateRandomNumber == 1:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " refuses to befriend " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 2:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " accidentaly tells " + listOfCharacterNames[TempCharacter2] + " their plan of killing them"
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Enemies")
				elif SimulateRandomNumber == 3:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " unknowingly insults " + listOfCharacterNames[TempCharacter2]
					BruteForceArrayChanger(TempCharacter2, TempCharacter1, "Add", "Enemies")
				elif SimulateRandomNumber == 4:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " blames " + listOfCharacterNames[TempCharacter2] + " for all of their issues"
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Enemies")
				elif SimulateRandomNumber == 5:
					Response += "\n" + listOfCharacterNames[TempCharacter1] + " gives a theoretical scenario and " + listOfCharacterNames[TempCharacter2] + "'s response makes " + listOfCharacterNames[TempCharacter1] + " cry"
					BruteForceArrayChanger(TempCharacter1, TempCharacter2, "Add", "Enemies")

#Violence Event 💥
func ViolenceEvent():
	if SimulateEventAmount == 1:
		SimulateRandomNumber = rng.randi_range(1,10)
		if SimulateRandomNumber == 1:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " falls over and hurts himself"
			BruteForceVariableChanger(TempCharacter1,"Health",-2)
		elif SimulateRandomNumber == 2:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets their head hurt by a falling stick"
			BruteForceVariableChanger(TempCharacter1,"Health",-1)
		elif SimulateRandomNumber == 3:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " twists their ankle"
			BruteForceVariableChanger(TempCharacter1,"Health",-2)
		elif SimulateRandomNumber == 4:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " starts to feel nauseous"
			BruteForceVariableChanger(TempCharacter1,"Health",-1)
		elif SimulateRandomNumber == 5:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " questions if they are having heatstroke"
			BruteForceVariableChanger(TempCharacter1,"Health",-2)
		elif SimulateRandomNumber == 6:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " becomes blindsighted that they are bleeding"
			BruteForceVariableChanger(TempCharacter1,"Health",-3)
		elif SimulateRandomNumber == 7:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets stung by something under a pile of leaves"
			BruteForceVariableChanger(TempCharacter1,"Health",-2)
		elif SimulateRandomNumber == 8:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets crushed by a falling tree"
			listOfNumbers.erase(TempCharacter1)
		elif SimulateRandomNumber == 9:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " gets decapitated by a wild deer"
			listOfNumbers.erase(TempCharacter1)
		elif SimulateRandomNumber == 10:
			Response += "\n" + listOfCharacterNames[TempCharacter1] + " stupidly falls off a cliff"
			listOfNumbers.erase(TempCharacter1)

#Change Vars within characters 🤫
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
		elif Element == "Hunger":
			Character1_Hunger += Change
	elif Character == 1:
		if Element == "Health":
			Character2_Health += Change
		elif Element == "Sanity":
			Character2_Sanity += Change
		elif Element == "Might":
			Character2_Might += Change
		elif Element == "Kills":
			Character2_Kills += Change
		elif Element == "Hunger":
			Character2_Hunger += Change
	elif Character == 2:
		if Element == "Health":
			Character3_Health += Change
		elif Element == "Sanity":
			Character3_Sanity += Change
		elif Element == "Might":
			Character3_Might += Change
		elif Element == "Kills":
			Character3_Kills += Change
		elif Element == "Hunger":
			Character3_Hunger += Change
	elif Character == 3:
		if Element == "Health":
			Character4_Health += Change
		elif Element == "Sanity":
			Character4_Sanity += Change
		elif Element == "Might":
			Character4_Might += Change
		elif Element == "Kills":
			Character4_Kills += Change
		elif Element == "Hunger":
			Character4_Hunger += Change
	elif Character == 4:
		if Element == "Health":
			Character5_Health += Change
		elif Element == "Sanity":
			Character5_Sanity += Change
		elif Element == "Might":
			Character5_Might += Change
		elif Element == "Kills":
			Character5_Kills += Change
		elif Element == "Hunger":
			Character5_Hunger += Change
	if Character == 5:
		if Element == "Health":
			Character6_Health += Change
		elif Element == "Sanity":
			Character6_Sanity += Change
		elif Element == "Might":
			Character6_Might += Change
		elif Element == "Kills":
			Character6_Kills += Change
		elif Element == "Hunger":
			Character6_Hunger += Change
	if Character == 6:
		if Element == "Health":
			Character7_Health += Change
		elif Element == "Sanity":
			Character7_Sanity += Change
		elif Element == "Might":
			Character7_Might += Change
		elif Element == "Kills":
			Character7_Kills += Change
		elif Element == "Hunger":
			Character7_Hunger += Change
	if Character == 7:
		if Element == "Health":
			Character8_Health += Change
		elif Element == "Sanity":
			Character8_Sanity += Change
		elif Element == "Might":
			Character8_Might += Change
		elif Element == "Kills":
			Character8_Kills += Change
		elif Element == "Hunger":
			Character8_Hunger += Change
	if Character == 8:
		if Element == "Health":
			Character9_Health += Change
		elif Element == "Sanity":
			Character9_Sanity += Change
		elif Element == "Might":
			Character9_Might += Change
		elif Element == "Kills":
			Character9_Kills += Change
		elif Element == "Hunger":
			Character9_Hunger += Change
	if Character == 9:
		if Element == "Health":
			Character10_Health += Change
		elif Element == "Sanity":
			Character10_Sanity += Change
		elif Element == "Might":
			Character10_Might += Change
		elif Element == "Kills":
			Character10_Kills += Change
		elif Element == "Hunger":
			Character10_Hunger += Change

#Change Arrays within characters 🤫
func BruteForceArrayChanger(Character, Element, Change, List):
	if Character == 0:
		if List == "Belongings":
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
	elif Character == 1:
		if List == "Belongings":
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
	elif Character == 2:
		if List == "Belongings":
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
	elif Character == 3:
		if List == "Belongings":
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
	elif Character == 4:
		if List == "Belongings":
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
	elif Character == 5:
		if List == "Belongings":
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
	elif Character == 6:
		if List == "Belongings":
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
	elif Character == 7:
		if List == "Belongings":
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
	elif Character == 8:
		if List == "Belongings":
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
	elif Character == 9:
		if List == "Belongings":
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

#Gets Vars within characters 🤫
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

#Gets Arrays within characetrs 🤫
func BruteForceArrayGetter(Character, Element):
	if Character == 0:
		if Element == "Belongings":
			return Character1_Belongings
		elif Element == "Friends":
			return Character1_Friends
		elif Element == "Enemies":
			return Character1_Enemies
	elif Character == 1:
		if Element == "Belongings":
			return Character2_Belongings
		elif Element == "Friends":
			return Character2_Friends
		elif Element == "Enemies":
			return Character2_Enemies
	elif Character == 2:
		if Element == "Belongings":
			return Character3_Belongings
		elif Element == "Friends":
			return Character3_Friends
		elif Element == "Enemies":
			return Character3_Enemies
	elif Character == 3:
		if Element == "Belongings":
			return Character4_Belongings
		elif Element == "Friends":
			return Character4_Friends
		elif Element == "Enemies":
			return Character4_Enemies
	elif Character == 4:
		if Element == "Belongings":
			return Character5_Belongings
		elif Element == "Friends":
			return Character5_Friends
		elif Element == "Enemies":
			return Character5_Enemies
	elif Character == 5:
		if Element == "Belongings":
			return Character6_Belongings
		elif Element == "Friends":
			return Character6_Friends
		elif Element == "Enemies":
			return Character6_Enemies
	elif Character == 6:
		if Element == "Belongings":
			return Character7_Belongings
		elif Element == "Friends":
			return Character7_Friends
		elif Element == "Enemies":
			return Character7_Enemies
	elif Character == 7:
		if Element == "Belongings":
			return Character8_Belongings
		elif Element == "Friends":
			return Character8_Friends
		elif Element == "Enemies":
			return Character8_Enemies
	elif Character == 8:
		if Element == "Belongings":
			return Character9_Belongings
		elif Element == "Friends":
			return Character9_Friends
		elif Element == "Enemies":
			return Character9_Enemies
	elif Character == 9:
		if Element == "Belongings":
			return Character10_Belongings
		elif Element == "Friends":
			return Character10_Friends
		elif Element == "Enemies":
			return Character10_Enemies
