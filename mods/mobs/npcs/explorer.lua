mobs:register_mob("mobs:explorer",{
	type = "npc",
	hp_min = 30,
	hp_max = 75,
	exp_min = 0,
	exp_max = 0,
	collisionbox = {-0.35,-1.0,-0.35, 0.35,0.8,0.35},
	visual = "mesh",
	mesh = "3d_armor_character.x",
	textures = {"mobs_explorer.png",	
				"3d_armor_trans.png",
				minetest.registered_items["default:pick_steel"].inventory_image,
			},
	visual_size = {x=1, y=1},
	makes_footstep_sound = true,
	view_range = 12,
	walk_velocity = 1.25,
	run_velocity = 4.5,
	damage = 6,
	drops = { },
	armor = 150,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	on_rightclick = function (self, clicker)
		mobs:face_pos(self,clicker:getpos())
		quests.treasure.tell_story(self.object:getpos())
	end,
	walk_chance = 1,
	attack_type = "dogfight",
	animation = {
		speed_normal = 30,
		speed_run = 30,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 200,
		punch_end = 219,
	},
	jump = false,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	attacks_monsters=false,
	peaceful = true,
	group_attack = false,
	step=2,
	blood_amount = 35,
	blood_offset = 0.25,
	rewards = {
		{chance=90, item="default:apple"},
		{chance=60, item="experience:6_exp"},
		{chance=50, item="potions:magic_replenish1"},
	},
	lifetimer = false,
	activity_level = 2,
	avoid_nodes = {"fire:basic_flame","default:water_source","default:water_flowing","default:lava_source","default:lava_flowing"},
	avoid_range = 4,
})
