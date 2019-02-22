import 'package:flutter/material.dart';
import 'package:poth_gula/widgets/custom_choice_chips.dart';
import 'package:poth_gula/widgets/custom_popup_button.dart';
import 'package:poth_gula/widgets/custom_shape_clipper.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeScreenTopPart(),
        ],
      ),
    );
  }
}

Color firstColor = Color(0xFF2F80ED);
Color secondColor = Color(0xFF56CCF2);

List<String> searchArea = ['Colombo', 'Koswatte', 'Nawala'];

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  var selectedArea = 0;
  var isShareSelected = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [firstColor, secondColor])),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50.0),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CustomPopupMenuButton(searchArea),
                      // have to capture the selectedItem from the CustomPopupMenuButton
                      Spacer(),
                      Icon(Icons.location_searching, color: Colors.white)
                    ],
                  ),
                ),
                SizedBox(
                  height: 37.0,
                ),
                Text(
                  'What would\nyou want to read?',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    child: TextField(
                      controller: TextEditingController(text: "Gamperaliya"),
                      style: TextStyle(color: Colors.black54, fontSize: 16.0),
                      cursorColor: Colors.blue[900],
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 32.0, vertical: 14.0),
                          suffixIcon: Material(
                            elevation: 2.0,
                            borderRadius:
                            BorderRadius.all(Radius.circular(30.0)),
                            child: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 21.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      child: CustomChoiceChip(
                          Icons.donut_large, "Share", isShareSelected),
                      onTap: () {
                        setState(() {
                          isShareSelected = true;
                        });
                      },
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    InkWell(
                      child: CustomChoiceChip(
                          Icons.donut_large, "Exchage", !isShareSelected),
                      onTap: () {
                        setState(() {
                          isShareSelected = false;
                        });
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
