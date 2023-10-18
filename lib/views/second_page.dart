import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            MainImageWidget(),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  HeaderTextWidget(),
                  SizedBox(height: 20),
                  TextWidget(),
                  SizedBox(height: 20),
                  ImageWidget(imageUrl: 'lib/assets/images/image2.png'),
                  SizedBox(height: 20),
                  TextWidget(),
                  SizedBox(height: 20),
                  LinkTextWidget(),
                  SizedBox(height: 20),
                  HeaderTextWidget(),
                  SizedBox(height: 20),
                  ImageWidget(imageUrl: 'lib/assets/images/image3.png'),
                  SizedBox(height: 20),
                  TextWidget(),
                  SizedBox(height: 20),
                  LinkTextWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainImageWidget extends StatelessWidget {
  const MainImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        'lib/assets/images/image1.png',
        fit: BoxFit.fill,
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  const ImageWidget({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(imageUrl),
    );
  }
}

class HeaderTextWidget extends StatelessWidget {
  const HeaderTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lorem ipsum dolor sit amet',
      style: TextStyle(fontSize: 16, color: Color.fromRGBO(205, 70, 32, 1)),
    );
  }
}

class LinkTextWidget extends StatelessWidget {
  const LinkTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: RichText(
        textAlign: TextAlign.start,
        text: const TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: 'Переходите по ',
                style: TextStyle(color: Color.fromRGBO(51, 51, 51, 1))),
            TextSpan(
              text: 'ссылке',
              style: TextStyle(color: Color.fromRGBO(255, 169, 61, 1)),
            ),
          ],
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo');
  }
}
