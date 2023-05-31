import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Expanded(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 14, right: 14, top: 24),
              margin: EdgeInsets.only(bottom: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Welcome to MenRes!",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF142238)),
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white54,
                          ),
                          child: Icon(
                            Icons.notifications,
                            color: Color(0xFF142238),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.all(11),
                            decoration: BoxDecoration(
                                color: Color(0xFF142238),
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 4
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Total Barang",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  "54",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: EdgeInsets.all(11),
                            decoration: BoxDecoration(
                                color: Color(0xFF142238),
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 4
                                  )
                                ]
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "Total Gudang",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(height: 12),
                                Text(
                                  "23",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Detail Gudang",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF142238)
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_horiz),
                          tooltip: "Detail Barang",
                          color: Color(0xFF142238),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: ListView.builder(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return BoxGudang(nama_gudang: index.toString(), jumlah_barang: index+10);
                        },

                      ),
                    )
                  ],
                )
            ),
            Expanded(
              child: Container (
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.only(left: 14, right: 14, top: 24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, -2)
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Text(
                      "Aktivitas Terbaru",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF142238)
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.all(4),
                        itemCount: 20,
                        itemBuilder: (context, index) {
                          return ActivityCard();
                        },
                      ),
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF142238),
      elevation: 2,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex:-1,
              child: Icon(
                Icons.transit_enterexit,
                color: Colors.green,
                size: 28,
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Text(
                "Barang",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: -1,
              child: Text(
                "Gudang",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class BoxGudang extends StatelessWidget {
  final String nama_gudang;
  final int jumlah_barang;

  const BoxGudang({
    Key? key,
    required String this.nama_gudang,
    required int this.jumlah_barang
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(11),
      decoration: BoxDecoration(
          color: Color(0xFF142238),
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                blurRadius: 4
            )
          ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.warehouse,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                "Gudang " + nama_gudang,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            jumlah_barang.toString(),
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
