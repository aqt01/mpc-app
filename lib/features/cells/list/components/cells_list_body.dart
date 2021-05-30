import 'package:flutter/material.dart';
import 'package:mpc_app/components/screen_header.dart';

import 'package:mpc_app/constants.dart' as Constants;
import 'package:mpc_app/size_config.dart';

class CellsListBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          ScreenHeader(
            title: 'Células',
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(top: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CellCard(
                    image: 'assets/images/intec.jpeg',
                    college: 'INTEC',
                    place: 'En el parqueo de los profesores',
                    schedule: 'VIERNES 8:00 PM',
                  ),
                  VerticalSpacing(of: 18),
                  CellCard(
                    image: 'assets/images/unphu.jpeg',
                    college: 'UNPHU',
                    place: 'Patio atrás de la biblioteca',
                    schedule: 'VIERNES 7:00 PM',
                  ),
                  VerticalSpacing(of: 18),
                  CellCard(
                    image: 'assets/images/apec.jpeg',
                    college: 'APEC',
                    place: 'Frente al salón de actos',
                    schedule: 'MARTES 7:00 PM',
                  ),
                  VerticalSpacing(of: 18),
                  CellCard(
                    image: 'assets/images/odon.jpeg',
                    college: 'ODONTOLÓGICA',
                    place: 'Comedor',
                    schedule: 'JUEVES 8:00 PM',
                  ),
                  VerticalSpacing(of: 18),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CellCard extends StatelessWidget {
  const CellCard({
    Key key,
    @required this.image,
    @required this.college,
    @required this.place,
    @required this.schedule,
  }) : super(key: key);

  final String image;
  final String college;
  final String place;
  final String schedule;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 127,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 8,
            color: Constants.SECONDARY_COLOR.withOpacity(0.38),
          )
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 127,
            height: 127,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  college,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.black),
                ),
                VerticalSpacing(of: 2),
                Text(place),
                Spacer(),
                Text(schedule)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
