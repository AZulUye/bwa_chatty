import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget receiverBubble({
      String imageUrl,
      String text,
      String time,
    }) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageUrl,
              width: 40,
            ),
            SizedBox(
              width: 12,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: lightSGreyColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: greyMColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      color: greyMColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget senderBubble({
      String imageUrl,
      String text,
      String time,
    }) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: greyMColor,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w300,
                      color: greyMColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Image.asset(
              imageUrl,
              width: 40,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        height: 115,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/group1.png',
              width: 55,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4,
                ),
                Text(
                  'Jaringan Komputer',
                  style: titleTextStyle,
                ),
                Text(
                  '14,209 members',
                  style: subtitleTextStyle,
                ),
              ],
            ),
            Spacer(),
            RawMaterialButton(
              elevation: 2.0,
              shape: CircleBorder(),
              fillColor: greenColor,
              onPressed: () {},
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 20.0,
              ),
              constraints: BoxConstraints.tightFor(
                width: 35.0,
                height: 35.0,
              ),
            ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       'Jaringan Komputer',
            //       style: TextStyle(
            //         fontFamily: 'Poppins',
            //         color: blackColor,
            //         fontSize: 16,
            //         fontWeight: FontWeight.w500,
            //       ),
            //     ),
            //     SizedBox(
            //       height: 2,
            //     ),
            //     Text(
            //       '14,209 members',
            //       style: TextStyle(
            //         fontFamily: 'Poppins',
            //         fontWeight: FontWeight.w300,
            //         color: greyColor,
            //       ),
            //     ),
            //   ],
            // ),
            // Spacer(),
            // Image.asset(
            //   'assets/images/call_btn.png',
            // ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              receiverBubble(
                imageUrl: 'assets/images/friend1.png',
                text: 'Vin, info laporan',
                time: '2:30',
              ),
              receiverBubble(
                imageUrl: 'assets/images/friend3.png',
                text: 'Bisalah info',
                time: '3:11',
              ),
              senderBubble(
                imageUrl: 'assets/images/profil_pic2.png',
                text: 'Ayo top rank mosok gak\ntampil malah info...',
                time: '22:08',
              ),
              receiverBubble(
                imageUrl: 'assets/images/friend2.png',
                text: 'Ditunggu',
                time: '23:11',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Type message ...',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: lightMGreyColor,
              ),
            ),
            Image.asset(
              'assets/images/send_btn.png',
              width: 35,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: lightGreyColor,
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
