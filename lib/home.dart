import 'package:flutter/material.dart';
import '../widget/system_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5f9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SystemWidget.textBuild(
                  txt: 'Explore',
                  size: 20,
                ),
                SizedBox(
                  height: 5,
                ),
                SystemWidget.searchBar(),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 65,
                  child: ListView.builder(
                    itemCount: 12,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return SystemWidget.sectionCard(
                          txt: 'txt $index', icon: Icons.home);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2, bottom: 2),
                  child: SystemWidget.textBuild(
                    txt: 'Popular Food',
                    size: 20,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 2, bottom: 2),
                    child: SystemWidget.foodSquareCard(context: context)),
                SystemWidget.textBuild(
                  txt: 'Explore',
                  size: 20,
                ),
                SystemWidget.foodRectangleCard(context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
