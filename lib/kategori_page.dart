import 'package:flutter/material.dart';
import 'package:ahlidasabila_responsi/list_news_model.dart';
import 'base_network.dart';
import 'detail_page.dart';

class CategoryDetail extends StatelessWidget {
  final String? category;
  const CategoryDetail({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String kategori = "$category";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          'REPUBLIKA ' + kategori.toUpperCase(),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: FutureBuilder(
            future: BaseNetwork.get("$category"),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                ListNewsModel listNewsModel =
                    ListNewsModel.fromJson(snapshot.data);
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0;
                          i < listNewsModel.data!.posts!.length;
                          i++)
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                      link: listNewsModel.data!.posts![i].link,
                                      title:
                                          listNewsModel.data!.posts![i].title,
                                      pubDate:
                                          listNewsModel.data!.posts![i].pubDate,
                                      description: listNewsModel
                                          .data!.posts![i].description,
                                      thumbnail: listNewsModel
                                          .data!.posts![i].thumbnail),
                                ));
                          },
                          child: Card(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Text(
                                  "${listNewsModel.data!.posts![i].title}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    child: Image.network(
                                        "${listNewsModel.data!.posts![i].thumbnail}")),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
