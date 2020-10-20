import 'package:agrithon/model/Disease.dart';
import 'package:agrithon/widget/disease_details.dart';
import 'package:flutter/material.dart';

class DiseaseTile extends StatelessWidget {
  Disease disease;
  DiseaseTile(this.disease);
  @override
  Widget build(BuildContext context) {
    void _showDetailsPanel(Disease disease) {
      showModalBottomSheet(context: context, builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: DiseaseDetails(disease),
        );
      });
    }
    return Padding(
      padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
      child: Card(
          elevation: 6.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)),
          child: Container(
            //  color: Colors.white,
            //padding: ,
              width: 400.0,
              height: 75.0,
//                      alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.white,
              ),
              // elevation: 2.0,
              child: Center(
                child: ListTile(
                  leading:Image.asset('images/${disease.path}',scale: 0.3,),
                  title: Text(disease.name),
                  onTap: (){_showDetailsPanel(disease);},
                ),
              ))),
    );
  }
}


