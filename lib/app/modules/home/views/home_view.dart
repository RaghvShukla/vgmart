import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx((){
          return Text(controller.count.value.toString());
        }),
        //title: const Text('VG Mart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                padding: const EdgeInsets.all(12.0),
                margin: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/grocery/milk_wide.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                padding: const EdgeInsets.all(12.0),
                margin: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Theme.of(context).colorScheme.primary,
                    ],

                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Order now pay later",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Groceries",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 110,
            child: ListView.builder(
                itemCount: grocery.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(grocery[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Trending",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 110,
            child: ListView.builder(
                itemCount: vegetables.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            image: AssetImage(vegetables[index]),
                            fit: BoxFit.cover)),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Expired",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {},
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 110,
            child: ListView.builder(
                itemCount: fruits.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.tertiaryContainer,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            image: AssetImage(fruits[index]),
                            fit: BoxFit.cover)),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: IconButton(onPressed: (){controller.count.value++;},icon: Icon(Icons.add),),
    );
  }
}

List<String> fruits = [
  "assets/grocery/apple.jfif",
  "assets/grocery/juice.webp",
  "assets/grocery/maggi.jpg",
];
List<String> grocery = [
  "assets/grocery/juice.webp",
  "assets/grocery/maggi.jpg",
  "assets/grocery/milk.png",
  "assets/grocery/salt.jpg"
];
List<String> vegetables = [
  "assets/grocery/ladyfinger.jpg",
  "assets/grocery/lemon.jfif",
  "assets/grocery/onion.jpg",
  "assets/grocery/potato.jpg",
  "assets/grocery/tomato.webp"
];
