import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/guide_data.dart';
import '../providers/progress_provider.dart';

class ProgressPanel extends StatelessWidget {
  const ProgressPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final progress = context.watch<ProgressProvider>();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/minecraft/advancements/toast.png'),
          centerSlice: Rect.fromLTRB(12, 12, 308, 52),
          fit: BoxFit.fill,
          scale: 0.5,
          filterQuality: FilterQuality.none,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'SEU PROGRESSO',
            style: TextStyle(
              color: Color(0xFFE4C76B),
              fontWeight: FontWeight.bold,
              fontSize: 12,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '${progress.completedStages} de ${stages.length} etapas concluídas',
            style: const TextStyle(color: Color(0xFFF6EEDB), fontSize: 13),
          ),
          const SizedBox(height: 10),
          LinearProgressIndicator(
            value: progress.progress,
            minHeight: 8,
            color: const Color(0xFF8DBB59),
            backgroundColor: const Color(0xFF171C15),
          ),
          const SizedBox(height: 10),
          Text(
            '${progress.discoveredEggs} de ${easterEggs.length} segredos descobertos',
            style: const TextStyle(color: Color(0xFFB9C6A7), fontSize: 12),
          ),
        ],
      ),
    );
  }
}
