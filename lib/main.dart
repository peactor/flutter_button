import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MyApp());
}

final dummyItems = [
  'https://img1.daumcdn.net/thumb/R720x0/?fname=https://t1.daumcdn.net/news/201804/09/hani/20180409114603850xtpc.jpg',
  'https://img1.daumcdn.net/thumb/R720x0/?fname=https://t1.daumcdn.net/news/201804/09/hani/20180409114606433hvex.jpg',
  'https://tbc.imgdl.xcache.kinxcdn.com/cdn001/20181017/1137578838_1018_pet_14.jpg',
  'https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/993/4676721bf4bfd4631679fa5de9c32323.jpeg',
  'https://img1.daumcdn.net/thumb/R720x0/?fname=https://t1.daumcdn.net/news/201709/26/cosmopolitan/20170926150354755mlbh.jpg'
];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildTop(),
        _buildMiddle(),
        _buildBottom(),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '이용서비스',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내 정보',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  var _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          '복잡한 UI',
          style: TextStyle(color: Colors.white70),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          currentIndex: _index,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text('홈'),
              icon: Icon(Icons.assignment),
            ),
            BottomNavigationBarItem(
              title: Text('이용서비스'),
              icon: Icon(Icons.assignment),
            ),
            BottomNavigationBarItem(
              title: Text('내 정보'),
              icon: Icon(Icons.assignment),
            ),
          ]),
    );
  }
}

Widget _buildTop() {
  return Padding(
    padding: const EdgeInsets.only(top: 40, bottom: 40),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                print('클릭');
              },
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.local_taxi,
                    size: 40,
                    color: Colors.red,
                  ),
                  Text('택시'),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                print('클릭B');
              },
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.local_pizza_outlined,
                    size: 40,
                    color: Colors.orange,
                  ),
                  Text('피자'),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                print('클릭했다');
              },
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.local_airport,
                    size: 40,
                    color: Colors.blue,
                  ),
                  Text('비행기'),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_cafe_outlined,
                  size: 40,
                  color: Colors.teal,
                ),
                Text('커피'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                  color: Colors.red,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_pizza_outlined,
                  size: 40,
                  color: Colors.green,
                ),
                Text('피자'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_airport,
                  size: 40,
                  color: Colors.blue,
                ),
                Text('비행기'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_cafe_outlined,
                  size: 40,
                  color: Colors.teal,
                ),
                Text('커피'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_taxi,
                  size: 40,
                  color: Colors.red,
                ),
                Text('택시'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_pizza_outlined,
                  size: 40,
                  color: Colors.green,
                ),
                Text('피자'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_airport,
                  size: 40,
                  color: Colors.blue,
                ),
                Text('비행기'),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.local_cafe_outlined,
                  size: 40,
                  color: Colors.teal,
                ),
                Text('커피'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}

Widget _buildMiddle() {
  return CarouselSlider(
    options: CarouselOptions(height: 150.0),
    items: dummyItems.map((url) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              // decoration: BoxDecoration(color: Colors.orange),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                ),
              ));
        },
      );
    }).toList(),
  );
}

Widget _buildBottom() {
  final items = List.generate(10, (i){
    return ListTile(
      leading: Icon(Icons.notifications_none),
      title: Text('[이벤트] 이것은 공지사항입니다.'),
    );
  });

  return ListView(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    children: items,
  );
}
