import 'package:flutter/material.dart';

import '../styles/colors.dart';

// TextFormField
Widget DefaultTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  Text? label,
  required Function validatorFunction,
}) {
  return TextFormField(
    keyboardType: type,
    controller: controller,
    validator: validatorFunction(),
    decoration: InputDecoration(
      label: label,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
    ),
  );
}

// Vertical Space
Widget defaultVerticalSpace({required double height}) =>
    SizedBox(height: height);

Widget defaultHorizontalSpace({required double width}) =>
    SizedBox(width: width);

Widget defaultDrawer() {
  return Drawer(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: mainColor,
          padding: const EdgeInsets.fromLTRB(20, 30, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                maxRadius: 35,
                backgroundColor: Colors.white,
                child: Center(child: Text('M',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,),),),
              ),
              defaultVerticalSpace(height: 13),
              const Text(
                "Mostafa Mahmoud",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
              defaultVerticalSpace(height: 7),
              const Text(
                "mostafamahmoudhf@gmail.com",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          // color: Colors.grey.withOpacity(0.5),
          width: double.infinity,
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  defaultHorizontalSpace(width: 15),
                  const Text("Home"),
                ],
              ),
              defaultVerticalSpace(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.note_add,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  defaultHorizontalSpace(width: 15),
                  const Text("Type your task"),
                ],
              ),
              defaultVerticalSpace(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.archive,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  defaultHorizontalSpace(width: 15),
                  const Text("Archive"),
                ],
              ),
              defaultVerticalSpace(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.restore_from_trash,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  defaultHorizontalSpace(width: 15),
                  const Text("Trash"),
                ],
              ),
              defaultVerticalSpace(height: 20),
              Row(
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.black.withOpacity(0.5),
                  ),
                  defaultHorizontalSpace(width: 15),
                  const Text("Settings"),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}
