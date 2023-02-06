import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_ui/components/product_grid.dart';
import 'package:furniture_ecommerce_ui/product_list.dart';
import 'package:furniture_ecommerce_ui/theme.dart';
import 'package:furniture_ecommerce_ui/widgets/app_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: 0.6,
                  image: AssetImage('assets/image/home.jpeg'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Life is\nso simple",
                    style: AppTextStyle.header1,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "This week 20% discount!",
                    style: AppTextStyle.body,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AppButton(label: "Buy now", onPressed: () {}),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Daily new",
                  style: AppTextStyle.title,
                ),
                InkWell(
                  onTap: () {
                    debugPrint("Navigate All");
                  },
                  child: Row(
                    children: [
                      Text(
                        "All",
                        style: AppTextStyle.hint,
                      ),
                      const Icon(Icons.navigate_next_rounded),
                    ],
                  ),
                )
              ],
            ),
          ),
          ProductGrid(productList: appProductList),
        ],
      ),
    );
  }
}
