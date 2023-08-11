import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../navigation/constants/navigation_cubit.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<NavigationCubit>(context);
    // 获取
    return Center(
      child: Text('SettingsScreen ${bloc.state.index} '),
    );
  }
}
