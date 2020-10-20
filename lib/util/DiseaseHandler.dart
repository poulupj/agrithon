import 'package:agrithon/model/Disease.dart';

class DiseaseHandler{
  List<Disease> disease=List<Disease>();
  void initDisease(){
    disease.add(Disease(name:"aa",path:"AS1.jpeg",desc:"aa",rem:"aa"));
    disease.add(Disease(name:"aa",path:"AS2.jpeg",desc:"aa",rem:"aa"));
    disease.add(Disease(name:"aa",path:"AS4.jpeg",desc:"aa",rem:"aa"));
    disease.add(Disease(name:"aa",path:"BM.jpeg",desc:"aa",rem:"aa"));
    disease.add(Disease(name:"aa",path:"BM3.jpeg",desc:"aa",rem:"aa"));
    disease.add(Disease(name:"aa",path:"BM4.jpeg",desc:"aa",rem:"aa"));
    disease.add(Disease(name:"aa",path:"BS1.jpeg",desc:"aa",rem:"aa"));
    disease.add(Disease(name:"aa",path:"BS2.jpeg",desc:"aa",rem:"aa"));
    disease.add(Disease(name:"aa",path:"BS2.jpeg",desc:"aa",rem:"aa"));
  }
  List<Disease> get getDisease{
  return disease;
}
}