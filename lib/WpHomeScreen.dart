import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WpHomeScreen extends StatelessWidget {

  const WpHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading:

          Icon(Icons.arrow_back_ios,color: Colors.white,),
          title:
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/images/person.jpg",fit:BoxFit.cover,width: 45,height: 40,)
                ),
                SizedBox(width: 20),
                Text("Person",style: TextStyle(fontSize: 20,color: Colors.white),),
              ]),
          actions: [
            Icon(Icons.video_call,color: Colors.white,),
            Container(
                margin:EdgeInsets.only(left: 16,right: 10),
                child: Icon(Icons.phone,color: Colors.white,)
            ),
            Icon(Icons.more_vert,color: Colors.white,)
          ],
        ),
        body:
        Stack(
          children: [
            Image.asset("assets/images/background.png",fit: BoxFit.fill,height:double.infinity),
            Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child:Image.asset("assets/images/person1.jpg",fit: BoxFit.fill,height: 60,width: 60,)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: ShapeDecoration(shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: Colors.white,width: 2),
                        ),),
                        padding: EdgeInsets.all(9),
                        child: Text("This is my first message",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ],
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child:Image.asset("assets/images/person2.jpg",width: 60,height: 60,fit: BoxFit.fill,),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(8),
                        decoration: ShapeDecoration(
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(100),
                                borderSide: BorderSide(color: Colors.white,width: 2)
                            )
                        ),
                        child: Text("This is My Second Message",style:
                        TextStyle(
                            color: Colors.white,
                            fontSize: 18)
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                            flex: 6,
                            child:Stack(
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(left: 15,top: 10)      ,
                                      child: Icon(
                                        CupertinoIcons.smiley
                                        ,color: Colors.white
                                        ,size: 30,

                                      )
                                  ),
                                  TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(100),
                                            borderSide: BorderSide(color: Colors.white)
                                        ),
                                        labelText: 'Type a message',
                                        contentPadding: EdgeInsets.only(left: 60,)
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 12,right: 20),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [Icon(
                                          CupertinoIcons.paperclip,
                                          size: 25,
                                          color: Colors.white,
                                        )]
                                    ),
                                  )
                                ]
                            )
                        ),
                        Expanded(
                          child:
                          Container(
                            margin: EdgeInsets.all(5),
                            decoration: ShapeDecoration(color: Colors.black,
                                shape: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(200),
                                    borderSide: BorderSide(
                                        width:2,
                                        color: Colors.white
                                    )
                                )
                            ),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.center,

                              children: [
                                Icon(Icons.mic,color: Colors.white,size: 40,)

                              ],
                            ),
                          )
                          ,
                        ),
                      ],


                    ),
                  )



                ])
          ],
        )
    );
  }
}