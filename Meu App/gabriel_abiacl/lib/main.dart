import 'package:flutter/material.dart';
import 'package:gabriel_abiacl/pages/tela_home.dart';

void main() {
  runApp(const MeuAppDeIcones());
}

class MeuAppDeIcones extends StatelessWidget {
  const MeuAppDeIcones({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App de Ícones',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
        ),
      ),
      home: const TelaHome(),
    );
  }
}
