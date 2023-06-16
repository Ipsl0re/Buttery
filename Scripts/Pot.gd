extends Node2D

signal newspread(type)

func _on_cnut_area_entered(area):
	emit_signal("newspread", 1)

func _on_pnut_area_entered(area):
	emit_signal("newspread", 2)

func _on_jam_area_entered(area):
	emit_signal("newspread", 3)

func _on_malo_area_entered(area):
	emit_signal("newspread", 4)
