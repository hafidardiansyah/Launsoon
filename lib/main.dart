import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth > 600) {
              return _desktop();
            } else {
              return _mobile();
            }
          },
        ),
      ),
    );
  }
}

Widget _desktop() {
  return Center(
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 52),
          Image.asset(
            'images/Illustration.png',
            height: 300,
          ),
          SizedBox(height: 52),
          Text("We’re Launching Soon!",
              style: GoogleFonts.poppins(
                  fontSize: 64, fontWeight: FontWeight.w500)),
          SizedBox(height: 8),
          Text("Subcribe and get notified",
              style:
                  GoogleFonts.poppins(fontSize: 18, color: Color(0xFF828282))),
          SizedBox(height: 48),
          SizedBox(
            width: 600.0,
            child: Row(children: [
              Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Your email address...",
                        hintStyle: GoogleFonts.poppins(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        enabled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(30)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(30))),
                  )),
              SizedBox(width: 24.0),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Notfiy Me",
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide.none,
                      padding: EdgeInsets.symmetric(vertical: 23),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: Color(0xFF3F7BFF),
                      elevation: 0,
                    )),
              ),
            ]),
          ),
        ],
      ),
    ),
  );
}

Widget _mobile() {
  return Center(
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 32),
          Image.asset(
            'images/Illustration.png',
            height: 200,
          ),
          SizedBox(height: 32),
          Text("We’re Launching Soon!",
              style: GoogleFonts.poppins(
                  fontSize: 32, fontWeight: FontWeight.w500)),
          SizedBox(height: 6),
          Text("Subcribe and get notified",
              style:
                  GoogleFonts.poppins(fontSize: 14, color: Color(0xFF828282))),
          SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(children: [
              Expanded(
                  flex: 2,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Your email address...",
                        hintStyle: GoogleFonts.poppins(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        enabled: true,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(30)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.0),
                            borderRadius: BorderRadius.circular(30))),
                  )),
              SizedBox(width: 12.0),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Notfiy Me",
                        style:
                            GoogleFonts.poppins(fontWeight: FontWeight.w500)),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide.none,
                      padding: EdgeInsets.symmetric(vertical: 23),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      primary: Color(0xFF3F7BFF),
                      elevation: 0,
                    )),
              ),
            ]),
          ),
        ],
      ),
    ),
  );
}
