import 'package:flutter/material.dart';
import 'package:post_api/screen/provider/home_providre.dart';
import 'package:provider/provider.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
HomeProvider? homeProviderTrue;
HomeProvider? homeProviderFalse;
  @override
  Widget build(BuildContext context) {
    homeProviderFalse = Provider.of<HomeProvider>(context,listen: false);
    homeProviderTrue = Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Post Api Call"),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
               String msg = await homeProviderFalse!.postData();
               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("$msg")));
            },child: Text("API Call"),style: ElevatedButton.styleFrom(backgroundColor: Colors.black)
          ),
        ),
      ),
    );
  }
}
