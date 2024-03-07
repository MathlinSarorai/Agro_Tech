import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:agro_tech/companylogin.dart';

void main() {
  runApp(const AgroTech());
}

class AgroTech extends StatelessWidget {
  const AgroTech({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              // Image.asset(
              //   'images/Agro_tech.png',
              //   width: 400,
              //   height: 400,
              // ),
              Text(
                "Welcome",
                style: GoogleFonts.breeSerif(
                    fontSize: 30,
                    color: const Color.fromARGB(255, 249, 222, 71)),
              ), //background: rgba(249, 222, 71, 1);
              const SizedBox(
                height: 50,
              ),
              Text(
                "Please Sign in to view personalized recommendations",
                textAlign: TextAlign.center,
                style: GoogleFonts.breeSerif(
                    fontSize: 20,
                    color: const Color.fromARGB(
                        255, 4, 139, 63)), //background: rgba(4, 139, 62, 1);
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Companylogin()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(60, 5, 60, 5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: const Color.fromARGB(255, 84, 216, 141)),
                child: Text(
                  "Farmer",
                  style:
                      GoogleFonts.crimsonPro(color: Colors.white, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.fromLTRB(50, 5, 50, 5),
                    backgroundColor: const Color.fromARGB(255, 84, 216, 141)),
                child: Text(
                  "Company",
                  style:
                      GoogleFonts.crimsonPro(color: Colors.white, fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Create new Account",
                style: GoogleFonts.breeSerif(
                    color: const Color.fromARGB(255, 4, 139, 63), fontSize: 20),
              )
            ],
          ),
        ));
  }
}
