import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'rohan_praz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.alternate_email_rounded),
          ),
          Icon(Icons.add_box_outlined),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundImage: NetworkImage(
                              'https://mir-s3-cdn-cf.behance.net/projects/404/888fdc114443263.Y3JvcCw1MzYsNDE5LDE0NTQsMTM0NA.png',
                            ),
                          ),
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
                          )
                        ],
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ronronron',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceEvenly, // Ensures even spacing
                            children: [
                              _buildStatColumn('40', 'Posts'),
                              SizedBox(width: 20),
                              _buildStatColumn('195', 'Followers'),
                              SizedBox(width: 20),
                              _buildStatColumn('40', 'Following'),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Let's Plan for sheypoksundo"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '@rohan_praz',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {}, child: Text('Edit Profile')),
                      ElevatedButton(
                          onPressed: () {}, child: Text('Share Profile')),
                      ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.person_add_alt_outlined)),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.grey.shade400,
                                      width: 2), // Grey border
                                  color: Colors.white, // White background
                                ),
                                child: CircleAvatar(
                                  radius: 31,
                                  backgroundColor: Colors
                                      .white, // Ensures the inside stays white
                                  child: Icon(Icons.add,
                                      size: 32,
                                      color: Colors.black87), // Add icon
                                ),
                              ),
                              Text('Add'),
                            ],
                          ),
                        ),
                        highlights(
                            'https://cdn.getyourguide.com/img/tour/a8807768851d62cbf0483d743946ae271c59507193ad9ba18b5c551949184ab6.jpg/99.jpg',
                            'Pokhara'),
                        highlights(
                            'https://peakpromotionnepal.com/wp-content/uploads/2022/02/Annapurna-Base-Camp-Trek.jpg',
                            'ABC'),
                        highlights(
                            'https://nepal8thwonder.com/wp-content/uploads/2023/07/Aerial-view-of-Tsho-Rolpa-Lake.jpg',
                            'Tsho-Rolpa'),
                        highlights(
                            'https://www.nepalindependentguide.com/wp-content/uploads/2021/04/Kori-Top.gif',
                            'Kori'),
                        highlights(
                            'https://cdn.getyourguide.com/img/tour/a8807768851d62cbf0483d743946ae271c59507193ad9ba18b5c551949184ab6.jpg/99.jpg',
                            'Pokhara'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Helper function to build stats column
  Widget _buildStatColumn(String count, String label) {
    return Column(
      children: [
        Text(count,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
        Text(label,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
      ],
    );
  }

  Widget highlights(String url, String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: NetworkImage(url),
          ),
          Text(text),
        ],
      ),
    );
  }
}
