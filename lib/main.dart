import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados/pages/pagina1_page.dart';
import 'package:estados/pages/pagina2_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagina1',
      // routes: {
      //   'pagina1': ( _ ) => Pagina1Page(),
      //   'pagina2': ( _ ) => Pagina2Page(),
      // },
      getPages: [
        GetPage(name: 'pagina1', page: () => Pagina1Page() ),
        GetPage(name: 'pagina2', page: () => Pagina2Page() )
      ],
    );
  }
}