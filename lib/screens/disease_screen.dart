import 'package:agrithon/widget/disease_details.dart';
import 'package:agrithon/widget/disease_tile.dart';
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
    void _showDetailsPanel(Disease disease) {
      showModalBottomSheet(context: context, builder: (context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
          child: DiseaseDetails(disease),
        );
      });
    }
    diseaseHandler.initDisease();
    dis = diseaseHandler.getDisease;
    return Container(

        child: ListView.builder(
            itemCount: dis.length,
            // ignore: missing_return
            itemBuilder: (BuildContext context, int position) {
              return DiseaseTile(dis[position]);
            }));
  }
}
