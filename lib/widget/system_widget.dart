import 'package:flutter/material.dart';

class SystemWidget {
  static Widget textBuild({required String txt, double size = 20}) {
    return Text(
      txt,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }

  static Container searchBar() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Find Foods',
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(
              Icons.add_road_rounded,
              color: Colors.grey,
            ),
            disabledBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static Widget sectionCard({required String txt, required IconData icon}) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 10,
                  //     offset: Offset(2, 3), // changes position of shadow
                ),
              ],
            ),
            child: Icon(
              icon,
              color: Colors.indigo,
              size: 30,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            txt,
          ),
        ),
      ],
    );
  }

  static Widget foodSquareCard({required BuildContext context}) {
    return Container(
      height: 150,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return Padding(
            padding: EdgeInsets.only(right: 7, left: 7),
            child: Card(
              child: Column(
                children: [
                  buildImageContainer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      buildNameRate(),
                      SizedBox(
                        width: 15,
                      ),
                      priceValue(),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  static Text priceValue() {
    return Text(
      '\$ 263',
      style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static Container buildImageContainer() {
    return Container(
      height: 90,
      width: 190,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image.asset('assets/food.png'),
    );
  }

  static Column buildNameRate() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Food Name Here'),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('4.2'),
            Row(
              children: [
                Icon(
                  Icons.star_rate,
                  color: Colors.indigo,
                  size: 15,
                ),
                Icon(
                  Icons.star_rate,
                  color: Colors.indigo,
                  size: 15,
                ),
                Icon(
                  Icons.star_rate,
                  color: Colors.indigo,
                  size: 15,
                ),
                Icon(
                  Icons.star_rate,
                  color: Colors.indigo,
                  size: 15,
                ),
                Icon(
                  Icons.star_half,
                  color: Colors.indigo,
                  size: 15,
                ),
              ],
            ),
            Text('(72+)'),
          ],
        ),
      ],
    );
  }

  static Widget foodRectangleCard({required BuildContext context}) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: 300,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildImageContainer(),
                      flex: 1,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: buildNameRate(),
                      flex: 2,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: priceValue(),
                      flex: 1,
                    ),
                  ],
                ),
                Divider()
              ],
            );
          },
        ),
      ),
    );
  }
}
