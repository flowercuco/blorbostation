/datum/supply_pack/goody/hamhelmet
	name = "Ham Helmet Two Pack"
	desc = "Contains two Ham Helmets, one for you, and one for your beloved, be they a person or a corgi."
	cost = PAYCHECK_CREW * 2
	contains = list(/obj/item/clothing/head/helmet/ham,/obj/item/clothing/head/helmet/ham)

/datum/supply_pack/organic/flatbread
	name = "Flatbread Crate"
	desc = "Gay Lizard Medbay Rejoice! A taste of home for Tizirans everywhere. \
			Best prices this side of the galaxy! All deliveries are guaranteed to be 99% anomaly-free."
	cost = CARGO_CRATE_VALUE * 10 // Best prices this side of the galaxy.
	contains = list(/obj/item/pizzabox/imperial_flatbread,
					/obj/item/pizzabox/rustic_flatbread,
					/obj/item/pizzabox/mushroom_flatbread,
					/obj/item/pizzabox/stinging_flatbread,
					/obj/item/pizzabox/fish_flatbread,
				)
	crate_name = "flatbread crate"

/datum/supply_pack/organic/mothicpizza
	name = "Mothic Pizza Crate"
	desc = "Containing so much cheese that even a Ratfolk might have second thoughts. Not you though. \
			Best prices this side of the galaxy! All deliveries are guaranteed to be 99% anomaly-free."
	cost = CARGO_CRATE_VALUE * 10 // Best prices this side of the galaxy.
	contains = list(/obj/item/pizzabox/mothic_margherita,
					/obj/item/pizzabox/mothic_firecracker,
					/obj/item/pizzabox/mothic_five_cheese,
					/obj/item/pizzabox/mothic_pesto,
					/obj/item/pizzabox/mothic_white_pie,
				)
	crate_name = "mothic pizza crate"

/datum/supply_pack/organic/pizzamedley
	name = "Universal Pizza Crate"
	desc = "The Ultimate collection of Pizza and Flatbread, finally brought to stations across the galaxy! \
			Best prices this side of the galaxy! All deliveries are guaranteed to be 99% anomaly-free."
	cost = CARGO_CRATE_VALUE * 20 // Best prices this side of the galaxy.
	contains = list(/obj/item/pizzabox/margherita,
					/obj/item/pizzabox/mushroom,
					/obj/item/pizzabox/meat,
					/obj/item/pizzabox/pineapple,
					/obj/item/pizzabox/mothic_firecracker,
					/obj/item/pizzabox/mothic_five_cheese,
					/obj/item/pizzabox/stinging_flatbread,
					/obj/item/pizzabox/fish_flatbread,
					/obj/item/pizzabox/rustic_flatbread,
					/obj/item/pizzabox/italic_flatbread,
				)
	crate_name = "variety pizza crate"

/datum/supply_pack/organic/pizzastarter
	name = "Custom Pizza Starter Crate"
	desc = "Support for the true warriors in the art of placing foods on top of flat dough or bread. \
			Contains some wheat, potatoes, korta nuts, an egg carton, and a trusty rolling pin."
	cost = CARGO_CRATE_VALUE * 2.5
	contains = list(/obj/item/food/grown/potato = 6,
					/obj/item/food/grown/wheat = 6,
					/obj/item/food/grown/korta_nut =6,
					/obj/item/storage/fancy/egg_box,
					/obj/item/kitchen/rollingpin,
				)
	crate_name = "food crate"
