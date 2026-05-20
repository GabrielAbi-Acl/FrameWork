import 'package:flutter_test/flutter_test.dart';
import 'package:gabriel_abiacl/main.dart';

void main() {
  testWidgets('App exibe título na AppBar', (WidgetTester tester) async {
    await tester.pumpWidget(const MeuAppDeIcones());

    expect(find.text('Meu App de Ícones'), findsOneWidget);
    expect(find.text('Perfil'), findsOneWidget);
  });
}
