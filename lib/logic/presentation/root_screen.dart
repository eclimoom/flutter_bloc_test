import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../navigation/app_navigation_bar.dart';
import '../navigation/constants/nav_bar_items.dart';
import '../navigation/constants/navigation_cubit.dart';
import '../navigation/constants/navigation_state.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Bloc'),
        ),
        bottomNavigationBar: const AppNavigationBar(),
        body: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, state) {
          if (state.navbarItem == NavbarItem.home) {
            return const HomeScreen();
          } else if (state.navbarItem == NavbarItem.settings) {
            return const SettingsScreen();
          } else if (state.navbarItem == NavbarItem.profile) {
            return const ProfileScreen();
          }
          return Container();
        }));
  }
}
