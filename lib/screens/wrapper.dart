import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syah_brewcrew/models/user.dart';
import 'package:syah_brewcrew/screens/authenticate/authenticate.dart';
import 'package:syah_brewcrew/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    // RETURN EITHER Home OR Authentication WIDGET
    if (user == null) {
      return Authenticate();
    }
    else {
      return Home();
    }
  }
}
