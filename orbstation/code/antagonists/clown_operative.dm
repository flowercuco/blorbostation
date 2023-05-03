/datum/job/clown_operative/lone
	title = ROLE_CLOWN_LONE_OPERATIVE

// Antagonist datum for lone clown operative
/datum/antagonist/nukeop/clownop/lone
	name = "Lone Clown Operative"
	nukeop_outfit = /datum/outfit/syndicate/clownop/lone
	always_new_team = TRUE
	send_to_spawnpoint = FALSE
	preview_outfit = /datum/outfit/clown_operative
	preview_outfit_behind = null
	nuke_icon_state = "bananiumbomb_base"
	var/funny_name

/datum/antagonist/nukeop/clownop/lone/forge_objectives()
	objectives += new /datum/objective/funny_lone_operative

/datum/antagonist/nukeop/clownop/lone/give_alias()
	funny_name = pick("Honker", "Slipper", "Pie Tosser", "Waddler", "Da Joker", "Jester", "Banana Enthusiast")
	owner.current.real_name = "Syndicate [funny_name]"

/datum/antagonist/nukeop/clownop/lone/roundend_report()
	var/list/parts = list()
	parts += "<span class='header'>[funny_name] Circus Operatives:</span>"
	var/text = "<br><span class='header'>The syndicate clown operatives were:</span>"
	var/purchases = ""
	var/used_telecrystals = 0
	LAZYINITLIST(GLOB.uplink_purchase_logs_by_key)
	var/datum/uplink_purchase_log/purchase_log = GLOB.uplink_purchase_logs_by_key[owner.key]
	if(purchase_log)
		used_telecrystals = purchase_log.total_spent
		purchases += purchase_log.generate_render(FALSE)
	text += printplayerlist(owner)
	text += "<br>"
	text += "(Circus used [used_telecrystals] TC) [purchases]"
	if(used_telecrystals == 0)
		text += "<BIG>[icon2html('icons/ui_icons/antags/badass.dmi', world, "badass")]</BIG>"

	parts += text

	return "<div class='panel redborder'>[parts.Join("<br>")]</div>"

// Outfit for lone clown operative
/datum/outfit/syndicate/clownop/lone
	name = "Clown Operative - Lone"
	back = /obj/item/mod/control/pre_equipped/nuclear/honkerative
	l_pocket = /obj/item/tank/internals/emergency_oxygen/engi
	r_pocket = /obj/item/modular_computer/pda/nukeops/clownops
	backpack_contents = list(
		/obj/item/pen/edagger = 1,
		/obj/item/dnainjector/clumsymut = 1, //in case you want to be clumsy for the memes
		/obj/item/storage/box/syndie_kit/clownpins = 1, //for any guns that you get your grubby little clown op mitts on
		/obj/item/reagent_containers/spray/waterflower/lube = 1,
		/obj/item/storage/box/syndie_kit/clown_beacons = 1,
	)
	internals_slot = ITEM_SLOT_LPOCKET

// Lone clown operative exclusive gear

// clown op modsuit
/obj/item/mod/control/pre_equipped/nuclear/honkerative
	theme = /datum/mod_theme/syndicate/honkerative
	applied_modules = list(
		/obj/item/mod/module/storage/syndicate,
		/obj/item/mod/module/emp_shield,
		/obj/item/mod/module/magnetic_harness,
		/obj/item/mod/module/jetpack/advanced,
		/obj/item/mod/module/flashlight,
		/obj/item/mod/module/waddle,
		/obj/item/mod/module/bikehorn,
	)
	default_pins = list(
		/obj/item/mod/module/armor_booster,
		/obj/item/mod/module/jetpack/advanced,
		/obj/item/mod/module/bikehorn,
	)

/datum/mod_theme/syndicate/honkerative
	default_skin = "honkerative"

// clown op pda
/obj/item/modular_computer/pda/nukeops/clownops
	icon_state = "pda-clown"
	greyscale_config = null
	greyscale_colors = null
	inserted_item = /obj/item/toy/crayon/rainbow

/obj/item/modular_computer/pda/nukeops/clownops/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/sitcomlaughter, CALLBACK(src, PROC_REF(after_sitcom_laugh)))

/obj/item/modular_computer/pda/nukeops/clownops/update_overlays()
	. = ..()
	. += mutable_appearance(icon, "pda_stripe_clown") // clowns have eyes that go over their screen, so it needs to be compiled last

/obj/item/modular_computer/pda/nukeops/clownops/proc/after_sitcom_laugh(mob/victim)
	victim.visible_message("[src] lets out a burst of laughter!")

// box for clown operative objectives' clown bombs
/obj/item/storage/box/syndie_kit/clown_beacons
	name = "box of clown bomb beacons"
	desc = "Clown operatives are provided with annoying tools to break Nanotrasen spirits."

/obj/item/storage/box/syndie_kit/clown_beacons/PopulateContents()
	for(var/i in 1 to 3)
		new /obj/item/sbeacondrop/clownbomb(src)

// clown operative objective
/datum/objective/funny_lone_operative
	name = "lone clone operative"
	explanation_text = "Use clown bombs to infest the station with clowns."
	martyr_compatible = TRUE
	admin_grantable = TRUE
