import 'package:flutter/material.dart';

class ItemCallWidget extends StatelessWidget {
  const ItemCallWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7.0),
      child: ListTile(
            leading: const CircleAvatar(
              radius: 26.0,
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/4922971/pexels-photo-4922971.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
              ),
            ),
            title: const Text(
              "Juan Manuel gonzales",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.call_made_rounded,
                  color: Color(0xff01C851),
                ),
                SizedBox(
                  width: 4.0,
                ),
                Text(
                  "Ayer 11:02 pm",
                  style: TextStyle(color: Colors.black45),
                )
              ],
            ),
            trailing: const Icon(
              Icons.call,
              color: Color(0xff01C851),
            ),
          ),
    );
  }
}