import 'package:flutter/material.dart';

class ContainerWithBox extends StatelessWidget {
  @override
  Widget build(BuildContext contexst) {
    return Column(
      children: <Widget>[
        Container(
          height: 200.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular(100.0)),
                  
                boxShadow: [BoxShadow(color: Colors.black12)]),
                        
        ),
      ],
    );
  }
}



