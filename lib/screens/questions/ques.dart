import 'package:flutter/material.dart';

class PageContainerTips extends StatelessWidget {
  String title;
  String description;
  String image;

  PageContainerTips({this.title, this.description, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: Color(0xff1A6DFF),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 10,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 300,
              width: 300,
              child: Text(
                description,
                textAlign: TextAlign.center,
                maxLines: 2,
                softWrap: true,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              child: Image.asset(
                image,
                fit: BoxFit.scaleDown,
              ),
            ),
            bottom: 160,
          ),
          if (image == "assets/instruction.jpg")
            Positioned(
              bottom: 90,
              child: Container(
                child: Image.asset("assets/healthy.jpg"),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .25,
              ),
            ),
          Positioned(
            bottom: 30,
            //TODO: Style flat button
            child: FloatingActionButton(
              // color: Colors.white,
              // padding: EdgeInsets.only(top: 20),
              onPressed: () => Navigator.pushNamed(context, "/dashboard"),
              // color: Color(0xffF72585),
              child: Text("X"),
              // textColor: Color(0xffffffff),
            ),
          ),
        ],
      ),
    );
  }
}
