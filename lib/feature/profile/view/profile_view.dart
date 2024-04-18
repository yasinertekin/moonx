import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:moonx/product/widget/now_playing/now_playing_bar.dart';
import 'package:moonx/product/widget/now_playing/now_playing_slide_bar.dart';

@RoutePage()
final class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Text('data'),
          NowPlayingBar(),
          NowPlayingSlideBar(),
        ],
      ),
    );
  }
}
