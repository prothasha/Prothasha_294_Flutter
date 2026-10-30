import 'package:flutter/material.dart';
 
class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});
 
  @override
  Widget build(BuildContext context) {
    var myItems = [
      {
        "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzflSm021ikP8c8Hx-2lT97XYwahoPGRVxbyXU7HBE4YQx2TJjuzRtxgc&s",
        "title": "Panda-1",
      },
      {
        "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdkU2bZq3xnQSSOTRRik1-rvjKKHR91mqyht1XX_xMDeCsqKcHQuzGaIM&s",
        "title": "Panda-2",
      },
      {
        "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2-2S-GFhIkTuoBWWPk_bGHT9TEBRErGfR5VjPgl3_3YI86_PLPt-0Vvo&s",
        "title": "Panda-3",
      },
      {
        "img": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA-JXdeRQ8tXim87kJS40FqRwEJTXJKknjN-Y1ftV4SBm-P069eGjAWEA&s",
        "title": "Panda-4",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Page"),
        backgroundColor: const Color.fromARGB(255, 177, 126, 157),
      ),
      // body: ListView.builder(
      //   itemCount: myItems.length,
      //   itemBuilder: (context, index) {
      //     return Card(
      //       child: Row(
      //         children: [
      //           Image.network(myItems[index]['img']!, height: 100, width: 100),
      //           Text(myItems[index]['title']!),
      //         ],
      //       ),
      //     );
      //   },
      // ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(myItems[index]['img']!, height: 100, width: 100),
                SizedBox(width: 20),
                Text(myItems[index]['title']!),
              ],
            ),
          );
        },
      ),
    );
  }
}