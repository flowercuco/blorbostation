/obj/item/pizzabox/mothic_margherita
	pizza = /obj/item/food/pizza/mothic_margherita

/obj/item/pizzabox/mothic_firecracker
	pizza = /obj/item/food/pizza/mothic_firecracker

/obj/item/pizzabox/mothic_five_cheese
	pizza = /obj/item/food/pizza/mothic_five_cheese

/obj/item/pizzabox/mothic_pesto
	pizza = /obj/item/food/pizza/mothic_pesto

/obj/item/pizzabox/mothic_white_pie
	pizza = /obj/item/food/pizza/mothic_white_pie

/obj/item/pizzabox/italic_flatbread
	pizza = /obj/item/food/pizza/italic_flatbread

/obj/item/pizzabox/rustic_flatbread
	pizza = /obj/item/food/pizza/rustic_flatbread

/obj/item/pizzabox/imperial_flatbread
	pizza = /obj/item/food/pizza/imperial_flatbread

/obj/item/pizzabox/mushroom_flatbread
	pizza = /obj/item/food/pizza/mushroom_flatbread

/obj/item/pizzabox/stinging_flatbread
	pizza = /obj/item/food/pizza/stinging_flatbread

/obj/item/pizzabox/fish_flatbread
	pizza = /obj/item/food/pizza/fish_flatbread

//An anomalous flatbread pizza box that, when opened, produces the opener's favorite kind of pizza.
/obj/item/pizzabox/infinite_flatbread
	resistance_flags = FIRE_PROOF | LAVA_PROOF | ACID_PROOF //hard to destroy
	can_open_on_fall = FALSE
	boxtag = "Someone's Favourite" //used to give it a tag overlay, shouldn't be seen by players
	///List of pizzas this box can spawn. Weighted by chance to be someone's favorite.
	var/list/pizza_types = list(
		/obj/item/food/pizza/rustic_flatbread = 7,
		/obj/item/food/pizza/italic_flatbread = 5,
		/obj/item/food/pizza/imperial_flatbread = 8,
		/obj/item/food/pizza/rawmeat_flatbread = 5,
		/obj/item/food/pizza/stinging_flatbread = 10,
		/obj/item/food/pizza/zmorgast_flatbread = 7,
		/obj/item/food/pizza/fish_flatbread = 10,
		/obj/item/food/pizza/mushroom_flatbread = 5,
	)
	var/static/list/pizza_preferences

/obj/item/pizzabox/infinite_flatbread_flatbread/Initialize(mapload)
	. = ..()
	if(!pizza_preferences)
		pizza_preferences = list()

/obj/item/pizzabox/infinite_flatbread/examine(mob/user)
	if(!open && ishuman(user))
		attune_pizza(user) //pizza tag changes based on examiner
	. = ..()
	if(isobserver(user))
		. += span_deadsay("This pizza box is anomalous, and will produce infinite pizza.")

/obj/item/pizzabox/infinite_flatbread/attack_self(mob/living/user)
	if(ishuman(user))
		attune_pizza(user)
		to_chat(user, span_notice("Another flatbread immediately appears in the box, what the hell?"))
	return ..()

/obj/item/pizzabox/infinite_flatbread/proc/attune_pizza(mob/living/carbon/human/nommer) //tonight on "proc names I never thought I'd type"
	if(!nommer.ckey)
		return

	if(pizza)
		QDEL_NULL(pizza)

	var/obj/item/food/pizza/favourite_pizza_type = pizza_preferences[nommer.ckey]
	pizza = new favourite_pizza_type
	boxtag_set = FALSE
	update_appearance() //update our boxtag to match our new pizza
	pizza.foodtypes = nommer.dna.species.liked_food //it's our favorite!
