import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> titles = ['Bike', 'Boat', 'Bus', 'Car'];

    // final titles = ['Bike', 'Boat', 'Bus', 'Car'];
    // final icons = [
    //   Icons.directions_bike,
    //   Icons.directions_boat,
    //   Icons.directions_bus,
    //   Icons.directions_car,
    // ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text("ListView"),
        ),
        body: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, nomor) {
              return Card(
                child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://picsum.photos/200/300?=$nomor")),
                    title: Text(titles[nomor]),
                    onTap: () {
                      setState(() {
                        titles.removeAt(nomor);
                      });
                    }),
              );
            })

        // // untuk membuat list view scr dinamis (bisa diubah berdasarkan datanya)
        // body: ListView.builder(
        //   itemCount: titles.length,
        //   itemBuilder: (context, nomor) {
        //     return Card(
        //         child: ListTile(
        //       leading: Icon(icons[nomor]),
        //       title: Text(titles[nomor]),
        //     ));
        //   },
        // ),

        // body: ListView(
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.green,
        //     ),
        //   ],
        // ), // This trailing comma makes auto-formatting nicer for build methods.

        //body: GridView(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 3, // ini jumlah fotonya ke samping brp
        //   ),
        //   children: [
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       decoration: const BoxDecoration(
        //         color: Colors.red,
        //         image: DecorationImage(
        //           image: AssetImage("dora.jpeg"), // bisa juga
        //         ),
        //       ),
        //     ),
        //     // Image.network("https://picsum.photos/200"), //bs jg
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.blue,
        //       child: const Image(image: AssetImage("dora.jpeg")), //bisa juga
        //       // child: Image.network("https://picsum.photos/200"), bisa juga
        //     ),
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.black,
        //     ),
        //     Container(
        //       width: 100,
        //       height: 250,
        //       margin: const EdgeInsets.only(bottom: 10),
        //       color: Colors.yellow,
        //     ),
        //   ],
        // ),
        );
  }
}
