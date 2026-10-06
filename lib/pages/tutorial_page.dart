import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/guide_data.dart';
import '../providers/progress_provider.dart';
import '../widgets/details_dialog.dart';
import '../widgets/item_frame.dart';
import '../widgets/minecraft_button.dart';
import '../widgets/progress_panel.dart';
import 'easter_eggs_page.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  final List<GlobalKey> _stageKeys = List.generate(
    stages.length,
    (_) => GlobalKey(),
  );

  Future<void> _openStage(int index) async {
    final progress = context.read<ProgressProvider>();
    final completed = progress.isCompleted(index);
    final available = progress.canComplete(index);

    final changed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => DetailsDialog(
        item: stages[index],
        challenge: index == stages.length - 1,
        actionLabel: completed
            ? 'Refazer a partir daqui'
            : available
            ? 'Marcar como concluído'
            : 'Etapa bloqueada',
        notice: completed
            ? 'Refazer esta etapa também desmarca todas as etapas seguintes.'
            : !available
            ? 'Você pode ler o tutorial. Para concluir, termine as etapas anteriores.'
            : null,
        onAction: completed || available
            ? () {
                if (completed) {
                  progress.restartFrom(index);
                } else {
                  progress.completeStage(index);
                }
                Navigator.pop(dialogContext, true);
              }
            : null,
      ),
    );

    if (!mounted || changed != true) return;

    final nextIndex = progress.completedStages;
    if (nextIndex < stages.length) {
      await Scrollable.ensureVisible(
        _stageKeys[nextIndex].currentContext!,
        duration: const Duration(milliseconds: 400),
        alignment: 0.35,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final progress = context.watch<ProgressProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Guia do Mine',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: MinecraftButton(
            label: 'Ver conquistas e easter eggs',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const EasterEggsPage()),
              );
            },
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/minecraft/backgrounds/stone.png'),
            repeat: ImageRepeat.repeat,
            scale: 0.5,
            filterQuality: FilterQuality.none,
            colorFilter: ColorFilter.mode(Color(0xAA000000), BlendMode.darken),
          ),
        ),
        child: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 520),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const ProgressPanel(),
                    const SizedBox(height: 24),
                    const Text(
                      'Sua jornada',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFFF6EEDB),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Da primeira árvore ao Ender Dragon.\nToque nos quadros para aprender cada etapa.',
                      style: TextStyle(
                        color: Color(0xFFBDB4A4),
                        fontSize: 12,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'VERDE: concluído   AMARELO: próxima etapa',
                      style: TextStyle(color: Color(0xFFE4C76B), fontSize: 10),
                    ),
                    const SizedBox(height: 24),
                    for (int i = 0; i < stages.length; i++) ...[
                      if (i > 0)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 54),
                          child: Column(
                            crossAxisAlignment: i.isEven
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 18,
                                width: 4,
                                color: progress.isCompleted(i - 1)
                                    ? const Color(0xFF8DBB59)
                                    : const Color(0xFF655F50),
                              ),
                              Container(
                                height: 4,
                                color: progress.isCompleted(i - 1)
                                    ? const Color(0xFF8DBB59)
                                    : const Color(0xFF655F50),
                              ),
                              Align(
                                alignment: i.isEven
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                child: Container(
                                  height: 18,
                                  width: 4,
                                  color: progress.isCompleted(i - 1)
                                      ? const Color(0xFF8DBB59)
                                      : const Color(0xFF655F50),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Align(
                        key: _stageKeys[i],
                        alignment: i.isEven
                            ? Alignment.centerLeft
                            : Alignment.centerRight,
                        child: SizedBox(
                          width: 112,
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () => _openStage(i),
                              child: Column(
                                children: [
                                  Text(
                                    '${(i + 1).toString().padLeft(2, '0')} / ${stages.length}',
                                    style: const TextStyle(
                                      color: Color(0xFFBDB4A4),
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  ItemFrame(
                                    image: stages[i].image,
                                    size: 96,
                                    completed: progress.isCompleted(i),
                                    current: progress.canComplete(i),
                                    challenge: i == stages.length - 1,
                                    locked:
                                        !progress.isCompleted(i) &&
                                        !progress.canComplete(i),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    stages[i].title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: progress.canComplete(i)
                                          ? const Color(0xFFE4C76B)
                                          : const Color(0xFFF6EEDB),
                                      fontSize: 12,
                                      height: 1.4,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                    const SizedBox(height: 28),
                    Text(
                      progress.completedStages == stages.length
                          ? 'Jornada concluída! Seu mundo continua.\nQue tal descobrir os easter eggs?'
                          : 'Um bloco de cada vez.\nA aventura está só começando.',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFFC9D9AC),
                        fontSize: 12,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
