import 'package:flutter/material.dart';

class LoadingProgressIndicator extends StatelessWidget {

  const LoadingProgressIndicator({Key? key,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xFFebf9fe),
      child: Container(
        margin: const EdgeInsets.all(15.0),
        width: MediaQuery.of(context).size.width /7,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
               CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
