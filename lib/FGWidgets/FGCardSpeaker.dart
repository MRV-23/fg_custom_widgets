import 'package:flutter/material.dart';

class Fgcardspeaker extends StatelessWidget {
  String urlImage;
  String title;
  String hours;
  String name;

  Fgcardspeaker({
    required this.urlImage,
    required this.title,
    required this.hours,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
    
      margin: EdgeInsets.only(top:5 ,bottom: 5),
      child:Card(
        color: Colors.white,
        child: Row(

          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Expanded(
                flex: 1,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20) // Adjust the radius as needed
                  ),
                  child: Image.network(
                    urlImage, // Cambia por URL válida.
                    fit: BoxFit.cover,
                  ),
                )
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(hours, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey)),
                    Text(name,style: TextStyle(fontSize: 13)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );;
  }
}
