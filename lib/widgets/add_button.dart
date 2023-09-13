import 'package:flutter/material.dart';

import 'model/module.dart';

class AddButton extends StatelessWidget {
  const AddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 5, offset: Offset(1, 5)),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(255, 255, 255, 10),
            shadowColor: Colors.black12,
          ),
          child: const Icon(
            Icons.add,
            size: 100,
            color: Color.fromRGBO(216, 79, 153, 1),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const PopUp();
              },
            );
          },
        ));
  }
}
