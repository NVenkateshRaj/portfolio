import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:venkatesh/bloc/portfolio_bloc.dart';
import 'package:venkatesh/constants/colors.dart';
import 'package:venkatesh/screens/porfolio_screen.dart';
import 'firebase_options.dart';

Future<void>  main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => PortfolioBloc()),
        ],
        child: MaterialApp(
          title: 'Venkatesh N',
          debugShowCheckedModeBanner: false,
          theme:ThemeData(
              scrollbarTheme: ScrollbarThemeData(
                  thumbColor: MaterialStateProperty.all(kWhite),
                  thickness:  MaterialStateProperty.all(4)),
              useMaterial3: false
          ),
          home: const PortfolioPage(),
        )
    );
  }
}
