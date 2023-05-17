import 'package:flutter/material.dart';

class ProductThunbnail extends StatelessWidget {
  const ProductThunbnail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      height: 230,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Container(
              height: 130,
              color: Colors.blue,
              child: Image.asset("assets/thumbnailproduct.webp.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all( 8.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.pink.shade50
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      "100%",
                      style: TextStyle(fontSize: 8, color: Colors.pink,fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Rp. 39.000",
                style: TextStyle(fontSize:10,decoration: TextDecoration.lineThrough, color: Colors.grey),
                ),
              ],
            ),
          ),
            SizedBox(
              height: 2,
            ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Rp 0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(Icons.location_city, size: 12,
                ),
                Text("Jakarta", 
                style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          SizedBox(height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width: double.infinity, 
              height: 2, 
              color: Colors.red,
            ),
          ),
            SizedBox(
              height: 5,
            ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Segera habis", style: TextStyle(color: Colors.redAccent, fontSize: 9, fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}