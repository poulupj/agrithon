import 'package:flutter/material.dart';
import 'package:agrithon/model/Disease.dart';
import 'package:agrithon/util/DiseaseHandler.dart';

class diseaseScreen extends StatefulWidget {
  @override
  diseaseScreenState createState() => diseaseScreenState();
}

class diseaseScreenState extends State<diseaseScreen> {
  DiseaseHandler diseaseHandler = DiseaseHandler();

  List<Disease> dis;

  @override
  Widget build(BuildContext context) {
    diseaseHandler.initDisease();
    dis = diseaseHandler.getDisease;
    return Container(

        child: ListView.builder(
            itemCount: dis.length,
            // ignore: missing_return
            itemBuilder: (BuildContext context, int position) {
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
                              leading:Image.asset('images/${dis[position].path}',scale: 0.3,),
                              title: Text(dis[position].name)),
                        ))),
              );
            }));
  }
}
