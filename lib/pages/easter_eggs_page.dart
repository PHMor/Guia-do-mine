import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/guide_data.dart';
import '../models/guide_item.dart';
import '../providers/progress_provider.dart';
import '../widgets/details_dialog.dart';
import '../widgets/item_frame.dart';
import '../widgets/minecraft_button.dart';
import '../widgets/progress_panel.dart';

class EasterEggsPage extends StatelessWidget {
  const EasterEggsPage({super.key});

  void _openEasterEgg(BuildContext context, GuideItem item) {
    final progress = context.read<ProgressProvider>();

    showDialog(
      context: context,
      builder: (dialogContext) => DetailsDialog(
        item: item,
        actionLabel: progress.isDiscovered(item)
            ? 'Desmarcar descoberta'
            : 'Marcar como descoberto',
        onAction: () {
          progress.toggleEasterEgg(item);
          Navigator.pop(dialogContext);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final progress = context.watch<ProgressProvider>();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Conquistas',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: MinecraftButton(
            label: 'Voltar à jornada',
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/minecraft/backgrounds/adventure.png'),
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
                      'Segredos do Minecraft',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF6EEDB),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Easter eggs e curiosidades para explorar.\nToque em um quadro para ver como fazer.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFBDB4A4),
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Wrap(
                      spacing: 16,
                      runSpacing: 20,
                      alignment: WrapAlignment.center,
                      children: [
                        for (final item in easterEggs)
                          SizedBox(
                            width: 140,
                            child: Material(
                              color: const Color(0xFF292929),
                              child: InkWell(
                                onTap: () => _openEasterEgg(context, item),
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: progress.isDiscovered(item)
                                          ? const Color(0xFF8DBB59)
                                          : const Color(0xFF716756),
                                      width: 2,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      ItemFrame(
                                        image: item.image,
                                        completed: progress.isDiscovered(item),
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        item.title,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Color(0xFFF6EEDB),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          height: 1.4,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        item.subtitle,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Color(0xFFE4C76B),
                                          fontSize: 11,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        progress.isDiscovered(item)
                                            ? 'Descoberto!'
                                            : 'Toque para descobrir',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: progress.isDiscovered(item)
                                              ? const Color(0xFF8DBB59)
                                              : const Color(0xFFBDB4A4),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Text(
                      progress.discoveredEggs == easterEggs.length
                          ? 'Todos os segredos do mural descobertos!'
                          : 'Leia as dicas: alguns segredos dependem da edição ou da data. Nos nomes, respeite as letras maiúsculas e minúsculas.',
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
