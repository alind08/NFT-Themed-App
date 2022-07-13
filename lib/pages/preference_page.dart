import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:nft_marketplace/theme/app_themes.dart';
import '../../../bloc/theme_bloc.dart';

class PreferencePage extends StatelessWidget {
  const PreferencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change theme'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 8,
        ),
        padding: const EdgeInsets.all(12),
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final itemAppTheme = AppTheme.values[index];
          return Card(
            color: appThemeData[itemAppTheme]?.primaryColor,
            child: ListTile(
              title: Text(
                itemAppTheme.toString(),
                // style: h4Style,
              ),
              onTap: () {
                // context
                //     .read<ThemeCubit>()
                //     .toggleTheme(appThemeData[itemAppTheme]!);
                //     Get.back();
              },
            ),
          );
        },
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: const[
      //       Icon(Icons.person,size: 200,),
      //       // Image.asset(AppAsset.profilePic),
      //        Text(
      //         "Hello Alind!",
      //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      //       ),

      //       // Row(
      //       //   mainAxisAlignment: MainAxisAlignment.center,
      //       //   children: [
      //       //     Image.asset(
      //       //       AppAsset.githubPic,
      //       //       width: 60,
      //       //     ),
      //       //     const SizedBox(width: 10),
      //       //     // const Text(
      //       //     //   "https://github.com/SinaSys",
      //       //     //   style: TextStyle(fontSize: 20),
      //       //     // )
      //       //   ],
      //       // )
      //     ],
      //   ),
      // ),
      // floatingActionButton: SpeedDial(
      //     icon: Icons.add,
      //     activeIcon: Icons.close,
      //     spacing: 3,
      //     childPadding: const EdgeInsets.all(5),
      //     spaceBetweenChildren: 4,
      //               children: [
      //         for(AppTheme theme in AppTheme.values)
      //               SpeedDialChild(
      //                 label: theme.toString().split('.').last,
      //                 backgroundColor: appThemeData[theme]?.primaryColor,
      //           onTap: () {
      //              context.read<ThemeCubit>().toggleTheme(appThemeData[theme]!);
      //           },
      //           shape: const CircleBorder(),
      //           child: Container(
      //             color: appThemeData[theme]?.primaryColor,
      //           )
      //         ),
      //       ],
      //   ),
    );
  }
}
