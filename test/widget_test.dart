import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:guia_minecraft/data/guide_data.dart';
import 'package:guia_minecraft/main.dart';
import 'package:guia_minecraft/providers/progress_provider.dart';
import 'package:guia_minecraft/widgets/details_dialog.dart';

Future<void> openApp(WidgetTester tester) async {
  tester.view.physicalSize = const Size(390, 844);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);

  await tester.pumpWidget(
    ChangeNotifierProvider(
      create: (_) => ProgressProvider(),
      child: const MyApp(),
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> pressDialogAction(WidgetTester tester, String label) async {
  await tester.ensureVisible(find.text(label));
  await tester.pumpAndSettle();
  await tester.tap(find.text(label));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('O progresso e as descobertas são compartilhados entre páginas', (
    tester,
  ) async {
    await openApp(tester);
    await tester.tap(find.text('Pegue madeira'));
    await tester.pumpAndSettle();
    await pressDialogAction(tester, 'Marcar como concluído');

    await tester.tap(find.text('Ver conquistas e easter eggs'));
    await tester.pumpAndSettle();
    expect(find.text('1 de 22 etapas concluídas'), findsOneWidget);

    await tester.ensureVisible(find.text('Ovelha arco-íris'));
    await tester.tap(find.text('Ovelha arco-íris'));
    await tester.pumpAndSettle();
    await pressDialogAction(tester, 'Marcar como descoberto');
    await tester.tap(find.text('Voltar à jornada'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(
      find.text('1 de ${easterEggs.length} segredos descobertos'),
    );
    expect(
      find.text('1 de ${easterEggs.length} segredos descobertos'),
      findsOneWidget,
    );

    await tester.tap(find.text('Ver conquistas e easter eggs'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Ovelha arco-íris'));
    await tester.tap(find.text('Ovelha arco-íris'));
    await tester.pumpAndSettle();
    await pressDialogAction(tester, 'Desmarcar descoberta');
    expect(
      find.text('0 de ${easterEggs.length} segredos descobertos'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('Uma etapa futura pode ser lida e não pode ser concluída', (
    tester,
  ) async {
    await openApp(tester);
    await tester.ensureVisible(find.text('Monte sua bancada'));
    await tester.tap(find.text('Monte sua bancada'));
    await tester.pumpAndSettle();
    expect(find.byType(DetailsDialog), findsOneWidget);
    await tester.ensureVisible(find.text('Etapa bloqueada'));
    await tester.tap(find.text('Etapa bloqueada'));
    await tester.pumpAndSettle();
    expect(find.byType(DetailsDialog), findsOneWidget);
    await pressDialogAction(tester, 'Fechar');
    expect(find.text('0 de 22 etapas concluídas'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Refazer uma etapa desmarca as seguintes e permite continuar', (
    tester,
  ) async {
    await openApp(tester);
    for (int i = 0; i < 3; i++) {
      await tester.ensureVisible(find.text(stages[i].title));
      await tester.tap(find.text(stages[i].title));
      await tester.pumpAndSettle();
      await pressDialogAction(tester, 'Marcar como concluído');
    }
    expect(find.text('3 de 22 etapas concluídas'), findsOneWidget);

    await tester.ensureVisible(find.text('Monte sua bancada'));
    await tester.tap(find.text('Monte sua bancada'));
    await tester.pumpAndSettle();
    await pressDialogAction(tester, 'Refazer a partir daqui');
    expect(find.text('1 de 22 etapas concluídas'), findsOneWidget);

    await tester.tap(find.text('Monte sua bancada'));
    await tester.pumpAndSettle();
    await pressDialogAction(tester, 'Marcar como concluído');
    expect(find.text('2 de 22 etapas concluídas'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Telas e descrição longa cabem em um celular pequeno', (
    tester,
  ) async {
    await openApp(tester);
    tester.view.physicalSize = const Size(320, 568);
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Derrote o Ender Dragon'));
    await tester.tap(find.text('Derrote o Ender Dragon'));
    await tester.pumpAndSettle();
    await pressDialogAction(tester, 'Fechar');
    await tester.tap(find.text('Ver conquistas e easter eggs'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text('Aqui está o Johnny!'));
    await tester.tap(find.text('Aqui está o Johnny!'));
    await tester.pumpAndSettle();
    await pressDialogAction(tester, 'Marcar como descoberto');
    expect(
      find.text('1 de ${easterEggs.length} segredos descobertos'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });
  testWidgets('Um novo segredo no fim do mural pode ser marcado e desmarcado', (
    tester,
  ) async {
    await openApp(tester);
    await tester.tap(find.text('Ver conquistas e easter eggs'));
    await tester.pumpAndSettle();
    await tester.ensureVisible(find.text(easterEggs.last.title));
    await tester.tap(find.text(easterEggs.last.title));
    await tester.pumpAndSettle();
    await pressDialogAction(tester, 'Marcar como descoberto');
    expect(
      find.text('1 de ${easterEggs.length} segredos descobertos'),
      findsOneWidget,
    );
    await tester.tap(find.text(easterEggs.last.title));
    await tester.pumpAndSettle();
    await pressDialogAction(tester, 'Desmarcar descoberta');
    expect(
      find.text('0 de ${easterEggs.length} segredos descobertos'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });
}
