import 'package:flutter/material.dart';
import 'package:mpc_app/components/rounded_button.dart';
import 'package:mpc_app/features/cells/list/components/cells_list_body.dart';
import '../../../size_config.dart';

import 'package:mpc_app/constants.dart' as Constants;

class CellsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CellsListBody(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -3),
              blurRadius: 10,
              color: Constants.PRIMARY_COLOR.withOpacity(0.23),
            )
          ],
        ),
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: Row(
          children: [
            Spacer(),
            RoundedButton(
              size: 100,
              icon: "assets/icons/home.svg",
              iconColor: Constants.BLACK_COLOR,
              label: 'Células',
              onPressed: () {},
            ),
            Spacer(),
            RoundedButton(
              size: 100,
              icon: "assets/icons/map.svg",
              iconColor: Constants.BLACK_COLOR,
              label: 'Mapa',
              onPressed: () {},
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
