import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  Widget _appBar() {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Instagram_logo.svg/2560px-Instagram_logo.svg.png',
                width: 110),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_box_outlined, size: 27)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border, size: 27)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.send, size: 27)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _storyItem() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(7, 0, 7, 7),
      child: SizedBox(
        height: 110,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.black12, width: 2)),
              child: ClipOval(
                  child: Image.network(
                      'https://mblogthumb-phinf.pstatic.net/MjAxNzAzMTZfNTMg/MDAxNDg5NTk4ODUzMzY1.QIplajv488gKigciQqw-RZOg7CQm1Pn60CRm0GllZUUg.WvzRuDr9q_aHq49pE4nO4gzvdyKXDPYBXK4WS7x69xAg.JPEG.govlrhdwn555/IMG_5495.jpg?type=w800',
                      width: 70)),
            ),
            const SizedBox(height: 3),
            const Text('내 스토리'),
          ],
        ),
      ),
    );
  }

  Widget _stories() {
    return SizedBox(
      height: 110,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) => _storyItem(),
        itemCount: 10,
      ),
    );
  }

  Widget _contentsItem() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    'https://mblogthumb-phinf.pstatic.net/MjAxNzAzMTZfNTMg/MDAxNDg5NTk4ODUzMzY1.QIplajv488gKigciQqw-RZOg7CQm1Pn60CRm0GllZUUg.WvzRuDr9q_aHq49pE4nO4gzvdyKXDPYBXK4WS7x69xAg.JPEG.govlrhdwn555/IMG_5495.jpg?type=w800',
                    width: 30),
              ),
              const SizedBox(width: 5),
              const Text('threeplef',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(right:3.0),
                child: Icon(Icons.keyboard_control),
              ),
            ],
          ),
        ),
        Image.network(
            'https://image-cdn.hypb.st/https%3A%2F%2Fkr.hypebeast.com%2Ffiles%2F2022%2F05%2Finstagram-testing-feed-changes-looks-like-tiktok-tw.jpg?w=960&cbr=1&q=90&fit=max',
            height: 380,
            fit: BoxFit.cover),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.favorite_border)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.messenger_outline_rounded)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.send_outlined)),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_outlined)),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text('좋아요 136개',
                  style: TextStyle(fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 3.0),
                    child: Text('threeplef',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Text(
                      '안녕하세요 플러터로 만든 인스타그램입니다 팔로우 하고 소식을 받아보세요',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _contents() {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) => _contentsItem(),
        itemCount: 20,
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.home, size: 30)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.search, size: 30)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.movie_filter_outlined, size: 30)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag_outlined, size: 30)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_outlined, size: 30)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appBar(),
            _stories(),
            _contents(),
            _bottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
