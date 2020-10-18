import 'package:flutter/material.dart';
import 'package:agrithon/model/Disease.dart';
import 'package:agrithon/util/DiseaseHandler.dart';

class diseaseScreen extends StatefulWidget {
  @override
  _diseaseScreenState createState() => _diseaseScreenState();
}

class _diseaseScreenState extends State<diseaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text('diseaseScreen')
    );
  }
}


class disease_list extends StatefulWidget {
  @override
  _disease_listState createState() => _disease_listState();
}

class _disease_listState extends State<disease_list> {
  DiseaseHandler diseaseHandler=DiseaseHandler();

  List<Disease> dis;

  @override
  Widget build(BuildContext context) {
    diseaseHandler.initDisease();
    dis=diseaseHandler.getDisease;
    return Container(
        child:
        ListView.builder(
            itemCount: dis.length,
            // ignore: missing_return
            itemBuilder: (BuildContext context, int position)
            {
              return Card(
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)
                  ),
                  child: Container(
                    //  color: Colors.white,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      // elevation: 2.0,
                      child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.black,

                          ),
                          title: Text(dis[position].name)
                      )
                  )
              );
            }
        ));
  }
}

