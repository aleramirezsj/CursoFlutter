import 'package:flutter/material.dart';
import 'package:comedor/widgets/descripcion_place.dart';
import 'package:comedor/widgets/review_list.dart';
import 'package:comedor/widgets/app_bar_propia.dart';

class EstadoPantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescripcionPlace("Almuerzo", 5,
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper ornare sodales.Cras condimentum enim purus, sed placerat nunc volutpat et. Nunc malesuada, quam vel consectetur convallis, libero nisi volutpat nibh, ut aliquet diam eros eu tortor. Cras eget accumsan purus. Quisque sed justo convallis, efficitur ipsum sed, hendrerit nisl.Duis tincidunt, est vitae molestie laoreet elit dolor varius dui, ac malesuada ex orci vel libero."),
            ReviewList(),
          ],
        ),
        AppBarPropia()
      ],
    );
  }
}
