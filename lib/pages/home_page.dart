import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'message_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MessagePage()));
        },
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profil_pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Kevin Abdul',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Projects Carry',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlueColor,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Tep',
                        text: 'Sek vin, nggarap e eng...',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Bayu',
                        text: 'Bisalah di share info la...',
                        time: '2:30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jaringan Komputer',
                        text: 'Why does everyone ca...',
                        time: '11:11',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'AKMJ',
                        text: 'Here here we can go...',
                        time: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bangsus',
                        text: 'The car which does not...',
                        time: '7:11',
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
