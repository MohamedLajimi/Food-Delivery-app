import 'package:flutter/material.dart';
import 'package:food_app/blocs/theme_bloc/theme_bloc.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text(
          'Settings',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            SwitchListTile(
              value: context.read<ThemeBloc>().state == ThemeMode.dark,
              onChanged: (value) {
                context.read<ThemeBloc>().add(ThemeChanged(value));
              },
              title: const Text(
                'Dark Mode',
                style: TextStyle(fontSize: 18),
              ),
              tileColor: Theme.of(context).colorScheme.secondary,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            )
          ],
        ),
      ),
    );
  }
}
