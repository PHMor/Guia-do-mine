import 'package:flutter/material.dart';
import '../models/guide_item.dart';
import 'item_frame.dart';
import 'minecraft_button.dart';

class DetailsDialog extends StatelessWidget {
  final GuideItem item;
  final String actionLabel;
  final VoidCallback? onAction;
  final String? notice;
  final bool challenge;

  const DetailsDialog({
    super.key,
    required this.item,
    required this.actionLabel,
    required this.onAction,
    this.notice,
    this.challenge = false,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(20),
      shape: const RoundedRectangleBorder(),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 420,
          maxHeight: MediaQuery.sizeOf(context).height * 0.85,
        ),
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/minecraft/ui/popup.png'),
              centerSlice: Rect.fromLTRB(12, 12, 460, 56),
              scale: 0.5,
              fit: BoxFit.fill,
              filterQuality: FilterQuality.none,
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: ItemFrame(
                    image: item.image,
                    size: 96,
                    challenge: challenge,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF6EEDB),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  item.subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xFFE4C76B),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 20),
                for (int i = 0; i < item.instructions.length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14),
                    child: Text(
                      '${i + 1}. ${item.instructions[i]}',
                      style: const TextStyle(
                        color: Color(0xFFE4DFD4),
                        fontSize: 13,
                        height: 1.6,
                      ),
                    ),
                  ),
                Container(
                  padding: const EdgeInsets.all(12),
                  color: const Color(0xFF232323),
                  child: Text(
                    'Dica: ${item.tip}',
                    style: const TextStyle(
                      color: Color(0xFFC9D9AC),
                      fontSize: 12,
                      height: 1.5,
                    ),
                  ),
                ),
                if (notice != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      notice!,
                      style: const TextStyle(
                        color: Color(0xFFE4C76B),
                        fontSize: 12,
                        height: 1.5,
                      ),
                    ),
                  ),
                const SizedBox(height: 20),
                MinecraftButton(
                  label: actionLabel,
                  onPressed: onAction,
                  highlighted: true,
                ),
                const SizedBox(height: 8),
                MinecraftButton(
                  label: 'Fechar',
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
