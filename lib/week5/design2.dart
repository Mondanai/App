import 'package:flutter/material.dart';


class design2 extends StatelessWidget {
 const design2 ({super.key});


 @override
 Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.grey[800],
    appBar: AppBar(
      title: Text('My Profile', style: TextStyle(color: Colors.white),),
      centerTitle: true,
      backgroundColor: Colors.black,
    ),
    body: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage('https://icons.iconarchive.com/icons/diversity-avatars/avatars/512/batman-icon.png'),
        )
        ,Divider(color: Colors.grey[600],),
         Text('Name', style: TextStyle(color: Colors.grey)),
         Text(
             'John Doe',
             style: TextStyle(color: Colors.yellow, fontSize: 22),
           ),
           SizedBox(height: 10),
           Text('Age', style: TextStyle(color: Colors.grey)),
           Text('22', style: TextStyle(color: Colors.yellow, fontSize: 22)),
           SizedBox(height: 20),
            Row(
             children: [
               Icon(Icons.mail, color: Colors.grey),
               SizedBox(width: 10),
               Text(
                 'john-doe@mymail.com',
                 style: TextStyle(color: Colors.grey),
               ),
             ],
            )
      ],
    )
   );
 }
}