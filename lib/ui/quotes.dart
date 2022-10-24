import 'package:flutter/material.dart';

class QuotesPage extends StatefulWidget {
  const QuotesPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<QuotesPage> createState() => _QuotesPageState();
}

class _QuotesPageState extends State<QuotesPage> {

  int _index = 0;

  final List<String> _quotes = const [
    "Stay Hungry. Stay Foolish.",
    "Good Artists Copy, Great Artists Steal.",
    "Argue with idiots, and you become an idiot.",
    "Be yourself; everyone else is already taken.",
    "Simplicity is the ultimate sophistication.",
    "To live is the rarest thing in the world. Most people exist, that is all.",
    "True friends stab you in the front.",
    "Women are made to be Loved, not understood.",
    "Be the change that you wish to see in the world.",
    "Live as if you were to die tomorrow. Learn as if you were to live forever.",
    "No one can make you feel inferior without your consent.",
    "Great minds discuss ideas; average minds discuss events; small minds discuss people.",
    "Do what you feel in your heart to be right - for you'll be criticized anyway.",
    "Do one thing every day that scares you.",
    "Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate; only love can do that.",
    "Our lives begin to end the day we become silent about things that matter.",
    "In the end, we will remember not the words of our enemies, but the silence of our friends.",
    "Injustice anywhere is a threat to justice everywhere.",
    "The time is always right to do what is right.",
    "Life's most persistent and urgent question is, 'What are you doing for others?",
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_quotes[_index]),
            TextButton.icon(
              icon: const Icon(Icons.wb_sunny),
              onPressed: _showQuote,
              label: const Text("Inspire me."),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _showQuote() {
    setState(() {
      if(_index != (_quotes.length - 1)) {
        _index = _index + 1;
      } else {
        _index = 0;
      }
    });
  }
}
