import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_ui/models/product.dart';
import 'package:furniture_ecommerce_ui/theme.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(widget.product.imageUrl),
                    fit: BoxFit.cover,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
                  icon: isFav
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : Icon(
                          Icons.favorite_border,
                          color: AppTheme.themeColor[300],
                        ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          widget.product.name,
          style: AppTextStyle.productName,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "\$${widget.product.price}",
          style: AppTextStyle.price,
        ),
      ],
    );
  }
}
