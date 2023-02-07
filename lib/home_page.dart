import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'title'.tr(),
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('greeting'.tr()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.setLocale(const Locale('uz', 'UZ'));
                  print(context.locale.languageCode);
                  setState(() {});
                },
                child: const Text('Uzbek'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.setLocale(const Locale('ru', 'RU'));
                  setState(() {});
                },
                child: const Text('Русский'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.setLocale(const Locale('en', 'US'));
                  setState(() {});
                },
                child: const Text('English'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.setLocale(const Locale('zh', 'CHN'));
                  setState(() {});
                },
                child: const Text('中国'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
