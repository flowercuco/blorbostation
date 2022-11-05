/// makes root flatbreads customable like pizza bread
/obj/item/food/root_flatbread/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/customizable_reagent_holder, /obj/item/food/root_flatbread, CUSTOM_INGREDIENT_ICON_SCATTER, max_ingredients = 12)

/// adds new options to chef beacon
/obj/item/storage/box/ingredients/pizza
	theme_name = "pizza"

/obj/item/storage/box/ingredients/pizza/PopulateContents()
	new /obj/item/food/tortilla(src)
	for(var/i in 1 to 3)
		new /obj/item/food/root_flatbread(src)
		new /obj/item/food/pizzabread(src)
