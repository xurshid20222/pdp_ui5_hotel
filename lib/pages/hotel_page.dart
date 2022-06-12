import 'package:flutter/material.dart';

class HotelPage extends StatefulWidget {
  static const id = '/hotel_page';

  const HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #header
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/ic_header.jpg'),
              )),
              child: Container(
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.7),
                  Colors.black.withOpacity(.5),
                ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Best Hotels Ever',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 310,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for hotels...',
                          hintStyle: TextStyle(fontSize: 17),
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // #bodyCategory
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Business Hotels',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel1.jpg',
                          title: 'Hotel 1',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel2.jpg',
                          title: 'Hotel 2',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel3.jpg',
                          title: 'Hotel 3',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel4.jpg',
                          title: 'Hotel 4',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel5.jpg',
                          title: 'Hotel 5',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Business Hotels',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel4.jpg',
                          title: 'Hotel 1',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel5.jpg',
                          title: 'Hotel 2',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel3.jpg',
                          title: 'Hotel 3',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel1.jpg',
                          title: 'Hotel 4',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel2.jpg',
                          title: 'Hotel 5',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Business Hotels',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel3.jpg',
                          title: 'Hotel 1',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel4.jpg',
                          title: 'Hotel 2',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel5.jpg',
                          title: 'Hotel 3',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel2.jpg',
                          title: 'Hotel 4',
                        ),
                        makeBodyProduct(
                          image: 'assets/images/ic_hotel1.jpg',
                          title: 'Hotel 5',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeBodyProduct({
    image,
    title,
  }) {
    return AspectRatio(
      aspectRatio: 2.2 / 2,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ]),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
