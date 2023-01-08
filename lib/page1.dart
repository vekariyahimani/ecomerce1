import 'package:ecomerce1/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _HomepageState();
}

class _HomepageState extends State<Page1> {
  List Pimage = [
    "assets/image/acer.jpg",
    "assets/image/apple.jpg",
    "assets/image/asus.jpg",
    "assets/image/dell.jpg",
    "assets/image/hp.jpg",
    "assets/image/lenovo.jpg",
    "assets/image/msi.jpg",
    "assets/image/samsunge.jpg",
  ];
  List Pname = [
    "Acer Laptop",
    "Apple Mackbook",
    "Asus Laptop",
    "Dell Laptop",
    "HP Laptop",
    "LENOVO Laptop",
    "MSI Laptop",
    "SAM Laptop"
  ];

  List Pprice = [
    "200000",
    "30000",
    "40000",
    "80000",
    "30000",
    "10000",
    "200000",
    "30000",
  ];

  List Pdescrption = [
    "Unlocked\nWindows 11 Home\n16 GB\nwidth 39.5",
    "Unlocked\n16 MP Chip scrren\n16 GB\nwidth 40.5",
    "Unlocked\n16 GB\nWindows 11 Home\nwidth 39.5",
    "Unlocked\nCore i3\n8 GB\nwidth 39.5",
    "Unlocked\nWindows 11 Home\n16 GB\nwidth 39.5",
    "Unlocked\nWindows 11 Home\n16 GB\nwidth 39.5",
    "Unlocked\nWindows 11 Home\n16 GB\nwidth 39.5",
    "Unlocked\nWindows 11 Home\n16 GB\nwidth 39.5",
  ];

  List l1 = [];
  int a = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade700,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore Product",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Product",
                            hintStyle: TextStyle(fontSize: 20),
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 25),
                    Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Icon(Icons.camera_alt_outlined,
                          color: Color(0xff3B62E7), size: 30),
                    ),
                  ],
                ),
                Text(
                  "Electronics",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: Pname.asMap()
                        .entries
                        .map((e) => Product(Pimage[e.key], Pprice[e.key],
                            Pname[e.key], Pdescrption[e.key]))
                        .toList(),
                  ),
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.favorite_border_sharp,
                            color: Colors.blue.shade700, size: 30),
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.tune,
                            color: Colors.blue.shade700, size: 30),
                      ),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.white,borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.shopping_bag_outlined,color: Colors.blue.shade700,size: 30),
                      ),

                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }

  Widget Product(String image, String price, String name, String description) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Expanded(
        child: Container(
          height: 450,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: FloatingActionButton(
                        backgroundColor: Color(0xffEBF0FD),
                        elevation: 0,
                        onPressed: () {
                          setState(() {
                            if (a == 0) {
                              a = 1;
                            } else {
                              a = 0;
                            }
                          });
                        },
                        child: Icon(Icons.favorite,
                            color: a == 0 ? (Colors.white) : (Colors.red),
                            size: a == 0 ? 15 : 30),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blue.withOpacity(0.90),
                      elevation: 0,
                      onPressed: () {},
                      child: Icon(Icons.shopping_bag_outlined,
                          color: Colors.white, size: 30),
                    ),
                  ],
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2(image)));
                    });
                  },
                  child: Center(
                      child: Image.asset(
                    image,
                    width: 200,
                    height: 200,
                  )),
                ),
                Center(
                    child: Text("\$ $price", style: TextStyle(fontSize: 25))),
                Text("$name",
                    style: TextStyle(fontSize: 30, color: Colors.blue)),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffF7C525),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffF7C525),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffF7C525),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xffF7C525),
                    ),
                    Icon(
                      Icons.star_border,
                      color: Color(0xffF7C525),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    l1.add(image);
                    l1.add(price);
                    l1.add(name);
                    l1.add(description);
                    Navigator.pushNamed(context, '2', arguments: l1);
                  },
                  child: Text(
                    "See the details >",
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
