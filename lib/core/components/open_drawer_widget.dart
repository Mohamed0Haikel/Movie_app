import 'package:flutter/material.dart';

import '../../constant.dart';


class OpenDrawerWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const OpenDrawerWidget({
    required this.scaffoldKey,
    super.key,
  });

  @override
  State<OpenDrawerWidget> createState() => _OpenDrawerWidgetState();
}

class _OpenDrawerWidgetState extends State<OpenDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isTablet = AppConstants.kMinimumTabletWidth < size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
            onTap: () => widget.scaffoldKey.currentState?.openDrawer(),
            child: Icon(Icons.menu, size: isTablet ? 30 : 26))
      ],
    );
  }
}
