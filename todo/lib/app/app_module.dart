import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/app/app_widget.dart';

class AppModule extends StatelessWidget {
  const AppModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //vuex aqui
    return MultiProvider(
      providers: [Provider(create: (_) => Object())],
      child: AppWidget(),
    );
  }
}
