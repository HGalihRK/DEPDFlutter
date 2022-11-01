part of 'pages.dart';

class WidgetsPart1 extends StatefulWidget {
  const WidgetsPart1({Key? key}) : super(key: key);
  static const String routeName = '/WidgetsPart1';

  @override
  _WidgetsPart1State createState() => _WidgetsPart1State();
}

class _WidgetsPart1State extends State<WidgetsPart1> {
  bool _isLikeButtonClicked = false;
  List<Widget> widgets = [];

  _WidgetsPart1State() {
    widgets.add(Text(
      "Hotel Ciputra merupakan hotel bisnis internasional bintang 4 yang menawarkan wisatawan penawaran terbaik tanpa mengorbankan kemewahan, fungsionalitas, dan kenyamanan. Para tamu dapat memilih di antara 336 kamar yang tersedia dalam berbagai tipe.",
      style: TextStyle(
        fontSize: 16,
      ),
    ));
    widgets.add(Text(
        "\n Seluruh kamar dirancang secara elegan dan fungsional untuk memastikan kenyamanan para tamu selama menginap.",
        style: TextStyle(fontSize: 16)));
    widgets.add(Text(
        "\nHotel Ciputra Jakarta juga menyediakan ruang serbaguna untuk memenuhi kebutuhan perusahaan-perusahaan dalam penyelenggaraan berbagai acara, seperti pertemuan bisnis hingga acara dan jamuan dalam jumlah besar.",
        style: TextStyle(fontSize: 16)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 89, 173),
      appBar: AppBar(
        title: Text("Mission 1"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromARGB(255, 106, 164, 212), Colors.white])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Flexible(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  //color: Colors.blueGrey,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          'assets/images/gambar1.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: const EdgeInsets.all(8),
                                shape: CircleBorder()),
                            child: IconButton(
                              icon: const Icon(Icons.heart_broken_rounded),
                              iconSize: 25,
                              color: _isLikeButtonClicked
                                  ? Color.fromARGB(255, 255, 174, 0)
                                  : Color.fromARGB(255, 139, 127, 124),
                              onPressed: () {
                                setState(() {
                                  _isLikeButtonClicked = !_isLikeButtonClicked;
                                });
                              },
                            )),
                      )
                    ],
                  ),
                )),
            Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/images/gambar2.jpg"))),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                      "assets/images/gambar3.jpeg"))),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/images/gambar4.jpg"))),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage("assets/images/gambar5.jpg"))),
                        ),
                      )
                    ],
                  ),
                )),
            Flexible(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Column(
                    children: [
                      Flexible(
                          flex: 0,
                          child: Container(
                            height: 30,
                            alignment: Alignment.topCenter,
                            child: Text(
                              "Selamat datang di Hotel Ciputra",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          )),
                      Flexible(
                        child: Container(
                            height: 300,
                            child: Stack(
                              children: [
                                ListView(
                                  children: widgets,
                                ),
                                Align(
                                    child: Container(
                                  margin: EdgeInsets.all(5.0),
                                  padding: EdgeInsets.all(5.0),
                                  alignment: Alignment.bottomRight,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, Bookingform.routeName);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30))),
                                    child: Ink(
                                      decoration: BoxDecoration(
                                          gradient:
                                              const LinearGradient(colors: [
                                            Color.fromARGB(255, 106, 164, 212),
                                            Color.fromARGB(255, 255, 247, 247)
                                          ]),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Container(
                                        width: 150,
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Book Now',
                                          style: const TextStyle(
                                              fontSize: 24,
                                              fontStyle: FontStyle.italic),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                              ],
                            )),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
