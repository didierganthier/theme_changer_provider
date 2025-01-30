import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer_provider/theme_data.dart';
import 'package:theme_changer_provider/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello',
              style: TextStyle(
                color: Theme.of(context).textColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => context.read<ThemeProvider>().toggleTheme(),
              child: Text(
                Theme.of(context).isDarkMode
                    ? "Switch to Light Theme"
                    : "Switch to Dark Theme",
                style: TextStyle(
                  color: !Theme.of(context).isDarkMode
                      ? Colors.black
                      : Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () =>
                        context.read<ThemeProvider>().setMode(ThemeMode.light),
                    icon: const Icon(Icons.light_mode)),
                IconButton(
                    onPressed: () =>
                        context.read<ThemeProvider>().setMode(ThemeMode.dark),
                    icon: const Icon(Icons.dark_mode)),
                IconButton(
                    onPressed: () =>
                        context.read<ThemeProvider>().setMode(ThemeMode.system),
                    icon: const Icon(Icons.settings_display))
              ],
            )
          ],
        ),
      ),
    );
  }
}
