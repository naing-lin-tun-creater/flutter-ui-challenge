import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/book_mark.dart';
import 'package:flutter_ui_challenge/next_page.dart';

void main() {
  runApp(
    MaterialApp(
    home: MyApp(),
    )
  );

}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                  Text("Howdy Macell",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),),

                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      shape: BoxShape.circle,
                      image: DecorationImage(image: NetworkImage("https://media.salecore.com/salesaspects/shared/GlobalImageLibrary/Responsive/ElegantSeller/real-estate-home-exterior-1-1760-1000.jpg"),fit: BoxFit.cover)
                    ),
                  )

                ],
              ),

              SizedBox(height: 20.0,),

              Text("Discover",style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),),

              SizedBox(height: 10.0,),

              Text("Suitable Home",style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
              ),),

              SizedBox(height: 20.0,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(.5),
                        borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0))
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Find a good home",
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 20.0,),
                  Stack(
                    children: [
                      Icon(Icons.notifications_none),
                      Positioned(
                        top: 0,
                        right: 1,
                        child: Container(
                          padding: EdgeInsets.only(left:4.0,right: 4.0,top: 2.0,bottom: 2.0),
                          child: Text("2",style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.0,
                          ),),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),


              SizedBox(height: 20.0,),
              Container(
                height: 270,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    homeWidget(),
                    homeWidget(),
                    homeWidget(),
                    homeWidget(),
                  ],
                ),
              )

            ],
          ),
        ),

      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            index==1?_selectedWidget(Icon(Icons.home), "Home"):IconButton(icon:Icon(Icons.home),onPressed: (){
              setState(() {
                index  = 1;
              });
            },),
           index==2?_selectedWidget(Icon(Icons.bookmark_border), "Bookmark"):IconButton(icon: Icon(Icons.bookmark_border),onPressed: (){
             setState(() {
               index=2;
             });
           },),
           index==3?_selectedWidget(Icon(Icons.message), "Message"):IconButton(icon: Icon(Icons.message),onPressed: (){
             setState(() {
               index=3;
             });
           },),
            index==4?_selectedWidget(Icon(Icons.perm_identity), "Profile"):IconButton(icon: Icon(Icons.perm_identity),onPressed: (){
              setState(() {
                index=4;
              });
            },)
          ],
        ),
      ),
    );
  }

  Widget _selectedWidget(Icon icon,String str){
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)
          ),
          color: Colors.purple.withOpacity(.4)
      ),
      child: Row(
        children: [
          icon,
          Text(str),
        ],
      ),
    );
  }

  Widget homeWidget(){
    return   InkWell(
      onTap: (){
        // ignore: missing_return
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
          return NextPage();
        }));
      },
      child: Container(
        width: 220,
        height: 270,
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),

                  image: DecorationImage(image: NetworkImage("https://media.salecore.com/salesaspects/shared/GlobalImageLibrary/Responsive/ElegantSeller/real-estate-home-exterior-1-1760-1000.jpg"),fit: BoxFit.cover)
              ),
            ),

            Positioned(
              bottom: 1,
              right: 20,
              child: FloatingActionButton(
                heroTag: null,
                mini: true,
                backgroundColor: Colors.orange,
                child: Icon(Icons.chevron_right,color: Colors.white,),onPressed: (){},
              ),
            ),

            Positioned(
              bottom: 50,
              left: 8,

              child: Column(
                children: [
                  Text("Family House",style: TextStyle(
                    color: Colors.white,

                  ),),
                  Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.white,),
                      Text("Yangon,Shwe Taung Kyar",style: TextStyle(
                          color: Colors.white
                      ),),
                    ],
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );

  }
}

