extends Area2D

func _ready():
	
	# Associate the "area_entered" signal to the "on_area_entered" function
	# The "on_area_entered" function will trigger everytime anything with an Area2D node
	# will enter this Area2D.
	self.connect("area_entered", self, "on_area_entered")
	pass

# custom function to handle the "area_entered" signal
func on_area_entered(value):
	
	# access the "LabelWin" label node then make it visible to the player
	get_parent().get_node("LabelWin").visible = true
	
	# the line below will remove this "Goal" Area2D node from the game
	self.queue_free()