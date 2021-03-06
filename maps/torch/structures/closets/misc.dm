/decl/closet_appearance/secure_closet/torch/sol
	color = COLOR_BABY_BLUE
	extra_decals = list(
		"stripe_vertical_mid_full" =  COLOR_OFF_WHITE
	)

/decl/closet_appearance/secure_closet/torch/sol/rep
	color = COLOR_BABY_BLUE
	extra_decals = list(
		"stripe_vertical_left_full" =  COLOR_OFF_WHITE,
		"stripe_vertical_right_full" =  COLOR_OFF_WHITE
	)

/decl/closet_appearance/secure_closet/torch/corporate
	color = COLOR_BOTTLE_GREEN
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_OFF_WHITE
	)

/obj/structure/closet/secure_closet/magistrado
	name = "armario del Magistrado"
	req_access = list(access_magistrado)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/sol/rep

/obj/structure/closet/secure_closet/magistrado/WillContain()
	return list(
		/obj/item/device/flash,
		/obj/item/device/radio/headset/magistrado,
		/obj/item/device/radio/headset/magistrado/alt,
		/obj/item/device/camera_film = 2,
		/obj/item/device/tape/random = 3,
		/obj/item/weapon/storage/secure/briefcase,
		/obj/item/weapon/rig/light/internalaffairs,
		/obj/item/device/radio/headset/headset_com,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/under/suit_jacket/really_black,
		/obj/item/clothing/suit/judgerobe,
		/obj/item/clothing/head/peluca1,
		/obj/item/clothing/head/peluca2,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/weapon/gun/energy/mag_secure,
		/obj/item/clothing/glasses/sunglasses/sechud,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger, 50)
	)

/obj/structure/closet/secure_closet/representative
	name = "armario del Representante de Sol Gov"
	req_access = list(access_representative)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/sol/rep

/obj/structure/closet/secure_closet/representative/WillContain()
	return list(
		/obj/item/device/flash,
		/obj/item/device/radio/headset/headset_sgr,
		/obj/item/device/radio/headset/headset_sgr/alt,
		/obj/item/device/camera_film = 2,
		/obj/item/device/tape/random = 3,
		/obj/item/weapon/storage/secure/briefcase,
		/obj/item/weapon/rig/light/internalaffairs,
		/obj/item/clothing/shoes/laceup,
		/obj/item/clothing/under/rank/centcom_officer,
		/obj/item/clothing/head/beret/centcom/officer,
		/obj/item/clothing/glasses/sunglasses/big,
		/obj/item/weapon/cane,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack, /obj/item/weapon/storage/backpack/satchel)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger, 50)
	)

//equipment closets that everyone on the crew or in research can access, for storing things securely

/obj/structure/closet/secure_closet/crew
	name = "crew equipment locker"
	req_access = list(access_solgov_crew)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/sol

/obj/structure/closet/secure_closet/crew/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/weapon/crowbar,
		/obj/item/device/flashlight,
		/obj/item/weapon/storage/box
	)

/obj/structure/closet/secure_closet/crew/research
	name = "research equipment locker"
	req_access = list(access_nanotrasen)
	closet_appearance = /decl/closet_appearance/secure_closet/torch/corporate


/obj/structure/closet/secure_closet/guncabinet/sidearm
	name = "sidearm cabinet"
	req_access = list(list(access_armory,access_emergency_armory,access_hos,access_hop,access_ce,access_cmo,access_rd,access_senadv,access_bridge))

/obj/structure/closet/secure_closet/guncabinet/sidearm/WillContain()
	return list(
			/obj/item/clothing/accessory/storage/holster/thigh = 3,
			/obj/item/weapon/gun/energy/gun/secure = 3,
	)

/obj/structure/closet/secure_closet/guncabinet/sidearm/small
	name = "personal sidearm cabinet"

/obj/structure/closet/secure_closet/guncabinet/sidearm/small/WillContain()
	return list(/obj/item/weapon/gun/energy/gun/small/secure = 4)

/obj/structure/closet/secure_closet/guncabinet/sidearm/combined
	name = "combined sidearm cabinet"

/obj/structure/closet/secure_closet/guncabinet/sidearm/combined/WillContain()
	return list(
		/obj/item/weapon/storage/belt/holster/general = 3,
		/obj/item/weapon/gun/energy/gun/secure = 3
	)

/obj/structure/closet/secure_closet/guncabinet/PPE
	name = "Bridge primary cabinet"
	req_access = list(list(access_armory,access_emergency_armory,access_hos,access_hop,access_ce,access_cmo,access_rd,access_senadv,access_bridge))

/obj/structure/closet/secure_closet/guncabinet/PPE/WillContain()
	return list(
		/obj/item/clothing/suit/armor/pcarrier/medium/command = 4,
		/obj/item/clothing/head/helmet/solgov/command = 4
	)
