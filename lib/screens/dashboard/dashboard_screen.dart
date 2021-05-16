import 'package:flutter/material.dart';
import 'package:web_dash/responsiveness.dart';
import 'package:web_dash/shareds/constants/constants.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      SizedBox(height: defaultPadding),
                      if (Responsiveness.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsiveness.isMobile(context)) Container(),
                    ],
                  ),
                ),
                if (!Responsiveness.isMobile(context))
                  SizedBox(width: defaultPadding),
                //Diminuir a pagina caso a tela do dispositivo seja menor que 850 pixels
                if (!Responsiveness.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
