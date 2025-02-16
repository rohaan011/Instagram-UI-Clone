import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_rounded),
        title: Text(
          'rohan_praz',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.edit_note_rounded,
            size: 40,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 36,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    userIcon(
                        'https://mir-s3-cdn-cf.behance.net/projects/404/888fdc114443263.Y3JvcCw1MzYsNDE5LDE0NTQsMTM0NA.png',
                        'Your note',
                        true),
                    userIcon(
                        'https://www.pinkvilla.com/images/2024-04/1778975868_zoro-manga-a.jpg',
                        'Roronoa Zoro',
                        true),
                    userIcon(
                      'https://beebom.com/wp-content/uploads/2023/06/Ace-dies-in-anime.jpg?w=1024&quality=75',
                      'Portgas D Ace',
                    ),
                    userIcon(
                        'https://i.pinimg.com/736x/d3/51/84/d351847348dd0dabeac308be8e2bb072.jpg',
                        'Sanji',
                        true),
                    userIcon(
                        'https://static1.cbrimages.com/wordpress/wp-content/uploads/2024/09/nico-robin-and-poneglyph.jpg',
                        'Nico Robin',
                        true),
                    userIcon(
                        'https://i.scdn.co/image/ab67616d0000b2738c5b943cb9cfbc924e4bf9cc',
                        'Nami',
                        true),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'Messages',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(Icons.notifications_off_outlined),
                  Spacer(),
                  Text(
                    'Requests',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
              messageTile(
                'https://www.pinkvilla.com/images/2024-04/1778975868_zoro-manga-a.jpg',
                'Roronoa Zoro',
                'Sent a reel by Shanks',
                true,
                false,
              ),
              messageTile(
                'https://i.pinimg.com/736x/d3/51/84/d351847348dd0dabeac308be8e2bb072.jpg',
                'Sanji',
                'Cook some meattttttttt',
                true,
                false,
              ),
              messageTile(
                'https://cdn.oneesports.gg/cdn-data/2024/06/OnePiece_TrarfalgarLaw-1024x576.jpg',
                'Trafalgar D. Water Law',
                'Active 2h ago',
                false,
                false,
              ),
              messageTile(
                'https://staticg.sportskeeda.com/editor/2024/02/fde01-17074406449745-1920.jpg',
                'Bartolomeo ',
                'LUFFY-SENPAI!!! 😭🔥 I just finished making another shrine for you!!',
                true,
                false,
              ),
              messageTile(
                'https://comicbook.com/wp-content/uploads/sites/4/2024/08/20650189-81a1-4040-906b-bd96346954d7.png',
                'Sabo',
                'You know you can count on me.',
                false,
                false,
              ),
              messageTile(
                'https://i.pinimg.com/736x/9d/41/32/9d41323ed75a9c7a74bedb7202f07d93.jpg',
                'Boa Haancook',
                'Luffy, don’t forget about me!❤️❤️❤️ ',
                false,
                true,
              ),
              messageTile(
                'https://beebom.com/wp-content/uploads/2023/06/Ace-dies-in-anime.jpg?w=1024&quality=75',
                'Portgas D Ace',
                'Active 16yr ago',
                false,
                false,
              ),
              messageTile(
                'https://mir-s3-cdn-cf.behance.net/projects/404/888fdc114443263.Y3JvcCw1MzYsNDE5LDE0NTQsMTM0NA.png',
                'Roronoa Zoro',
                'booze',
                true,
                false,
              ),
              messageTile(
                'https://mir-s3-cdn-cf.behance.net/projects/404/888fdc114443263.Y3JvcCw1MzYsNDE5LDE0NTQsMTM0NA.png',
                'Roronoa Zoro',
                'booze',
                true,
                false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userIcon(String url, String userName, [bool active = false]) {
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
              if (active)
                Positioned(
                  right: 3,
                  bottom: 2,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
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

  Widget messageTile(
      String url, String userName, String message, bool active, bool seen) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 8, 8, 8),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(url),
              ),
              if (active)
                Positioned(
                  right: 3,
                  bottom: 2,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                    ),
                  ),
                ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: seen
                          ? FontWeight.bold
                          : FontWeight.normal, // Make message bold if seen
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
          Icon(
            Icons.camera_alt_outlined,
            size: 30,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
