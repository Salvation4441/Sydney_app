import 'package:flutter/material.dart';

class DashCard extends StatelessWidget {
  const DashCard({
    Key key,
    @required this.press,
    @required this.image,
    @required this.name,
  }) : super(key: key);

  final GestureTapCallback press;
  final String image;
  final String name;



  @override
  Widget build(BuildContext context) {

    return Expanded(
      flex: 1,
      child: AspectRatio(
        aspectRatio: 1.25,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 2,
                    child: Image.asset(
                        image,
                      fit: BoxFit.contain,
                      width: 85,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                      name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.black
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.green,
                    width: 3
                  ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

