import 'package:flutter/material.dart';
import 'package:flutter_sns_app/model/account.dart';
import 'package:flutter_sns_app/model/post.dart';
import 'package:flutter_sns_app/view/timeline/post_page.dart';
import 'package:intl/intl.dart';

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({super.key});

  @override
  State<TimeLinePage> createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  Account myAccount = Account(
    id: '1',
    name: 'flutter ラボ',
    selfIntroduction: 'こんばんは',
    userId: 'flutter_labo',
    imagePath: "https://is3-ssl.mzstatic.com/image/thumb/Purple126/v4/49/dc/2e/49dc2efe-7737-eb2f-91c1-acd091fb08bc/source/512x512bb.jpg",
    createdDate: DateTime.now(),
    updatedDate: DateTime.now()
  );

  List<Post> postList = [
    Post(
      id: '1',
      content: '初めまして',
      postAccountId: '1',
      createdTime: DateTime.now()
    ),
    Post(
        id: '2',
        content: '初めまして',
        postAccountId: '2',
        createdTime: DateTime.now()
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("タイムライン", style: TextStyle(color: Colors.black),),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 2,
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                border: index == 0 ? Border(
                  top: BorderSide(color: Colors.grey, width: 0),
                  bottom: BorderSide(color: Colors.grey, width: 0),
                ) : Border(bottom: BorderSide(color: Colors.grey, width: 0),)
            ),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  foregroundImage: NetworkImage(myAccount.imagePath),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(myAccount.name, style: TextStyle(fontWeight: FontWeight.bold),),
                                Text(myAccount.userId, style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                            Text(DateFormat('M/d/yy').format(postList[index].createdTime!))
                          ],
                        ),
                        Text(postList[index].content)
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
