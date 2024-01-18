import "package:flutter/material.dart";

class CatagoryCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.0),
      width: 300,
      height: 150,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2), 
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.health_and_safety_rounded,
                    color: Color.fromARGB(255, 221, 17, 3), size: 40),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Patient  catagory",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),

                    // alignment: AlignmentGeometry alignment = Alignment.topLeft,
                    Text(
                      "some description",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey[400]),
                      textAlign: TextAlign.left,
                    ),
                  ]),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Patient  catagory",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),

                  // alignment: AlignmentGeometry alignment = Alignment.topLeft,
                  Row(children: [
                    Text(
                      "some description",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey[400]),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(width: 35),
                    Text(
                      "some description",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w200,
                          color: Colors.grey[400]),
                      textAlign: TextAlign.left,
                    )
                  ]),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
