import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: const [
            CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/pic1.jpg')),
            SizedBox(width: 4),
            Text(
              'Chats',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 20,
                  color: Colors.white,
                )),
            onPressed: () {},
          ),
          IconButton(
            icon: const CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 20,
                  color: Colors.white,
                )),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              padding: const EdgeInsets.all(5),
              child: Row(
                children: const [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(width: 5),
                  Text('Search'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 114,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildStoryItems(),
                separatorBuilder: (context, index) => const SizedBox(width: 15),
                itemCount: 7,
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => buildChatItems(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }

  //build item
  //build list
  //add item to list
  Widget buildStoryItems() => SizedBox(
        width: 70,
        child: Column(
          children: [
            Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/pic2.jpg'),
                    ),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: 1,
                        end: 1,
                      ),
                      child: CircleAvatar(
                        radius: 7,
                        backgroundColor: Colors.green,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 6),
                const Text(
                  'Mohamed Hassan ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      );
  Widget buildChatItems() => Row(children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: const [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images/pic3.jpg'),
            ),
            CircleAvatar(
              radius: 6,
              backgroundColor: Colors.white,
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                bottom: 1,
                end: 1,
              ),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ahmed Hassan',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Hello Mohamed I am your friend, How Are You Today?',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: 7,
                      height: 7,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const Text('02:00 AM'),
                ],
              ),
            ],
          ),
        ),
      ]);
}
