class_name ParticipantManager

#Note on statistics:
#All statistics can be considered as modifiers to checks.
#Checks are made during events to determine outcomes.
#Outcomes can be as regular as getting a good night's sleep...
#Or as radical as complete ego death.

var participantSeed: int

var phys: int
var psyc: int
var stim: int

var hygienics: int
var immunology: int
var musculoskeletal: int
var dietetics: int

var stability: int
var certavary: int
var identity: int
var serenity: int

var currency: int
var focus: int
var passion: int
var superordinance: int

func _init():
	#The real meat of the character. Will be modified later down the line. 
	#Introducing save/load would mean I would also need an option to skip this in favor of just loading the last character state.
	participantSeed = randi() % 99999999
	
	hygienics = 3
	immunology = 3
	musculoskeletal = 3
	dietetics = 3
	
	stability = 3
	certainty = 3
	identity = 3
	serenity = 3
	
	currency = 3
	focus = 3
	passion = 3
	superordinance = 3
	
	present_conditions = []
	
	
	seed(participantSeed)

#character load. meant to be called for returning to a game
#func _init(characterfile):

#Rolls a D6.
func roll():
	return randi() % 5 + 1

#handles individual conditions
func doCondition(condition, relevantEffects, relevantVar):
	for var effect in condition:
		for var rlvntfx in relevantEffects:
			if effect["effect_type"] == rlvntfx:
				match effect["effect_type"]:
					"checkMod": if 

#scans a list of conditions
func scanConditions(relevantEffects, relevantVar)		
	
#handles individual events
func doEvent("):

#handles the tick-by-tick changes.
func step():
					
			
