import 'package:flutter/material.dart';

Widget middle() {
  return Builder(builder: (context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular((10)),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 45,
                  backgroundImage: NetworkImage(
                      'https://static.makeuseof.com/wp-content/uploads/2015/11/perfect-profile-picture-all-about-face.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Maria das Dores',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(
                        'mdores@gmail.com',
                        style: TextStyle(fontSize: 12),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 200, height: 1, color: Colors.grey),
                      ),
                      Text(
                        '21 1234-5678',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  color: Colors.green,
                  icon: Icon(Icons.phone),
                ),
              ],
            ),
          )
        ],
      ),
    );
  });
}
