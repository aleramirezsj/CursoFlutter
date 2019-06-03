import 'package:flutter/material.dart';
import 'widgets/descripcion_place.dart';
import 'widgets/review_list.dart';
import 'widgets/app_bar_propia.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comedor ISP20',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescripcionPlace("Almuerzo", 5, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper ornare sodales.Cras condimentum enim purus, sed placerat nunc volutpat et. Nunc malesuada, quam vel consectetur convallis, libero nisi volutpat nibh, ut aliquet diam eros eu tortor. Cras eget accumsan purus. Quisque sed justo convallis, efficitur ipsum sed, hendrerit nisl.Duis tincidunt, est vitae molestie laoreet elit dolor varius dui, ac malesuada ex orci vel libero."),
                ReviewList(),
            ],),
           AppBarPropia() 
          ],
        ),
      )
    );
  }
}




