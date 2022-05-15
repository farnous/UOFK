import 'package:flutter/material.dart';

class ShowAlert extends StatelessWidget {
  const ShowAlert({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    if (error != '' && error != 'null') {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          color: Colors.amberAccent,
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(Icons.error_outline),
              ),
              Expanded(child: Text(error)),
            ],
          ),
        ),
      );
    } else {
      return const SizedBox(
        height: 0,
      );
    }
  }
}
