import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laboratorios_dispositivosmoviles/pages/detail.dart';
import 'package:laboratorios_dispositivosmoviles/pages/listdetail.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print('Create Build');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Pixeled",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Ejemplo de laboratorio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _Ejemplo();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void setState(VoidCallback fn) {
    print('setState');
    super.setState(fn);
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble');
  }

  int _counter = 0;

  String _IconWidget = "assets/icons/Star_icon.svg";
  String _StarIcon = "assets/icons/Star_icon.svg";
  String _VictoryIcon = "assets/icons/Completed_icon.svg";
  String _DefeatIcon = "assets/icons/Failed_icon.svg";

  String _Message = "Toca el boton";

  void _incrementCounter() {
    setState(() {
      _counter++;

      if (_counter == 10) {
        _IconWidget = _DefeatIcon;
        _Message = "Derrota";
      } else if (_counter == 15) {
        _IconWidget = _VictoryIcon;
        _Message = "Victoria";
      }
    });
  }

  void _discrementCounter() {
    setState(() {
      _counter--;

      if (_counter == 10) {
        _IconWidget = _DefeatIcon;
        _Message = "Derrota";
      } else if (_counter == 15) {
        _IconWidget = _VictoryIcon;
        _Message = "Victoria";
      }
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _IconWidget = _StarIcon;
      _Message = "Toca el boton";
      print("Deactived");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(widget.title),
      ),
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SvgPicture.asset(
              _IconWidget,
              width: 200,
              height: 200,
            ),
            Text(_Message),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _discrementCounter,
                  child: const Icon(Icons.remove_circle_outline),
                ),
                TextButton(
                  onPressed: _resetCounter,
                  child: const Icon(Icons.replay_outlined),
                ),
                TextButton(
                  onPressed: _incrementCounter,
                  child: /*Text("Hola"),*/ const Icon(Icons.add_circle_outline),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ListDetail(),
                            ),
                          )
                        },
                    child: Text("Ir a Lista")),
                TextButton(
                    onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detail(),
                            ),
                          )
                        },
                    child: Text("Ir a Detalle")),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _Ejemplo extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void setState(VoidCallback fn) {
    print('setState');
    super.setState(fn);
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(widget.title),
        ),
        body: Row(
          children: [
            TextButton(
              onPressed: () => setState(() {}),
              child: Icon(Icons.lock_clock),
            )
          ],
        ));
  }
}
