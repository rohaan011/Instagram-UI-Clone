import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: GoogleFonts.pacifico(fontSize: 27),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.messenger_outline_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                userIcon(
                  'https://mir-s3-cdn-cf.behance.net/projects/404/888fdc114443263.Y3JvcCw1MzYsNDE5LDE0NTQsMTM0NA.png',
                  'Your Story',
                  true,
                ),
                userIcon(
                    'https://www.byrdie.com/thmb/7Ud5f0mRZVxQPnrgnEsHwcF_TZA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/selenagomez-2153554701-e18ea97ae0114dff86120647119a220b.jpg',
                    'selenagomez'),
                userIcon(
                    'https://logos-world.net/wp-content/uploads/2020/06/Inter-Miami-C.F.-Logo.png',
                    'intermiamifc'),
                userIcon(
                    'https://cdn.prod.website-files.com/630d4d1c4a462569dd189855/679959b3ffb28adacf08b8d9_1571936110994-2.jpeg',
                    'graceabrams'),
                userIcon(
                    'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/indizone/2022/05/30/vWsngVX/tak-tau-selera-musiknya-sendiri-jisoo-blackpink-belum-yakin-untuk-bersolo-karier86.jpg',
                    'sooyaaa__'),
                userIcon(
                    'https://www.j-14.com/wp-content/uploads/2022/08/shutterstock_editorial_13333087hx.jpg?w=732&resize=732%2C1024',
                    'lalalalisa_m'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget userIcon(String url, String userName, [bool showCamera = false]) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(url),
              ),
              if (showCamera) // Show camera icon only for "Your Story"
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 5), // Adds spacing
          Text(userName),
        ],
      ),
    );
  }
}
