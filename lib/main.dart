import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login page',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Welcome back',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),

                      Card(
                        elevation: 12.0,
                        child:Container(
                        alignment: Alignment.center,

                        padding: EdgeInsets.all(16.0),
                        
                        
                        child: Column(children: [
                        TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),

                      ],),)),
                      
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              fixedSize: Size(200, 40),
                              shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20))),
                          onPressed: () {
                            

                            //
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text('Login with SNS',
                                style: TextStyle(color: Colors.grey)),
                          )),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue,
                                fixedSize: Size(150, 40),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Facebook',
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                fixedSize: Size(150, 40),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(20),
                                ),
                              ),
                              onPressed: () {},
                              child: Text('Github')),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
