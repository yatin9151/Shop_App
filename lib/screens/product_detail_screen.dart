import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = "/Product-Detail";

  @override
  Widget build(BuildContext context) {
    String productId = ModalRoute.of(context).settings.arguments;
    print(productId);

    final loadedProduct = Provider.of<ProductsProvider>(context, listen: false)     
        .findById(productId);// added to listen to only load data once and not rebuild when data changes
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
