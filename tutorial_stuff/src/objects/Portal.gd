tool
extends Area2D

onready var anim_player: AnimationPlayer = $AnimationPlayer # this means the same as get_note("AnimationPlaer")
export var next_scene: PackedScene


func _on_body_entered(body: Node) -> void:
	teleport()

func _get_configuration_warning() -> String:
	return "PLEASE SELECT NEW SCENE" if not next_scene else ""

func teleport() -> void:
	anim_player.play("fade_to_black")
	yield(anim_player, "animation_finished")
	get_tree().change_scene_to(next_scene)

