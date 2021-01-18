

import 'model.dart';

int score = 0;
bool allow = false;

String selectedImageAssetPath = '';
int selectedTileIndex;

List<TileModel> pairs = new List<TileModel>();
List<TileModel> visiblePairs = new List<TileModel>();

List<TileModel> getPairs(){
  List<TileModel> pairs = List<TileModel>();
  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAsset("assets/hippo.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //2
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/fox.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //3
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/horse.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //4
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/panda.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //5
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/monkey.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //6
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/parrot.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //7
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/rabbit.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //8
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/zoo.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  return pairs;
}

List<TileModel> getQuestions(){
  List<TileModel> pairs = List<TileModel>();
  TileModel tileModel = new TileModel();

  //1
  tileModel.setImageAsset("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //2
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //3
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //4
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //5
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //6
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //7
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  //8
  tileModel = new TileModel();

  tileModel.setImageAsset("assets/question.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);

  return pairs;
}