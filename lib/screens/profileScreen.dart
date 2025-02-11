import 'package:flutter/material.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  List<String> imageUrls = [
    'https://pbs.twimg.com/media/F_0m1DNXwAERccW?format=jpg&name=4096x4096',
    'https://staticg.sportskeeda.com/editor/2022/08/f5439-16613492156455-1920.jpg',
    'https://images.plex.tv/photo?size=large-1920&scale=1&url=https%3A%2F%2Fimage.tmdb.org%2Ft%2Fp%2Foriginal%2F59G8pVHbFqSuAQAitdK9CKGAZXX.jpg',
    'https://static.wikia.nocookie.net/onepiece/images/d/d1/Luffy_Surveys_Mokomo_Dukedom.png/revision/latest?cb=20160821185538',
    'https://e1.pxfuel.com/desktop-wallpaper/728/880/desktop-wallpaper-one-piece-one-piece-pelea-luffy-vs-doflamingo-luffy-vs-doflamingo-thumbnail.jpg',
    'https://static.wikia.nocookie.net/onepiece/images/d/df/Punk_Hazard_Arc.png/revision/latest/scale-to-width-down/1000?cb=20240418031118',
    'https://static.wikia.nocookie.net/onepiece/images/e/e5/Fish-Man_Island_Arc.png/revision/latest/scale-to-width-down/1000?cb=20210116220320',
    'https://static.wikia.nocookie.net/onepiece/images/f/f6/Zoro%2C_Luffy%2C_and_Sanji_Attack_PX-4.png/revision/latest?cb=20230828232341',
    'https://static.wikia.nocookie.net/onepiece/images/c/cf/Luffy_Declares_His_Weakness.png/revision/latest?cb=20141206163819',
    'https://hoganreviews.co.uk/wp-content/uploads/2019/12/op-marineford-arc-5.jpg?w=994&h=559',
  ];
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.grid_on_sharp),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.slow_motion_video_rounded),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person_pin_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: Posts(imageUrls),
            ),
          ],
        ),
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

  Widget Posts(List<String> urls) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 items per row
        crossAxisSpacing: 2.0, // Space between columns
        mainAxisSpacing: 2.0, // Space between rows
        childAspectRatio: 0.7,
      ),
      itemCount: urls.length, // Dynamic item count
      itemBuilder: (context, index) {
        return GridTile(
          child: Image.network(
            urls[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
