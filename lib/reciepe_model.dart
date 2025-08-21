class RecipeModel {
  int caloriesPerServing;
  int cookTimeMinutes;
  String cuisine;
  String difficulty;
  int id;
  String image;
  String name;
  int prepTimeMinutes;
  num rating;
  int reviewCount;
  int servings;
  int userId;
  List<dynamic> ingredients;
  List<dynamic> instructions;
  List<dynamic> mealType;
  List<dynamic> tags;

  RecipeModel({
    required this.caloriesPerServing,
    required this.cookTimeMinutes,
    required this.cuisine,
    required this.difficulty,
    required this.id,
    required this.image,
    required this.name,
    required this.prepTimeMinutes,
    required this.rating,
    required this.reviewCount,
    required this.servings,
    required this.userId,
    required this.ingredients,
    required this.instructions,
    required this.mealType,
    required this.tags,
  });

  ///fromJson
  factory RecipeModel.fromJson(Map<String, dynamic> json){
    return RecipeModel(
        caloriesPerServing: json['caloriesPerServing'],
        cookTimeMinutes: json['cookTimeMinutes'],
        cuisine: json['cuisine'],
        difficulty: json['difficulty'],
        id: json['id'],
        image: json['image'],
        name: json['name'],
        prepTimeMinutes: json['prepTimeMinutes'],
        rating: json['rating'],
        reviewCount: json['reviewCount'],
        servings: json['servings'],
        userId: json['userId'],
        ingredients: json['ingredients'],
        instructions: json['instructions'],
        mealType: json['mealType'],
        tags: json['tags']);
  }
}

class RecipeDataModel{
  int limit;
  int skip;
  int total;
  List<RecipeModel> recipes;

  RecipeDataModel({
    required this.limit,
    required this.skip,
    required this.total,
    required this.recipes,
  });

  ///fromJson
  factory RecipeDataModel.fromJson(Map<String, dynamic> json){

    List<RecipeModel> mRecipes = [];

    for(Map<String, dynamic> eachRecipe in json['recipes']){
      mRecipes.add(RecipeModel.fromJson(eachRecipe));
    }


    return RecipeDataModel(
        limit: json['limit'],
        skip: json['skip'],
        total: json['total'],
        recipes: mRecipes);
  }
}