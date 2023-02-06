import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_ui/components/product_grid.dart';
import 'package:furniture_ecommerce_ui/product_list.dart';
import 'package:furniture_ecommerce_ui/widgets/app_button.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic categoryList = ["Lamp", "Chair", "Bed", "Table", "Door"];
    return SafeArea(
        child: SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryList.length,
                        itemBuilder: ((context, index) {
                          return Row(
                            children: [
                              AppButton(
                                  label: categoryList[index], onPressed: () {}),
                              const SizedBox(
                                width: 16,
                              ),
                            ],
                          );
                        })),
                  ),
                ),
              ],
            ),
            ProductGrid(productList: appProductList),
          ],
        ),
      ),
    ));
  }
}
