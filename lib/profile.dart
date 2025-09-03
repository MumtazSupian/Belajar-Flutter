import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailProfilePage extends StatelessWidget {
  const DetailProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black87,
        leading: const Padding(
          padding: EdgeInsets.only(left: 12),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/der.jpg"), // ganti dengan fotomu
          ),
        ),
        title: Text(
          "Profile Detail",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Color(0xFFE3E3E3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              _sectionTitle("About"),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: _cardDecoration(),
                child: Text(
                  "I am a Vocational High School Student at Wikrama Bogor with a passion for Mobile Development. I love listening to music and reading comics.",
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
                ),
              ),
              const SizedBox(height: 20),

              _sectionTitle("Skills"),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: _cardDecoration(),
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _skillChip("Flutter", Icons.flutter_dash),
                    _skillChip("HTML", Icons.code),
                    _skillChip("CSS", Icons.style),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              _sectionTitle("History"),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: _cardDecoration(),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.school, color: Colors.black87),
                      title: Text("SDN 1 Cisarua"),
                      subtitle: Text("2014 - 2020"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.school, color: Colors.black87),
                      title: Text("SMP Negeri 2 Cisarua"),
                      subtitle: Text("2020 - 2023"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.school, color: Colors.black87),
                      title: Text("SMK Wikrama Bogor"),
                      subtitle: Text("2023 - 2026"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  static BoxDecoration _cardDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 8,
          offset: const Offset(2, 4),
        ),
      ],
    );
  }

  // Ubah method _skillChip agar menerima icon
  Widget _skillChip(String label, IconData icon) {
    return Chip(
      avatar: Icon(icon, color: Colors.blueGrey, size: 20),
      label: Text(
        label,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      backgroundColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
