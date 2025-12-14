import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/converter_page.dart';
import 'package:project/profile_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFFB39DDB),
        foregroundColor: Colors.white,
        title: const Text("Dashboard"),
        actions: const [
          Icon(Icons.settings),
          SizedBox(width: 10),
          Icon(Icons.logout),
          SizedBox(width: 10),
        ],
      ),

      drawer: NavigationDrawer(
        children: [
          const DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF6A1B9A)),
              accountName: Text("Rowshon Ummi"),
              accountEmail: Text("rowshonummi@gmail.com"),
            ),
          ),

          ListTile(
            onTap: () => Navigator.pop(context),
            leading: const Icon(Icons.home, color: Color(0xFF9575CD)),
            title: const Text("Home"),
          ),

          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            leading: const Icon(Icons.person, color: Color(0xFF9575CD)),
            title: const Text("Profile"),
          ),

          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConverterPage()),
              );
            },
            leading: const Icon(Icons.currency_exchange, color: Color(0xFF9575CD)),
            title: const Text("Converter"),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    width: 500,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/developer.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Welcome Back!",
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF6A1B9A),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Explore your dashboard and manage your tasks efficiently. "
                          "Everything you need is right here.",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFD1C4E9),
                                foregroundColor: const Color(0xFF4A148C),
                                fixedSize: const Size(140, 45),
                              ),
                              child: const Text("Get Started"),
                            ),
                            const SizedBox(width: 10),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(
                                  color: Color(0xFFB39DDB),
                                  width: 2,
                                ),
                                foregroundColor: const Color(0xFF6A1B9A),
                                fixedSize: const Size(140, 45),
                              ),
                              child: const Text("More Options"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
