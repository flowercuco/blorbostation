/obj/machinery/vending/sandboxvend
	name = "\improper SandboxVend"
	desc = "Free tools to help you sandbox."
	icon_state = "MagiVend"
	panel_type = "panel10"
	product_slogans = "You're gaming right now!;Tee-hee!"
	vend_reply = "Wahoo!;Weehee!;Yeehaw!;Woohoo!;Yahoo!;Yippee!;Yayayayayay!"
	product_ads = "Video games!;Find your true love here!;Slap it up!;It's all free!;Trans your gender!"
	products = list(
		/obj/item/card/id/advanced/gold/captains_spare = 999,
		/obj/item/reagent_containers/cup/bottle/potion/flight = 999,
		/obj/item/slimepotion/genderchange = 999,
		/obj/item/slimepotion/transference = 999,
		/obj/item/storage/backpack/holding = 999,
		/obj/item/clothing/gloves/color/chief_engineer = 999,
		/obj/item/debug/omnitool = 999,
		/obj/item/construction/rcd/combat/admin = 999,
		/obj/item/construction/rld/debug = 999,
		/obj/item/pipe_dispenser = 999,
		/obj/item/storage/part_replacer/bluespace/tier4 = 999,
		/obj/item/storage/box/material = 999,
		/obj/item/choice_beacon/music = 999,
		/obj/item/choice_beacon/ingredient = 999,
		/obj/item/toy/crayon/spraycan/infinite = 999,
		/obj/item/stack/spacecash/c1000 = 999
	)
	contraband = list(
		/obj/item/card/emag/bluespace = 999,
		/obj/item/clothing/glasses/debug = 999,
		/obj/item/disk/data/debug = 999,
		/obj/item/disk/surgery/debug = 999,
		/obj/item/disk/tech_disk/debug = 999,
		/obj/item/implanter/spell/teleport = 999,
		/obj/item/implanter/storage = 999,
		/obj/item/implanter/radio/syndicate = 999,
		/obj/item/implanter/sad_trombone = 999,
		/obj/item/autosurgeon/syndicate = 999,
		/obj/item/organ/internal/cyberimp/chest/nutriment/plus = 999,
		/obj/item/organ/internal/cyberimp/mouth/breathing_tube = 999,
		/obj/item/organ/internal/cyberimp/brain/anti_stun = 999
	)
	armor = list(MELEE = 100, BULLET = 100, LASER = 100, ENERGY = 100, BOMB = 100, BIO = 100, FIRE = 100, ACID = 100)
	resistance_flags = INDESTRUCTIBLE
	default_price = 0
	extra_price = 1
	payment_department = ACCOUNT_SRV
	light_mask = "magivend-light-mask"
