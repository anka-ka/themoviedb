import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/app_colors.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main_screen/main_screen_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor:AppColors.mainDarkBlue,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes:{
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      initialRoute: '/auth',
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute<void>(builder: (context){
          return Scaffold(
            body: Center(child: 
            Text('Произошла ошибка навигации'),)
            );
        });
      },
    );
  }
}

// class ExampleWidget extends StatefulWidget{
//   ExampleWidget({Key? key}):super(key: key);
  
//   @override
//   _ExampleWidgetState createState()=> _ExampleWidgetState();
// }
  
//   class _ExampleWidgetState extends State<ExampleWidget>{
//     @override
//     Widget build(BuildContext context){
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('TMDB'),
//           ),
//           body: Center(
//             child: ElevatedButton(onPressed: (){}, child: Text('Жми')),
//           ),

//       );
//     }
//   }


