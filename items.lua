game_items = {	--- items never randomly generated
				{name = 'Ruined Loaf of Bread', edible = true, cook = false, nutrition = 35, char = '%', prob = 0},
				{name = 'Ruined Rice Ball', edible = true, cook = false, nutrition = 5, char = '%', prob = 0},
				{name = 'Ruined Fish', edible = true, cook = false, nutrition = 15, char = '%', prob = 0},
				{name = 'Cooked Loaf of Bread', edible = true, cook = false, nutrition = 200, char = '%', prob = 0},
				{name = 'Cooked Rice Ball', edible = true, cook = false, nutrition = 150, char = '%', prob = 0},
				{name = 'Cooked Fish', edible = true, cook = false, nutrition = 175, char = '%', prob = 0},
				--- items randomly generated
				{name = 'Mini Hakkero', slot = 'hand', damage = 100, char = ')', prob = 1},
				{name = 'Miko Outfit', slot = 'torso', armor = 2, char = ']', prob = 20},
				{name = 'Silk Dress', slot = 'legs', armor = 3, char = ']', prob = 30},
				{name = 'Maid Outfit', slot = 'torso', armor = 3, char = ']', prob = 40},
				{name = 'Potion of Gain', quaff = true, potion = true, pname = 'Unknown Potion', char = '!', prob = 42, affect = function () local dice = math.random(1, 4) local stat = 'str' if dice == 2 then stat = 'dex' elseif dice == 3 then stat = 'int' elseif dice == 4 then stat = 'con' end player_stats[stat] = player_stats[stat] + 1 end, message = 'You feel like you\'ed gained something.'},
				{name = 'Potion of Loss', quaff = true, potion = true, pname = 'Unknown Potion', char = '!', prob = 42, affect = function () local dice = math.random(1, 4) local stat = 'str' if dice == 2 then stat = 'dex' elseif dice == 3 then stat = 'int' elseif dice == 4 then stat = 'con' end player_stats[stat] = player_stats[stat] - 1 end, message = 'You feel like you\'ed lost something important.'},
				{name = 'Robe', slot = 'torso', armor = 2, char = ']', prob = 55},
				{name = 'Fish', edible = true, cook = true, nutrition = 100, char = '%', prob = 60},
				{name = 'Broom', slot = 'hand', damage = 10, char = ')', prob = 65},
				{name = 'Cloth Skirt', slot = 'legs', armor = 2, char = ']', prob = 70},
				{name = 'Cloth Shirt', slot = 'torso', armor = 1, char = ']', prob = 75},
				{name = 'Gohei Stick', slot = 'hand', damage = 15, char = ')', prob = 80},
				{name = 'Potion of Healing', quaff = true, potion = true, pname = 'Unknown Potion', char = '!', prob = 83, affect = function () player:heal(100) end, message = "You feel better."},
				{name = 'Rice Ball', edible = true, cook = true, nutrition = 50, char = '%', prob = 86},
				{name = 'Cloth Pants', slot = 'legs', armor = 1, char = ']', prob = 89},
				{name = 'Leather Vest', slot = 'torso', armor = 2, char = ']', prob = 90},
				{name = 'Dagger', slot = 'hand', damage = 18, char = ')', prob = 91},
				{name = 'Gold', char = '$', gold = math.random(15, 25), prob = 250},
				{name = 'Piece of Junk', char = ';', prob = 300},
				{name = 'Loaf of Bread', edible = true, cook = true, nutrition = 135, char = '%', prob = 300},				
		}
		
known_potions = {}
known_scrolls = {}