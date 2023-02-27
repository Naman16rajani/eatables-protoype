import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../../components/product_card.dart';
import '../../../provider/product.dart';
import '../../../provider/products.dart';
import '../../../size_config.dart';

class ItemGridView extends StatefulWidget {
  final bool showOnlyFavorites;
  ItemGridView({Key? key, required this.showOnlyFavorites}) : super(key: key);

  @override
  State<ItemGridView> createState() => _ItemGridViewState();
}

class _ItemGridViewState extends State<ItemGridView> {
<<<<<<< HEAD
  final IOWebSocketChannel channel =
      IOWebSocketChannel.connect('ws://10.0.2.2:8080');
=======
  late WebSocketChannel _channel;
  late final StreamSubscription subscription;
  late final Stream stream;

  @override
  void initState() {
    super.initState();

    // Create a WebSocket connection and listen for incoming messages
    _channel = IOWebSocketChannel.connect(
      Uri.parse('ws://10.0.2.2:8080'),
    );
  }

  @override
  void dispose() {
    _channel.sink.close();
    subscription.cancel();

    super.dispose();
  }
>>>>>>> 7f15a6223d0b78e9a5ab8e5ae0e6882edec7f599

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    List<Product> data = [];
    var data2 = {
      'type': 'getData',
      'data': {'id': 123, 'name': 'John Doe'}
    };
    List<Product> data3;
    print(data2);

<<<<<<< HEAD
    channel.sink.add(jsonEncode(data2));
    void dispose() {}
    // final data = productsData.getData(showOnlyFavorites);
    return StreamBuilder(
        // stream: productsData.getStream(channel),
        stream: channel.stream,
=======
    _channel.sink.add(jsonEncode(data2));
    return StreamBuilder<dynamic>(
        stream: _channel.stream,
>>>>>>> 7f15a6223d0b78e9a5ab8e5ae0e6882edec7f599
        builder: (context, snapshot) {
          // if (snapshot.hasData) {
          // print(";;;;;;;;;;;;;;;;;;;;;;;;;;;");
          // print(snapshot.data);
          // }
          // print("=-=-=-=-=-=");
          // print(snapshot.data);
          // print("=-=-=-=-=-=");

          data =
              snapshot.hasData ? productsData.getStreamData(snapshot.data) : [];
          data3 = data.toList();
          return SizedBox(
            height: (MediaQuery.of(context).size.height -
                    getProportionateScreenWidth(80) -
                    38) *
                0.9,
            //TODO :Change height
            child: snapshot.hasData
                ? GridView.builder(
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (ctx, index) {
                      print(index);

                      Product dataValue = data3[index];
                      return ChangeNotifierProvider.value(
                        value: dataValue,
                        child: ProductCard(
                          product: dataValue,
                        ),
                      );
                    },
                    itemCount: data.toSet().toList().length,
                  )
                : const Center(child: CircularProgressIndicator()),
          );
        });
  }
}
