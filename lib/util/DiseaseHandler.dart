import 'package:agrithon/model/Disease.dart';

class DiseaseHandler{
  List<Disease> disease=List<Disease>();
  void initDisease(){
    disease.add(Disease(name:"aa",path:"aa",desc:"aa",rem:"aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
    //disease.add(Disease("aa","aa","aa","aa"));
  }
  List<Disease> get getDisease{
  return disease;
}
}