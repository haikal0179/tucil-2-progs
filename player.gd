extends CharacterBody2D


const SPEED = 80.0
#const JUMP_VELOCITY = -100.0


func get_input():
	var direction := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = direction * SPEED	

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("ui_right"):
		$AnimatedSprite2D.play("sidewalk")
		$AnimatedSprite2D.flip_h = true
	elif Input.is_action_pressed("ui_left"):
		$AnimatedSprite2D.play("sidewalk")
		$AnimatedSprite2D.flip_h = false
	elif Input.is_action_pressed("ui_up"):
		$AnimatedSprite2D.play("upwalk")
	elif Input.is_action_pressed("ui_down"):
		$AnimatedSprite2D.play("downwalk")
	else:
		$AnimatedSprite2D.play("idle")
		
	get_input()
	move_and_slide()
