import 'package:flutter/material.dart';
import 'package:get_api/model.dart';
import 'package:get_api/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JsonParseDemo(),
    );
  }
}

class JsonParseDemo extends StatelessWidget {
  /* ---------------------------------------------------------------------------- */
  const JsonParseDemo({Key key}) : super(key: key);
  /* ---------------------------------------------------------------------------- */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi!'),
        centerTitle: true,
      ),
      body: FutureBuilder<User>(
          future: NetService.fetchTickesInfo(),
          builder: (context, snapshot) => snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.projectInfos.length,
                  itemBuilder: (context, index) => Card(
                    child: Column(
                      children: [
                        Text(snapshot.data.projectInfos[index]?.pROJTNAME ??
                            '--'),
                        Text(snapshot.data.projectInfos[index]?.pROJTDESC ??
                            '--'),
                      ],
                    ),
                  ),
                )
              : snapshot.hasError
                  ? Text('Something was wrong!: ${snapshot.error}')
                  : Center(
                      child: CircularProgressIndicator(),
                    )),
    );
  }
}
