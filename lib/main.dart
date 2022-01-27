import 'package:flutter/material.dart';

void main() {
  runApp(Tasbeeh());
}

class Tasbeeh extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Tasbeeh();
  }
}

class _Tasbeeh extends State<Tasbeeh> {
  int counter = 0;

  @override
  void initState() {
    counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'DsDigital'), // применение шрифта ко всему приложению
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Digital Tasbeeh'),
          centerTitle: true,
          backgroundColor: const Color(0xFF003551),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("lib/images/background-flowers.jpg"),
              repeat: ImageRepeat.repeat,
            ),
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(
                top: 5,

              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  style: BorderStyle.solid,
                  color: const Color(0xFF5189A2),
                  width: 8,
                ),
                color: Colors.black,
              ),
              height: 300,
              width: 300,
              child: Column(
                children: <Widget>[
                  const Text(
                    'Tasbeeh',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.only(right: 7),
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: const Color(0xFF5189A2),
                        width: 1,
                      ),
                      color: const Color(0xFF04151F),
                    ),
                    width: 200,
                    height: 70,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        '$counter',
                        style: const TextStyle(
                          color: Color(0xFF1BB3F9),
                          fontSize: 70,
                          fontFamily: 'DsDigital',
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const <Widget>[
                      Text(
                        'Count',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Reset',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),

                  // Кнопки
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      // Правая кноппка, увеличивающая счетчик на единицу, обернутая в контейнер для увеличения размера
                      SizedBox(height: 120, width: 120,
                        child: FloatingActionButton(
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        }, backgroundColor: Colors.grey,
                      ),),

                      //Правая кнопка, сбрасывающая счетчик
                      FloatingActionButton.small(
                        onPressed: () {
                          setState(() {
                            counter = 0;
                          });
                        }, backgroundColor: Colors.grey,
                      ),
                    ],
                  ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
