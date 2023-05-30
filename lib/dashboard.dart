import 'package:flutter/material.dart';
import 'package:ahlidasabila_responsi/kategori_page.dart';
import 'kategori_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                "https://static.republika.co.id/files/images/logo.png"),
            const SizedBox(
              height: 100,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetail(
                            category: "terbaru",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: Container(
                    width: 110,
                    child: Text(
                      "TERBARU",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetail(
                            category: "daerah",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: Container(
                    width: 110,
                    child: Text(
                      "DAERAH",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetail(
                            category: "internasional",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: Container(
                    width: 110,
                    child: Text(
                      "INTERNASIONAL",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryDetail(
                            category: "islam",
                          ),
                        ));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: Container(
                    width: 110,
                    child: Text(
                      "ISLAM",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
