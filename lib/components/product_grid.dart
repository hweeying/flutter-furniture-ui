import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_ui/models/product.dart';
import 'package:furniture_ecommerce_ui/widgets/product_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key, required this.productList}) : super(key: key);

  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (280 * (productList.length / 2).ceil()).toDouble(),
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: productList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisExtent: 280),
        itemBuilder: ((context, index) {
          return GestureDetector(
              onTap: () {}, child: ProductCard(product: productList[index]));
        }),
      ),
    );
  }
}
