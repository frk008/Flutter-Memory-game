class TileModel{
  String imageAssetPath;
  bool isSelected;


  void setImageAsset(String getImage){
    this.imageAssetPath = getImage;
  }
  void setIsSelected(bool   getIsSelect){
    this.isSelected = getIsSelect;
  }

  TileModel({this.imageAssetPath,this.isSelected});


  //getter method
  String getImagePath(){
    return imageAssetPath;
  }

  bool getSelected(){
    return isSelected;
  }

}