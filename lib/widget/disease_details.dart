import 'package:agrithon/model/Disease.dart';
import 'package:flutter/material.dart';

class DiseaseDetails extends StatelessWidget {
  Disease disease;
  DiseaseDetails(this.disease);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:ListView(
        children: [
          Center(child: Text(disease.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),)),
          SizedBox(height: 10.0,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/${disease.path}',height: 100.0,width: 100.0,),
              ),
              Container(
                width: 150.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Description",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text(disease.desc),
                    SizedBox(height: 10.0,),
                    Text("Remedy",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text(disease.rem)
                  ],
                ),
              )
            ],
          )


    );
  }
}
