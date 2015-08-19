banh_mi = {
  :title => "Chicken Banh Mi",
  :ingredients => "Asian Fish Sauce, Limes, Garlic Cloves, Chicken Breasts, Rice Vinegar, Sugar, Salt, Cucumber, Carrot, Jalapeno, Red Cabbage, Sesame Oil, Mayonnaise, Sriracha, Black Pepper, Cilantro, Baguette",
  :directions =>"In medium-sized non-metallic baking dish, whisk together fish sauce, ¼ cup lime juice, and garlic. Add chicken, turning to coat. Let sit in marinade while you prep other ingredients. In medium bowl, whisk together rice vinegar, sugar, and salt. Add in cucumber, carrot, and jalapeno, and toss to combine. Cover and refrigerate until ready to use. In small bowl, toss cabbage with 1 tablespoon lime juice and dash of sesame oil (optional). Let sit until ready to use. In small bowl, whisk together mayonnaise, Sriracha, and remaining 1 tablespoon lime juice. Cover and place in refrigerator until ready to use. Heat grill pan over high heat. Remove chicken from the marinade and season with salt and pepper to taste. Grill chicken for 3 to 3 ½ minutes per side (depending on thickness of the cutlets) or until cooked through. Cut chicken into thin slices on the diagonal. Spread Sriracha mayonnaise on baguette halves. Layer bottom halves with chicken, pickled vegetables, red cabbage, and cilantro sprigs. Top with remaining baguette halves and serve immediately.",
  :recipe_list_id  => 1
}

linguini = {
  :title => "Linguini with Buttery Corn, Scallions, and Goat Cheese",
  :ingredients => "Linguini, Salt, Unsalted Butter, Scallions, Black Pepper, Corn, Parsley, Goat Cheese",
  :directions => "Bring a large pot of salted water to a boil. Cook pasta according to package directions. Reserve 1 cup pasta water, then drain and return pasta to pot. Meanwhile, heat 2 tablespoons butter in a large skillet over medium heat. Add scallion whites and season with salt and pepper. Cook, stirring frequently, until scallions are just tender, 3 to 4 minutes. Add corn, tossing to coat, and cook until just tender, 2 to 3 minutes more. Add pasta, ½ cup pasta water, and remaining 2 tablespoons butter to pan and toss to combine. Add additional water to loosen the sauce, if necessary. Fold in scallion greens and parsley. Serve dolloped with goat cheese and topped with more parsley.",
  :recipe_list_id  => 1
}

summer_meals = {
  :title => "Summer Meals"
}

new_list = RecipeList.create(summer_meals)
# rec_one =
Recipe.create(banh_mi)
# rec_one.save!
# rec_two =
Recipe.create(linguini)
# rec_two.save!