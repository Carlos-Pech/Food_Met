import 'package:flutter/material.dart';

class Search_Section extends StatelessWidget {
  const Search_Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      // padding: EdgeInsets.only(top: 15),
      // decoration: BoxDecoration(
      //   color: Colors.black38,
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(35),
      //     topRight: Radius.circular(35),
      //   ),
      // ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Search here"),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.search,
                  size: 27,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
