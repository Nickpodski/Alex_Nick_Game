extends KinematicBody2D

export (int) var speed = 200
var velos = Vector2()
func getInput():
	velos = Vector2()
	if Input.is_action_pressed("ui_right"):
		velos.x += 1
	if Input.is_action_pressed("ui_left"):
		velos.x -= 1
	if Input.is_action_pressed("ui_up"):
		velos.y -= 1
	if Input.is_action_pressed("ui_down"):
		velos.y += 1
	velos = velos.normalized() * speed

func _physics_process(delta):
	getInput()
	move_and_slide(velos)
