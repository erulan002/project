import 'package:first/views/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ImageWidget(),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  MainInfoWidget(),
                  SizedBox(height: 25),
                  VideosWidget(),
                  SizedBox(height: 25),
                  InstagramReferenceWidget(),
                  SizedBox(height: 25),
                  CoursesWidget(),
                  SizedBox(height: 25),
                  PurchasedCoursesWidget(),
                  SizedBox(height: 25),
                ],
              ),
            ),
            ProductsWidget(),
          ],
        ),
      ),
    );
  }
}

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Color.fromRGBO(25, 25, 27, 1),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Товары',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 200,
              child: Scrollbar(
                child: ProductsListWidget(),
              ),
            ),
            _ElevatedButtonWidget(
              title: 'Смотреть все',
              backgroundColor: Color.fromRGBO(240, 169, 79, 1),
              foregroundColor: Color.fromRGBO(25, 25, 27, 1),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductsListWidget extends StatelessWidget {
  const ProductsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemExtent: 133.7,
      itemBuilder: (BuildContext context, int index) {
        return const ProductWidget();
      },
    );
  }
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            child: Image.asset(
              'lib/assets/images/product1.png',
              // fit: BoxFit.fitWidth,
            ),
          ),
          const Text(
            'В наличии 76 шт.',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(111, 111, 113, 1),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        'lib/assets/images/image1.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Text(
            'Lorem ipsum dolor sit amet',
            style: TextStyle(color: Color.fromRGBO(205, 70, 32, 1)),
            textAlign: TextAlign.right,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo',
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 15),
        _ElevatedButtonWidget(
          title: 'Читать блог',
          backgroundColor: Color.fromRGBO(240, 169, 79, 1),
          foregroundColor: Color.fromRGBO(229, 234, 235, 1),
        ),
        SizedBox(height: 20),
        _ElevatedButtonWidget(
          title: 'Журнал',
          backgroundColor: Color.fromRGBO(37, 159, 174, 1),
          foregroundColor: Color.fromRGBO(229, 234, 235, 1),
        ),
      ],
    );
  }
}

class _ElevatedButtonWidget extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color foregroundColor;
  const _ElevatedButtonWidget({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 36,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondPage(),
            ),
          );
        },
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(backgroundColor),
            foregroundColor: MaterialStatePropertyAll(foregroundColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ))),
        child: Text(title),
      ),
    );
  }
}

class InstagramReferenceWidget extends StatelessWidget {
  const InstagramReferenceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Мой Instagram',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          width: 315,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(
                    Color.fromRGBO(125, 4, 19, 1)),
                foregroundColor: const MaterialStatePropertyAll(
                    Color.fromRGBO(255, 169, 61, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ))),
            child: const Text('Смотреть профиль'),
          ),
        ),
      ],
    );
  }
}

class VideosWidget extends StatelessWidget {
  const VideosWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        VideosHeaderWidget(),
        Row(
          children: [
            VideoWidget(imageUrl: 'lib/assets/images/image2.png'),
            Spacer(),
            VideoWidget(imageUrl: 'lib/assets/images/image3.png'),
          ],
        )
      ],
    );
  }
}

class VideosHeaderWidget extends StatelessWidget {
  const VideosHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Свежие видео',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [Text('Смотреть все'), Icon(Icons.chevron_right_sharp)],
            ))
      ],
    );
  }
}

class VideoWidget extends StatelessWidget {
  final String imageUrl;
  const VideoWidget({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165,
      height: 190,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Image.asset(
              imageUrl,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus adipiscing elitaa...',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class CoursesWidget extends StatelessWidget {
  const CoursesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CoursesHeaderWidget(),
        Row(
          children: [
            CourseWidget(),
            Spacer(),
            CourseWidget(),
          ],
        )
      ],
    );
  }
}

class CoursesHeaderWidget extends StatelessWidget {
  const CoursesHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Популярные курсы',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const Row(
            children: [
              Text('Смотреть все'),
              Icon(Icons.chevron_right_sharp),
            ],
          ),
        ),
      ],
    );
  }
}

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 165,
          height: 215,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  'lib/assets/images/image4.png',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem ipsum',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur ',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '450.000 т',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(34, 160, 171, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 41,
            height: 30,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Color.fromRGBO(255, 169, 61, 1)),
            child: const Icon(
              Icons.favorite_border,
              color: Color.fromRGBO(125, 4, 19, 1),
            ),
          ),
        ),
      ],
    );
  }
}

class PurchasedCoursesWidget extends StatelessWidget {
  const PurchasedCoursesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PurchasedCourseHeaderWidget(),
        Row(
          children: [
            PurchasedCourseWidget(imageUrl: 'lib/assets/images/image5.png'),
            SizedBox(width: 10),
            PurchasedCourseWidget(imageUrl: 'lib/assets/images/image6.png'),
            SizedBox(width: 10),
            PurchasedCourseWidget(imageUrl: 'lib/assets/images/image7.png'),
          ],
        )
      ],
    );
  }
}

class PurchasedCourseHeaderWidget extends StatelessWidget {
  const PurchasedCourseHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Купленные курсы',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: const Row(
            children: [
              Text('Смотреть все'),
              Icon(Icons.chevron_right_sharp),
            ],
          ),
        ),
      ],
    );
  }
}

class PurchasedCourseWidget extends StatelessWidget {
  final String imageUrl;
  const PurchasedCourseWidget({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118,
      height: 135,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Image.asset(
              imageUrl,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: SizedBox(
                width: 165,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromRGBO(248, 182, 52, 1)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: const BorderSide(width: 6, color: Colors.black),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Подробнее',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
