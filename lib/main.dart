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
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          filled: true,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 10),
            bodyText2: TextStyle(fontSize: 15, color: Colors.white),
            subtitle1: TextStyle(fontSize: 1, color: Colors.black),
            subtitle2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            headline1: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 9, 31, 97))),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
      child: Scaffold(
           
          body: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: const BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Icon(Icons.arrow_back),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          'Lets Get Started!',
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          'creat an account to Q Allure to get all features',
                          style: Theme.of(context).textTheme.bodyText1,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 2,color: Color.fromARGB(255, 9, 31, 97)),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.person,
                                  size: 17,
                                  color: Color.fromARGB(255, 9, 31, 97)),
                              label: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 105, 0),
                                child: Text('Jhone Williams',
                                    style:
                                        Theme.of(context).textTheme.headline1),
                              ),
                            ),
                          ),
                        ),
                      )),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: SizedBox(
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email, size: 17),
                            labelText: 'Email '),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 20, 0),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            alignment: Alignment.center,
                            disabledHint: const Text("List of location",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10)),
                            items: null,
                            onChanged: null,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: SizedBox(
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone_android, size: 17),
                            labelText: 'Phone'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: SizedBox(
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_open, size: 17),
                            labelText: 'Passoword'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: SizedBox(
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_open, size: 17),
                            labelText: 'Confirm Passoword'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 9, 31, 97),
                          ),
                          child: Text(
                            'CREATE',
                            style: Theme.of(context).textTheme.bodyText2,
                          )),
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 25,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text(
                                'Already have an account?',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              Text('Login here',
                                  style: Theme.of(context).textTheme.headline1)
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
