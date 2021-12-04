import 'package:flutter/material.dart';

void main() {
  runApp(CardProfile());
}

class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeProfile(),
    );
  }
}

class HomeProfile extends StatelessWidget {
  const HomeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(10.0)
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/img/sitiaulia.jpg'),
              ),
              Text(
                'Siti Aulia Urrahmah',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Colors.teal.shade100,
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailProfile(
                            "Detail Nomor Telepon",
                            "+62 821-5366-0823",
                            "Ini adalah nomor telepon Siti Aulia Urrahmah yang dapat dihubungi lewat WhatsApp atau Telepon Selular."
                          )
                        )
                    );
                  },
                  title: Text(
                    '+62 821-5366-0823',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailProfile(
                            "Detail Email",
                            "sitiaulia1092@gmail.com",
                            "Ini adalah email Siti Aulia Urrahmah dengan provider gmail, dapat menerima email dari provider apapun."
                          )
                        )
                    );
                  },
                  title: Text(
                    'sitiaulia1092@gmail.com',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.transgender,
                    color: Colors.teal,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailProfile(
                            "Detail Jenis Kelamin",
                            "Perempuan",
                            "Jenis kelamin dari Siti Aulia Urrahmah."
                          )
                        )
                    );
                  },
                  title: Text(
                    'Perempuan',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.link,
                    color: Colors.teal,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailProfile(
                            "Detail Github",
                            "https://github.com/sitiaulia/",
                            "Github dengan username sitiaulia yang memuat track record pengerjaan tugas dari Siti Aulia Urrahmah."
                        )
                        )
                    );
                  },
                  title: Text(
                    'https://github.com/sitiaulia/',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.tag,
                    color: Colors.teal,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailProfile(
                            "Detail NIM",
                            "19710111",
                            "NIM dari Siti Aulia Urrahmah."
                        )
                        )
                    );
                  },
                  title: Text(
                    '19710111',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.class_,
                    color: Colors.teal,
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailProfile(
                            "Detail Kelas",
                            "5A Non Reg Banjarbaru",
                            "Kelas terkini dari Siti Aulia Urrahmah per bulan desember 2021."
                        )
                        )
                    );
                  },
                  title: Text(
                    '5A Non Reg Banjarbaru',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10.0)
              )
            ],
          )
      ),),
    );
  }

}

class DetailProfile extends StatelessWidget {
  final String judul;
  final String konten;
  final String keterangan;

  DetailProfile(this.judul, this.konten, this.keterangan, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(judul),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              konten,
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  color: Colors.teal,
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
                keterangan,
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    color: Colors.teal,
                )
            ),
          )
        ],
      ),
    );
  }
}