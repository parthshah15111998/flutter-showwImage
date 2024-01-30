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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print("hello");
                showDialog(
                  context: context,
                  builder: (context) {
                    return Container(
                      color: Colors.black,
                      height:  MediaQuery.of(context).size.height,
                      width:  MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                         GestureDetector(
                           onTap:(){
                             Navigator.pop(context);
                           },
                             child: Icon(Icons.close,color: Colors.white,)),

                          Image.network("https://picsum.photos/250?image=9",
                                  fit: BoxFit.fitWidth,
                                  height: 200,
                                  width: MediaQuery.of(context).size.width),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Image.network("https://media.istockphoto.com/id/1402501680/photo/mature-woman-with-moving-boxes-in-new-home.jpg?s=2048x2048&w=is&k=20&c=IMbcNzrN9k9y75_fRrlri9OpcArB0qgEf103Q-Bcolg=",
              height: 100,
              width: MediaQuery.of(context).size.width),
            )
          ],
        ),
      ),
    );
  }
}
