import 'package:flutter/material.dart';
import 'package:ufcapp/app/shared/widgets/qr_scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: Icon(Icons.menu, color: Colors.deepOrange,),
            floating: false,
            pinned: true,
            snap: false,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Mesas',
                style: TextStyle(fontWeight: FontWeight.w500, color: Colors.deepOrange,)
              ),
              background: Image.network(
                "https://image.freepik.com/fotos-gratis/copo-de-vinho-na-mesa-do-restaurante_23-2147731694.jpg",
                fit: BoxFit.cover,
              ),
            ),
            actions: <Widget>[
              
            ]
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverGrid.count(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: const Text('He\'d have you all unravel at the'),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ),
      ],
    ));
  }
}
