// Given an Array of Recipe objects, return the unique recipes
// Recipe has two attibutes name: String and ingredient: [String]
//
// ex.
//
// Recipe(name: "Burger",         ingredients: ["lettuce","beef","bun","tomato"]),
// Recipe(name: "Special Burger", ingredients: ["beef","lettuce","tomato","bun"],
// Recipe(name: "taco",           ingredients: ["meat","taco shell","cheese"]))
//
// In this case, you should only return two elements being [["lettuce","beef","bun","tomato"], ["meat","taco shell","cheese"]]
//
// Input type: Array of Recipes
// Return Type: [[String]]


var recipes = [

    {
        "name" : "burger",
        "ingrediants" : ["lettuce","tomato","onion"]
        
    },
    
    {
        "name" : "food",
        "ingrediants" : ["lettuce","tomato","onion"]
        
    },
    
    {
        "name" : "fish",
        "ingrediants" : ["lettuce","tomato"]
        
    }


]

// Take each list of ingredients and throw the ingredients into a set, then throw all of these elements into another set
