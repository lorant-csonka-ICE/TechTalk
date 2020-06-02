import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/helper/light_color.dart';
import 'package:flutter_unity_widget_example/helper/quad_clipper.dart';
import 'package:flutter_unity_widget_example/screens/with_ark_screen.dart';
class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  double width;

  Widget _header(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 200,
          width: width,
          decoration: BoxDecoration(
            color: LightColor.purple,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 30,
                  right: -100,
                  child: _circularContainer(300, LightColor.lightpurple)),
              Positioned(
                  top: -100,
                  left: -45,
                  child: _circularContainer(width * .5, LightColor.darkpurple)),
              Positioned(
                  top: -180,
                  right: -30,
                  child: _circularContainer(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 40,
                  left: 0,
                  child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Search tasks",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Type Something...",
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      )))
            ],
          )),
    );
  }

  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }

  Widget _categoryRow(
    String title,
    Color primary,
    Color textColor,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: LightColor.titleTextColor, fontWeight: FontWeight.bold),
          ),
          _chip("See all", primary)
        ],
      ),
    );
  }

  Widget _featuredRowA() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            _card(
                primary: LightColor.purple,
                backWidget:
                    _decorationContainerA(LightColor.extraDarkPurple, 50, -30),
                chipColor: LightColor.orange,
                chipText1: "Milk Scan",
                chipText2: "8 iteration left",
                isPrimaryCard: true,
                imgPath:
                    "https://www.pinpng.com/pngs/m/13-137637_milk-png-transparent-png.png"),
            _card(
                primary: Colors.white,
                chipColor: LightColor.purple,
                backWidget: _decorationContainerB(Colors.deepPurpleAccent, 90, -40),
                chipText1: "Coke scan",
                chipText2: "2 iteration left",
                imgPath:
                    "https://seeklogo.com/images/C/coca-cola-circle-logo-A9EBD3B00A-seeklogo.com.png"),
            _card(
                primary: Colors.white,
                chipColor: LightColor.purple,
                backWidget: _decorationContainerB(Colors.deepPurpleAccent, 50, -30),
                chipText1: "Tea scan",
                chipText2: "4 iteration left",
                imgPath:
                    "https://i.pinimg.com/originals/9e/be/fd/9ebefda8c1ae16a3c330d3ee31495d0f.jpg"),
            _card(
                primary: Colors.white,
                chipColor: LightColor.purple,
                backWidget: _decorationContainerB(Colors.deepPurpleAccent, -50, 30),
                chipText1: "Chocolate scan",
                chipText2: "8 iteration left",
                imgPath:
                    "https://s.yimg.com/ny/api/res/1.2/Aj.AwGkQMQg7a8WpMQFozA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTY0MA--/https://s.yimg.com/uu/api/res/1.2/3TnBm8yU5_M_YWuuIU2SwA--~B/aD05MDA7dz05MDA7c209MTthcHBpZD15dGFjaHlvbg--/http://media.zenfs.com/en/homerun/feed_manager_auto_publish_494/bd716d46527bda52aff364233326dd4b"),
          ],
        ),
      ),
    );
  }

  Widget _featuredRowB() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            _card(
                primary: Colors.green,
                chipColor: Colors.green,
                backWidget: _decorationContainerD(
                    Colors.lightGreen, -100, -65,
                    secondary: Colors.green,
                    secondaryAccent: Colors.greenAccent),
                chipText1: "Deodorant",
                chipText2: "Great quality",
                isPrimaryCard: true,
                imgPath:
                    "https://cdn.notinoimg.com/detail_thumb_2k/old-spice/4084500490581-o/old-spice-whitewater-stift-dezodor-uraknak___17.jpg"),
            _card(
                primary: Colors.green,
                chipColor: Colors.white,
                backWidget: _decorationContainerE(
                  Colors.lightGreen,
                  90,
                  -40,
                  secondary: Colors.green,
                ),
                chipText1: "Flour",
                chipText2: "Great quality",
                imgPath:
                    "https://images-na.ssl-images-amazon.com/images/I/71wfKFPlftL._SY445_.jpg"),
            _card(
                primary: Colors.redAccent,
                chipColor: Colors.white,
                backWidget: _decorationContainerF(
                    Colors.yellow, Colors.red, 50, -30),
                chipText1: "Icecream",
                chipText2: "Bad Quality",
                imgPath:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQom7iEZxOMW8XdCtEgaGsWmF74NGSxCbxOZZ9DKTga-YEJufPc&usqp=CAU"),
          ],
        ),
      ),
    );
  }

  Widget _card(
      {Color primary = Colors.redAccent,
      String imgPath,
      String chipText1 = '',
      String chipText2 = '',
      Widget backWidget,
      Color chipColor = LightColor.orange,
      bool isPrimaryCard = false}) {
    return Container(
        height: isPrimaryCard ? 190 : 180,
        width: isPrimaryCard ? width * .32 : width * .32,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
            color: primary.withAlpha(200),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  color: LightColor.lightpurple.withAlpha(20))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            child: Stack(
              children: <Widget>[
                backWidget,
                Positioned(
                    top: 20,
                    left: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      backgroundImage: NetworkImage(imgPath),
                    )),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: _cardInfo(chipText1, chipText2,
                      LightColor.titleTextColor, chipColor,
                      isPrimaryCard: isPrimaryCard),
                )
              ],
            ),
          ),
        ));
  }

  Widget _cardInfo(String title, String courses, Color textColor, Color primary,
      {bool isPrimaryCard = false}) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 10),
            width: width * .32,
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: isPrimaryCard ? Colors.white : textColor),
            ),
          ),
          SizedBox(height: 5),
          _chip(courses, primary, height: 5, isPrimaryCard: isPrimaryCard)
        ],
      ),
    );
  }

  Widget _chip(String text, Color textColor,
      {double height = 0, bool isPrimaryCard = false}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: textColor.withAlpha(isPrimaryCard ? 200 : 50),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isPrimaryCard ? Colors.white : textColor, fontSize: 12),
      ),
    );
  }

  Widget _decorationContainerA(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: primary.withAlpha(255),
          ),
        ),
        _smallContainer(primary, 20, 40),
        Positioned(
          top: 20,
          right: -30,
          child: _circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }

  Widget _decorationContainerB(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -65,
          right: -65,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: Colors.blue.shade100,
            child: CircleAvatar(radius: 30, backgroundColor: primary),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: LightColor.lightseeBlue, radius: 40)))
      ],
    );
  }

  Widget _decorationContainerC(Color primary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -105,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: LightColor.orange.withAlpha(100),
          ),
        ),
        Positioned(
            top: 35,
            right: -40,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: LightColor.orange, radius: 40))),
        _smallContainer(
          LightColor.yellow,
          35,
          70,
        )
      ],
    );
  }

  Widget _decorationContainerD(Color primary, double top, double left,
      {Color secondary, Color secondaryAccent}) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: secondary,
          ),
        ),
        _smallContainer(LightColor.yellow, 18, 35, radius: 12),
        Positioned(
          top: 130,
          left: -50,
          child: CircleAvatar(
            radius: 80,
            backgroundColor: primary,
            child: CircleAvatar(radius: 50, backgroundColor: secondaryAccent),
          ),
        ),
        Positioned(
          top: -30,
          right: -40,
          child: _circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }

  Widget _decorationContainerE(Color primary, double top, double left,
      {Color secondary}) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: -105,
          left: -35,
          child: CircleAvatar(
            radius: 70,
            backgroundColor: primary.withAlpha(100),
          ),
        ),
        Positioned(
            top: 40,
            right: -25,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(backgroundColor: primary, radius: 40))),
        Positioned(
            top: 45,
            right: -50,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(backgroundColor: secondary, radius: 50))),
        _smallContainer(LightColor.yellow, 15, 90, radius: 5)
      ],
    );
  }

  Widget _decorationContainerF(
      Color primary, Color secondary, double top, double left) {
    return Stack(
      children: <Widget>[
        Positioned(
            top: 25,
            right: -20,
            child: RotatedBox(
              quarterTurns: 1,
              child: ClipRect(
                  clipper: QuadClipper(),
                  child: CircleAvatar(
                      backgroundColor: primary.withAlpha(100), radius: 50)),
            )),
        Positioned(
            top: 34,
            right: -8,
            child: ClipRect(
                clipper: QuadClipper(),
                child: CircleAvatar(
                    backgroundColor: secondary.withAlpha(100), radius: 40))),
        _smallContainer(LightColor.yellow, 15, 90, radius: 5)
      ],
    );
  }

  Positioned _smallContainer(Color primary, double top, double left,
      {double radius = 10}) {
    return Positioned(
        top: top,
        left: left,
        child: CircleAvatar(
          radius: radius,
          backgroundColor: primary.withAlpha(255),
        ));
  }

  BottomNavigationBarItem _bottomIcons(IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), title: Text(""));
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: LightColor.purple,
          unselectedItemColor: Colors.grey.shade300,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            _bottomIcons(Icons.home),
            _bottomIcons(Icons.library_books),
            _bottomIcons(Icons.insert_invitation),
            _bottomIcons(Icons.location_searching),
          ],
          onTap: (index) {
            if(index==3){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => WithARkitScreen()));
            }
          },
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: <Widget>[
              _header(context),
              SizedBox(height: 20),
              _categoryRow("Next Tasks", LightColor.orange, LightColor.orange),
              _featuredRowA(),
              SizedBox(height: 0),
              _categoryRow(
                  "Reports", LightColor.purple, LightColor.darkpurple),
              _featuredRowB()
            ],
          ),
        )));
  }
}