import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as myget;
import 'package:nft_marketplace/bloc/theme_bloc.dart';
import 'package:nft_marketplace/bloc/theme_state.dart';
import 'package:nft_marketplace/pages/home_page.dart';

import 'bloc/bloc_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () {
       WidgetsFlutterBinding.ensureInitialized();
       runApp(const App());
    },
    blocObserver: AppBlocObserver(),
  );
}



class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
      builder: (_, ThemeState state) {
        return  myget.GetMaterialApp(
          theme: state.themeData,
      defaultTransition: myget.Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 200),
      debugShowCheckedModeBanner: false,
      title: 'NFT Marketplace',
      home: const HomePage(),
    );
      },
    )
    );
  }
}