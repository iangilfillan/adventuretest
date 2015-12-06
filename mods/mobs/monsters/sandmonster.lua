mobs:register_mob("mobs:sand_monster", {
	type = "monster",
	hp_min = 4,
	hp_max = 20,
	exp_min = 1,
	exp_max = 65,
	collisionbox = {-0.4, -0.01, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	mesh = "mobs_sand_monster.x",
	textures = {"mobs_sand_monster.png"},
	visual_size = {x=8,y=8},
	makes_footstep_sound = true,
	view_range = 15,
	walk_velocity = 1.5,
	run_velocity = 4.5,
	damage = 1,
	drops = {
	},
	light_resistant = true,
	armor = 100,
	drawtype = "front",
	water_damage = 3,
	lava_damage = 1,
	light_damage = 0,
	attack_type = "dogfight",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 39,
		walk_start = 41,
		walk_end = 72,
		run_start = 74,
		run_end = 105,
		punch_start = 74,
		punch_end = 105,
	},
	jump = true,
	sounds = {
		attack = "mob_attack",
		death = "mob_death2",
	},
	step = 0.5,
	avoid_nodes = {"default:water_source","default:water_flowing","default:lava_source","default:lava_flowing","campfire:campfire_burning","fire:basic_flame"},
	avoid_range = 12,
})
mobs:register_spawn("mobs:sand_monster", {"default:sand"}, 20, -1, 8000, 4, 31000)
mobs:register_spawn("mobs:sand_monster", {"default:desert_sand"}, 20, -1, 4000, 4, 31000)
