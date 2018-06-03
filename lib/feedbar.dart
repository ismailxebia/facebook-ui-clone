import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Expanded(
              child: new ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index){
            return new Container(
              decoration: BoxDecoration(
                color: Colors.white,
                 border: const Border(
      top: const BorderSide(width: 1.0, color: Colors.grey),
      left: const BorderSide(width: 1.0, color: Colors.grey),
      right: const BorderSide(width: 1.0, color: Colors.grey),
      bottom: const BorderSide(width: 1.0, color: Colors.grey),
    ),
              ),
              child: new Column(
                children: <Widget>[
                  titleRow(),
                  imageRow(),
                  buttonRow(),
                  commentRow(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

}
  Widget feedWidget()=> new Expanded(
      child: new ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index){
            return new Container(
      child: new Column(
        children: <Widget>[
          titleRow(),
          imageRow(),
          buttonRow(),
          commentRow(),
        ],
      ),
            );
          },
        ),
    );

  Container titleRow() {
    return new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Row(
            children: <Widget>[
              new CircleAvatar(
                radius: 25.0,
                child: Icon(Icons.account_circle,
                size: 36.0,),
                backgroundColor: Colors.white,
              ),
              new Text("varunn12",
            style: new TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold
          )),
            ],
          ),
          new PopupMenuButton(
            onSelected: null,
            itemBuilder: (BuildContext context){
              
            },
          )
        ],
      ),
    );
  }
  Container imageRow(){
    return new Container(
      child: new Image(
        image: new NetworkImage("https://www.essentiallysports.com/wp-content/uploads/2017/08/rafa.jpg"),
      )
          );
  }
  Container buttonRow(){
    return new Container(
      child: Row(
        children: <Widget>[
          new Expanded(
                      child: new Row(
              children: <Widget>[
                // new IconButton(
                //   icon: Icon(Icons.thumb_up,
                //   color: Colors.blue,),
                //   onPressed: (){},
                // ),
                new Image.network("https://en.facebookbrand.com/wp-content/uploads/2016/09/reactions_12_2017.png",
                height: 50.0),
            // new IconButton(
            //   icon: Icon(Icons.send),
            //    onPressed: (){},
            // ),
              ],
            ),
          ),
          new Padding(
            padding: new EdgeInsets.symmetric(horizontal: 8.0),
            child: new Text('2 Comments')),
        ],
      ),
    );
  }
  Container commentRow(){
    return new Container(
       padding: new EdgeInsets.all(10.0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           new Text('170,101 likes',
           style: TextStyle(
             fontWeight: FontWeight.bold
           ),),
           new Row(
             children: <Widget>[
             new Text('varunn12',
               style: TextStyle(
                 fontWeight: FontWeight.bold
               ),),
               new Text(' French Open 2018 - La Undecima',
           style: TextStyle(
           ),),
             ],
           ),
           new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            
             children: <Widget>[
                new CircleAvatar(
                 radius: 12.0,
                 child: Icon(Icons.account_circle,
                 size: 36.0,),
                 backgroundColor: Colors.white,
               ),
               new Expanded(
                 child: new Padding(
                   padding: new EdgeInsets.only(
                     left: 20.0,
                     top: 8.0
                   ),
                                    child: new TextFormField(
                     decoration: new InputDecoration(
                       border: InputBorder.none,
                       hintText: 'Add a comment',
                      
                     ),
                   ),
                 ),
               )
             ],
           )
         ],
       ),
    );
  }
