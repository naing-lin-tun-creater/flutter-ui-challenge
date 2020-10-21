import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(child: Image.network("https://media.salecore.com/salesaspects/shared/GlobalImageLibrary/Responsive/ElegantSeller/real-estate-home-exterior-1-1760-1000.jpg",fit: BoxFit.cover,),
            height: screenHeight*0.4,),

            Container(
              margin: EdgeInsets.only(top: screenHeight*0.3),
              child: Material(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80.0)
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 20.0,top: 30.0,right: 10.0,bottom: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$4,999",style: TextStyle(
                            color: Colors.purple,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold
                          ),),
                          Icon(Icons.bookmark_border,color: Colors.purple,)
                        ],
                      ),

                      SizedBox(height: 10.0,),
                      Text("Family Home",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),),

                      SizedBox(height: 10.0,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.spa,color: Colors.black,),
                              SizedBox(width: 10,),
                              Text("2"),
                              SizedBox(width: 10,),
                              Icon(Icons.room_service,color: Colors.black,),
                              SizedBox(width: 10,),
                              Text("3"),
                              SizedBox(width: 10,),
                              Icon(Icons.home,color: Colors.black,),
                              SizedBox(width: 10,),
                              Text("2")
                            ],
                          ),

                          Text("1,200 ft",style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),

                      Divider(thickness: 1.0,),

                       SizedBox(height: 10.0,),

                      Text("Home Lone Calculator",style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black.withOpacity(.8)
                      ),),

                      SizedBox(height: 5.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$1,602/month"),
                          Icon(Icons.question_answer,color: Colors.blue,)
                        ],
                      ),

                      SizedBox(height: 10.0,),
                      Text("Your Home Lone",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),),

                      SizedBox(height: 5,),
                      Text("Apply For Conditional Approval",
                      style: TextStyle(
                        fontSize: 14.0
                      ),),

                      SizedBox(height: 10,),
                      Container(
                        width:400,
                        height:100,
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSZhyK1uWJYtsxoqKu7WboQLbI4UWtOcjPg4A&usqp=CAU",fit: BoxFit.cover,),),


                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("Ask a question",style: TextStyle(
                                color:Colors.white
                              ),),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.purple.withOpacity(.4),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)
                                )
                              ),
                            ),
                          ),

                          SizedBox(width: 20.0,),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text("Ask a question",
                              style: TextStyle(
                                color: Colors.white,

                              ),),
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)
                                  )
                              ),
                            ),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
