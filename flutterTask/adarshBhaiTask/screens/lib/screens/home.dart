import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:screens/communs/app_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                    top: 20,
                    left: 10,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          iconSize: 20,
                          constraints: const BoxConstraints(maxWidth: 90),
                          padding: const EdgeInsets.all(4),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.white),
                              elevation: MaterialStateProperty.all(15),
                              shadowColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black)),
                          onPressed: () {},
                          icon: const Icon(Icons.keyboard_arrow_left_rounded),
                        ),
                        IconButton(
                          iconSize: 20,
                          constraints: const BoxConstraints(maxWidth: 90),
                          padding: const EdgeInsets.all(4),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.white),
                              elevation: MaterialStateProperty.all(15),
                              shadowColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.black)),
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.heart_fill,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )),
                const Center(
                  child: Image(
                    height: 400,
                    image: AssetImage("assets/images/dress1.png"),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 300,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Colors.blueGrey,
                              spreadRadius: .001,
                            )
                          ],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(children: [
                          const SizedBox(
                            height: 45,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AppText(
                                "Sportwear Set",
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                              AppText(
                                "\$ 80.00",
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              )
                            ],
                          ),
                          const Divider(
                            color: Color.fromARGB(30, 158, 158, 158),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const AppText(
                                      "Color",
                                      fontSize: 13,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 28,
                                          height: 28,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                    blurRadius: 10,
                                                    spreadRadius: .01,
                                                    color: Color.fromARGB(
                                                        169, 158, 158, 158),
                                                    offset: Offset(.5, .5))
                                              ],
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 4),
                                              color: Colors.orange,
                                              shape: BoxShape.circle),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 28,
                                          height: 28,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 4),
                                              color: Colors.black,
                                              shape: BoxShape.circle),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 28,
                                          height: 28,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white,
                                                  width: 4),
                                              color: Colors.pinkAccent,
                                              shape: BoxShape.circle),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const AppText(
                                      "Size",
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 28,
                                          height: 28,
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  31, 158, 158, 158),
                                              shape: BoxShape.circle),
                                          child: const AppText(
                                            "S",
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 28,
                                          height: 28,
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  31, 158, 158, 158),
                                              shape: BoxShape.circle),
                                          child: const AppText(
                                            "M",
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          width: 28,
                                          height: 28,
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 96, 96, 96),
                                              shape: BoxShape.circle),
                                          child: const AppText(
                                            "L",
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Divider(
                            color: Color.fromARGB(30, 158, 158, 158),
                          ),
                          const ExpansionTile(
                            tilePadding: EdgeInsets.symmetric(horizontal: 0),
                            initiallyExpanded: true,
                            title: AppText("Description",
                                fontWeight: FontWeight.w500),
                            children: [
                              AppText(
                                  "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Harum eaque voluptas temporibus, quibusdam hic est possimus tempore incidunt aperiam consequuntur perspiciatis deserunt cupiditate magni aut laborum dolorem voluptatem amet ea!")
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          ExpansionTile(
                            initiallyExpanded: true,
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                            title: const AppText(
                              "Reviews",
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          AppText(
                                            "4.9",
                                            fontSize: 30,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          AppText(
                                            "     OUT OF 5",
                                            fontSize: 9,
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                  color: Colors.teal,
                                                  size: 18,
                                                  Icons.star_rounded),
                                              Icon(
                                                  color: Colors.teal,
                                                  size: 18,
                                                  Icons.star_rounded),
                                              Icon(
                                                  color: Colors.teal,
                                                  size: 18,
                                                  Icons.star_rounded),
                                              Icon(
                                                  color: Colors.teal,
                                                  size: 18,
                                                  Icons.star_rounded),
                                              Icon(
                                                  color: Colors.teal,
                                                  size: 18,
                                                  Icons.star_rounded)
                                            ],
                                          ),
                                          AppText(
                                            "83 ratings",
                                            color: Colors.grey,
                                            fontSize: 10,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Row(
                                      children: [
                                        const AppText(
                                          "5",
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        const Icon(
                                          size: 17,
                                          Icons.star_rounded,
                                          color: Colors.teal,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 5,
                                            width: 100,
                                            child: LinearProgressIndicator(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      60, 158, 158, 158),
                                              value: .8,
                                              color: Colors.teal,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const AppText(
                                          "80%",
                                          fontSize: 12,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    child: Row(
                                      children: [
                                        const AppText(
                                          "4",
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        const Icon(
                                          size: 17,
                                          Icons.star_rounded,
                                          color: Colors.teal,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 5,
                                            width: 100,
                                            child: LinearProgressIndicator(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      60, 158, 158, 158),
                                              value: .12,
                                              color: Colors.teal,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const AppText(
                                          "12%",
                                          fontSize: 12,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                      children: [
                                        const AppText(
                                          "3",
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        const Icon(
                                          size: 17,
                                          Icons.star_rounded,
                                          color: Colors.teal,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 5,
                                            width: 100,
                                            child: LinearProgressIndicator(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      60, 158, 158, 158),
                                              value: .05,
                                              color: Colors.teal,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const AppText(
                                          "5%",
                                          fontSize: 12,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                      children: [
                                        const AppText(
                                          "2",
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        const Icon(
                                          size: 17,
                                          Icons.star_rounded,
                                          color: Colors.teal,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 5,
                                            width: 100,
                                            child: LinearProgressIndicator(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      60, 158, 158, 158),
                                              value: .03,
                                              color: Colors.teal,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const AppText(
                                          "3%",
                                          fontSize: 12,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                      children: [
                                        const AppText(
                                          "1",
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        const Icon(
                                          size: 17,
                                          Icons.star_rounded,
                                          color: Colors.teal,
                                        ),
                                        const SizedBox(
                                          width: 13,
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 5,
                                            width: 100,
                                            child: LinearProgressIndicator(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      60, 158, 158, 158),
                                              value: 0,
                                              color: Colors.teal,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const AppText(
                                          "0%",
                                          fontSize: 12,
                                        )
                                      ],
                                    ),
                                  ),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AppText(
                                        "47 Reviews",
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                      Row(
                                        children: [
                                          AppText(
                                            "WRITE A REVIEW ",
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                          Icon(
                                            Icons.edit,
                                            color: Colors.grey,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/images/dress2.png"),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppText(
                                                "Jennifer Rose",
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                      color: Colors.teal,
                                                      size: 16,
                                                      Icons.star_rounded),
                                                  Icon(
                                                      color: Colors.teal,
                                                      size: 16,
                                                      Icons.star_rounded),
                                                  Icon(
                                                      color: Colors.teal,
                                                      size: 16,
                                                      Icons.star_rounded),
                                                  Icon(
                                                      color: Colors.teal,
                                                      size: 16,
                                                      Icons.star_rounded),
                                                  Icon(
                                                      color: Colors.teal,
                                                      size: 16,
                                                      Icons.star_rounded)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: SizedBox(),
                                          ),
                                          AppText(
                                            "5m ago",
                                            fontSize: 12,
                                            color: Colors.grey,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      AppText(
                                          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Harum eaque voluptas  ")
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Column(
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/images/dress2.png"),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              AppText(
                                                "Jennifer Rose",
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                      color: Colors.teal,
                                                      size: 16,
                                                      Icons.star_rounded),
                                                  Icon(
                                                      color: Colors.teal,
                                                      size: 16,
                                                      Icons.star_rounded),
                                                  Icon(
                                                      color: Colors.teal,
                                                      size: 16,
                                                      Icons.star_rounded),
                                                  Icon(
                                                      color: Colors.teal,
                                                      size: 16,
                                                      Icons.star_rounded),
                                                  Icon(
                                                      color: Colors.teal,
                                                      size: 16,
                                                      Icons.star_rounded)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: SizedBox(),
                                          ),
                                          AppText(
                                            "5m ago",
                                            fontSize: 12,
                                            color: Colors.grey,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      AppText(
                                          "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Harum eaque voluptas  ")
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ExpansionTile(
                            initiallyExpanded: true,
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 0),
                            title: const AppText(
                              "Similar Product",
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 170,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      "assets/images/dress2.png"))),
                                        ),
                                        const AppText(
                                          "Rice Crop Hoodie",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        const AppText(
                                          "\$ 43.00",
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 170,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      "assets/images/dress2.png"))),
                                        ),
                                        const AppText(
                                          "Rice Crop Hoodie",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        const AppText(
                                          "\$ 43.00",
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 170,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      "assets/images/dress2.png"))),
                                        ),
                                        const AppText(
                                          "Rice Crop Hoodie",
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        const AppText(
                                          "\$ 43.00",
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 100,
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Color.fromARGB(255, 65, 65, 65),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        AppText(
                          "Add To Cart",
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
