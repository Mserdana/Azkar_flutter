import 'package:flutter/material.dart';


class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);

  @override
  _AppScreenState createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int _counter = 0;
  String _title = 'أستغفر الله';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            'سٌّبحة الأذكار',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Cario'),
          ),
          actions: [
            PopupMenuButton<int>(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('أستغفر الله'),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text('الحمد الله'),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text('سبحان الله'),
                    value: 3,
                  ),
                  PopupMenuItem(
                    child: Text('لا الاه الا الله'),
                    value: 4,
                  )
                ];
              },
              onSelected: (int selectedValue) {
                switch (selectedValue) {
                  case 1:
                    newTitle('أستغفر الله');
                    break;
                  case 2:
                    newTitle('الحمد الله');
                    break;
                  case 3:
                    newTitle('سبحان الله');
                    break;
                  case 4:
                    newTitle('لا الاه الا الله');
                    break;
                }
              },
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.black38,
          elevation: 5,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.RUURisM3cOyVWsAAibpswAAAAA?pid=ImgDet&w=450&h=612&rs=1'),
                fit: BoxFit.cover
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white54,
                backgroundImage: NetworkImage(
                    'https://th.bing.com/th/id/OIP.U8GyL2Xa8rAE7attgIi25wHaGz?pid=ImgDet&w=500&h=459&rs=1'),
                radius: 50,
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.only(top: 20, bottom: 20),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.25),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                          spreadRadius: 3)
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Cario'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 50,
                      color: Colors.teal,
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        _counter.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Cario',
                            fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter++;
                        });
                      },
                      child: Text(
                        'تسبيح',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Cario',
                            fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(0, 50),
                        primary: Color(0xff484848),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: DecoratedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _counter = 0;
                            });
                          },
                          child: Text(
                            'إعادة',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Cario',
                                fontSize: 15),
                          ),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(0, 50),
                              primary: Colors.transparent),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xff0B260C),
                          gradient: LinearGradient(
                            begin: AlignmentDirectional.topStart,
                            end: AlignmentDirectional.bottomEnd,
                            colors: [
                              Color(0xff75a478),
                              Color(0xffd7ffd9),
                            ],
                          ),
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(10)),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void newTitle(String newTitle) {
    if (_title != newTitle) {
      setState(() {
        _title = newTitle;
        _counter = 0;
      });
    }
  }
}
