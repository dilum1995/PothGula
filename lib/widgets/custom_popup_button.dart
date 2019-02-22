import 'package:flutter/material.dart';


var _dropdownLabelStyle = TextStyle(color: Colors.white, fontSize: 16.0);
var _dropdownMenuItemStyle = TextStyle(color: Colors.black, fontSize: 16.0);
var selectedItemFromMenu = 0;

class CustomPopupMenuButton extends StatefulWidget {
  final List<String> popupMenuItemList;

  CustomPopupMenuButton(this.popupMenuItemList);

  @override
  _CustomPopupMenuButtonState createState() => _CustomPopupMenuButtonState();
}

class _CustomPopupMenuButtonState extends State<CustomPopupMenuButton>{
  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => PopupMenuButton(
      onSelected: (int index){
        setState(() {
          selectedItemFromMenu = index;
        });
      },
      child: Row(
        children: <Widget>[
          Text(widget.popupMenuItemList[selectedItemFromMenu],
              style: _dropdownLabelStyle),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          )
        ],
      ),
      itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
        PopupMenuItem(
          child: Text(
            widget.popupMenuItemList[0],
            style: _dropdownMenuItemStyle,
          ),
          value: 0,
        ),
        PopupMenuItem(
          child: Text(
            widget.popupMenuItemList[1],
            style: _dropdownMenuItemStyle,
          ),
          value: 1,
        )
      ]);
}
