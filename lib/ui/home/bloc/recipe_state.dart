import 'package:api_exp_395/data/remote/model/reciepe_model.dart';

abstract class RecipeState{}

class RecipeInitialState extends RecipeState{}
class RecipeLoadingState extends RecipeState{}
class RecipeLoadedState extends RecipeState{
  List<RecipeModel> allRecipes;
  RecipeLoadedState({required this.allRecipes});
}
class RecipeErrorState extends RecipeState{
  String errorMsg;
  RecipeErrorState({required this.errorMsg});
}