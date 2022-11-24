extends CheckButton

	
func _on_GraphicsToggle_toggled(toggled):
	if toggled:
		get_viewport().set_msaa(get_viewport().MSAA_16X)
		get_viewport().set_shadow_atlas_size(4096)
#		$"../../Sun/Aura".draw_pass_1.surface_get_material(0).set("refraction_enabled", true)
		
	else:
		get_viewport().set_msaa(get_viewport().MSAA_DISABLED)
#		$"../../Sun/Aura".draw_pass_1.surface_get_material(0).set("refraction_enabled", false)


func _on_ParticlesToggle_toggled(toggled):
	if toggled:
		print("Enabled particles")
		$"../../Sun/Aura".emitting = true
	else:
		print("Disabled particles")
		$"../../Sun/Aura".emitting = false
		


func _on_PausePlanetsToggle_toggled(button_pressed):
	Global.noPhysics = button_pressed
