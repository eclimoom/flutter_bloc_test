import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigation/constants/navigation_cubit.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<NavigationCubit>(context);
    return Center(
      child: Text('ProfileScreen ${bloc.state.index} ${bloc.state.navbarItem}'),
    );
  }
}
