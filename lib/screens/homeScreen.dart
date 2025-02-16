import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/screens/chatScreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chatscreen()),
              );
            },
            icon: Icon(Icons.messenger_outline_rounded),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
            Posts(
                userImage:
                    'https://pbs.twimg.com/profile_images/1742837199005954048/YGI6Kw7P_400x400.jpg',
                userName: 'premierleague',
                postImage:
                    'https://pbs.twimg.com/media/GjLgwUeXoAE56Hk?format=jpg&name=large',
                like: '10.1K',
                comment: '2.1K',
                share: '234',
                caption:
                    'Starting the year in serious form 🍒Justin Kluivert is your @EASPORTSFC Player of the Month for January!'),
            Posts(
                userImage:
                    'https://pbs.twimg.com/profile_images/1742837199005954048/YGI6Kw7P_400x400.jpg',
                userName: 'premierleague',
                postImage:
                    'https://pbs.twimg.com/media/GjQ_W3lWkAAi9_W?format=jpg&name=large',
                like: '5.1K',
                comment: '1.1K',
                share: '434',
                caption:
                    'Which goalkeeper will end the season with the most clean sheets? 🧤'),
            Posts(
              userImage:
                  'https://pbs.twimg.com/profile_images/1410983637391069187/bxoCUxj8_400x400.jpg',
              userName: 'routineofnepalbanda',
              postImage:
                  'https://pbs.twimg.com/media/GjQWV0ZbYAE4VRs?format=jpg&name=large',
              like: '2.1K',
              comment: '453',
              share: '34',
              caption:
                  'Saturday & large number of people visiting Pashupatinath Temple. 🙏🏻❤️',
            ),
          ],
        ),
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
                radius: 45,
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

  Widget Posts({
    required String userImage,
    required String userName,
    required String postImage,
    required String like,
    required String comment,
    required String share,
    required String caption,
    String comments = '',
  }) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(userImage),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    userName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.more_horiz)
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            width: double.infinity,
            child: Image(image: NetworkImage(postImage)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(Icons.favorite_border),
                Text(like),
                const SizedBox(
                  width: 10,
                ),
                Icon(Icons.messenger_outline_rounded),
                Text(comment),
                const SizedBox(
                  width: 10,
                ),
                Icon(CupertinoIcons.arrowshape_turn_up_right),
                Text(share)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(caption),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
