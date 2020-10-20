import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';
class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  List<String> feed=List<String>();
  @override
  Widget build(BuildContext context) {
    feed=getFeed();
    return SingleChildScrollView(
//        decoration: BoxDecoration(
//          image: DecorationImage(
//            image: AssetImage(
//              'images/Agriculture-PNG.png',
//            ),
//            fit: BoxFit.scaleDown,
//          ),
//        ),

      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Card(
              elevation: 2.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),

              child: Container(
                width: 350.0,
                child: ListTile(
                  title: Text("scsc"),
                  leading: Icon(Icons.wb_sunny),
                  subtitle: Text("Sunny"),
                  trailing: Text("temp C"),
                ),
              ),
            ),
          ),
          Image.asset('images/Agriculture-PNG.png',scale: 0.3,),
          Text("Feed",style: TextStyle(color: Colors.brown[900],fontSize: 20.0,fontWeight: FontWeight.bold),),
          SizedBox(height: 10.0,),
          Container(
            height: 200.0,
            width: 350.0,
//            child: Marquee(
              //direction:Axis.vertical ,
              child:ListView.builder(
                itemCount: feed.length,
                  itemBuilder: (BuildContext context,int index){
                    return Card(
                      color: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      //elevation: 6.0,
                      child: ListTile(
                        title: Center(child: Text(feed[index])),
                      ),
                    );
                  }

              ),
            ),
//          ),
        ],
      )
    );
  }

  List<String> getFeed() {
    int i;
    List<String> news=List<String>();
    for(i=1;i<10;i++) {
      news.add("News feed $i");
    }
    return news;
  }
}
