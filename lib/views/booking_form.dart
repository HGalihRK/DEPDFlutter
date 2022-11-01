part of 'pages.dart';

class Bookingform extends StatefulWidget {
  const Bookingform({Key? key}) : super(key: key);
  static const String routeName = '/Bookingform';

  @override
  _BookingformState createState() => _BookingformState();
}

class _BookingformState extends State<Bookingform> {
  @override
  void initState() {
    super.initState();
  }

  final _Bookingkey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlEmail.dispose();
    ctrlPhone.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 32, 24, 32),
        child: Form(
          key: _Bookingkey,
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "Nama Lengkap",
                    prefixIcon: Icon(Icons.contacts)),
                controller: ctrlName,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {},
              ),
              SizedBox(
                height: 32,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email", prefixIcon: Icon(Icons.email)),
                controller: ctrlEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return !EmailValidator.validate(value.toString())
                      ? 'Email salah'
                      : null;
                },
              ),
              SizedBox(
                height: 32,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "Nomor Telepon", prefixIcon: Icon(Icons.phone)),
                controller: ctrlPhone,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {},
              ),
              SizedBox(
                height: 32,
              ),
              TextFormField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                    labelText: "Kota", prefixIcon: Icon(Icons.location_city)),
                controller: ctrlCity,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {},
              ),
              SizedBox(
                height: 32,
              ),
              Align(
                  child: ElevatedButton.icon(
                      onPressed: () {
                        if (_Bookingkey.currentState!.validate()) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Konfirmasi Booking"),
                                  content: Text(
                                    'Nama: ${ctrlName.text}\nEmail: ${ctrlEmail.text}\nNo HP: ${ctrlPhone.text}\nKota: ${ctrlCity.text}',
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, WidgetsPart1.routeName);
                                        },
                                        child: Text("OK"))
                                  ],
                                );
                              });
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Booking Gagal"),
                                  content: Text("Isi ulang semua form"),
                                  actions: <Widget>[
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Close'))
                                  ],
                                );
                              });
                        }
                      },
                      icon: Icon(Icons.save),
                      label: Text("Book")))
            ],
          ),
        ),
      ),
    );
  }
}
