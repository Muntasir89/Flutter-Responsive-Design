import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CodeX'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints){
            if(constraints.maxWidth < 500){
              return Column(
                children: [
                  buildBannerSlider(),
                  Expanded(child: buildIntroText()),
                ],
              );
            }else{
              return Row(
                children: [
                  buildBannerSlider(),
                  SizedBox(width: 24),
                  Expanded(child: buildIntroText()),
                ],
              );
            }
          }),
      ),
    );
  }
  Text buildIntroText() {
    return Text(
      'Hey there, \n\nCodeX is an ecosystem of practical reousce '
          'want to \nbuild high-quality mobile apps.',
      style: TextStyle(fontSize: 22),
    );
  }

  Container buildBannerSlider() {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
          borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}
