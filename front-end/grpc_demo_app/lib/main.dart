import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grpc_demo_app/network/grpc/generated/demo_api_service.pb.dart';
import 'package:grpc_demo_app/network/grpc/grpc_network_client_provider.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await GrpcNetworkClientProvider.init();
    runApp(const MyApp());
  }, (error, stack) {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  String _counter = '';

  void _unaryRequestAndResponse() async {
    final response = await GrpcNetworkClientProvider.instance.client
        .unaryRequestAndResponse(DemoApiRequestProto(
            //empty request
            ));
    setState(() {
      _counter =
          "Response double value from server: ${response.data.doubleValue}";
    });
  }

  void _streamingRequestAndUnaryResponse() async {
    final response = await GrpcNetworkClientProvider.instance.client
        .streamingRequestAndUnaryResponse(_streamingRequest());

    setState(() {
      _counter =
          "Response double value from server: ${response.data.doubleValue}";
    });
  }

  void _unaryRequestAndStreamingResponse() async {
    final streamingResponse = GrpcNetworkClientProvider.instance.client
        .unaryRequestAndStreamingResponse(DemoApiRequestProto());
    streamingResponse.listen((value) {
      setState(() {
        _counter =
            "Response double value from server: ${value.data.doubleValue}";
      });
    });
  }

  void _streamingRequestAndStreamingResponse() async {
    final streamingResponse = GrpcNetworkClientProvider.instance.client
        .streamingRequestAndResponse(_streamingRequest());
    streamingResponse.listen((value) {
      setState(() {
        _counter =
            "Response double value from server: ${value.data.doubleValue}";
      });
    });
  }

  Stream<DemoApiRequestProto> _streamingRequest() async* {
    int i = 0;
    while (i < 5) {
      yield DemoApiRequestProto();
      i++;
    }
    yield* const Stream.empty();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _counter,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _streamingRequestAndStreamingResponse,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
