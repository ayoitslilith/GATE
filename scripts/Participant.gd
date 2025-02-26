class_name Participant

#Note on statistics:
#All statistics affect some checks in some way.
#Checks are made during events to determine outcomes.
#Outcomes can be as regular as getting a good night's sleep...
#Or as radical as the annihilation of the self.

var participantSeed: int

var phys: float
var psyc: float
var stim: float

var hygienics: float
var immunology: float
var musculoskeletal: float
var dietetics: float

var stability: float
var certainty: float
var identity: float
var serenity: float

var currency: float
var focus: float
var passion: float
var superordinance: float

var step: int
var time: float
var timeSinceStep: float
var timer: int
var day: int

var present_conditions

#signals for applying things here
#allows for modular additions onto the overall framework
signal runEffect(specifications)

func _ready(character, timerInput: int):
	if character == null:
		#The real meat of the character. Will be modified later down the line. 
		#Introducing save/load would mean I would also need an option to skip this in favor of just loading the last character state.
		participantSeed = randi() % 99999999
		
		hygienics = 6
		immunology = 6
		musculoskeletal = 6
		dietetics = 6
		
		stability = 6
		certainty = 6
		identity = 6
		serenity = 6
		
		currency = 6
		focus = 6
		passion = 6
		superordinance = 6
		
		present_conditions = []
		
		step = 0
		time = 0
		timeSinceStep = 0
		timer = timerInput
	else:
		pass
	
	seed(participantSeed)

	
#Rolls a D6.
func roll():
	return randi() % 5 + 1

func doEffectsAnd(tags):
	for condition in present_conditions:
		for effect in condition["effects"]:
			var success = true
			for tag in tags:
				if effect["tags"].has(tag):
					pass
				else:
					success = false
					break
			if success == true:
				pass #the idea is to fill this in with signal emits

func doEffectsOr(tags):
	pass

func doConditions(tags):
	pass

#handles the tick-by-tick changes.
func stepper():
	
	
	pass
					
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time += 1 * delta
	timeSinceStep += 1 * delta
	if timeSinceStep >= timer:
		stepper()
		timeSinceStep -= timer
		while timeSinceStep >= timer:
			stepper()
			timeSinceStep -= timer
			time -= timer
		
	
