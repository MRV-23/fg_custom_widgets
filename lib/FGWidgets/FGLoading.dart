import 'package:flutter/material.dart';

class FGLoadingWidget extends StatelessWidget {
  const FGLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 8,
              ),
              Text(
                'Loading...',
              )
            ],
          ),
        ));
  }
}