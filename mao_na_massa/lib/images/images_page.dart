import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('kkk')),
      body: Center(
        child: Column(
          children: [
            Container(
                width: 300,
                height: 300,
                // color: Colors.red,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/img1.jpg'),
                        fit: BoxFit.cover)),
                child: Center(
                    child: Text('Imagem meme',
                        style: TextStyle(
                            backgroundColor: Colors.red.withOpacity(0.3),
                            fontSize: 20)))),
            Container(
                width: 200,
                height: 200,
                child: Image.network(
                    'https://res.cloudinary.com/fsg/image/upload/v1663765229/fow4ajf0hnyzbvo0xq0m.jpg',
                    fit: BoxFit.cover)),
          ],
        ),
      ),
    );
  }
}
