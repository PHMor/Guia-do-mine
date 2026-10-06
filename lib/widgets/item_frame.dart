import 'package:flutter/material.dart';

class ItemFrame extends StatelessWidget {
  final String image;
  final double size;
  final bool completed;
  final bool locked;
  final bool current;
  final bool challenge;

  const ItemFrame({
    super.key,
    required this.image,
    this.size = 88,
    this.completed = false,
    this.locked = false,
    this.current = false,
    this.challenge = false,
  });

  @override
  Widget build(BuildContext context) {
    final frame = challenge
        ? 'challenge'
        : current
        ? 'goal'
        : 'task';
    final state = completed ? 'obtained' : 'unobtained';

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        children: [
          Container(
            width: size,
            height: size,
            padding: EdgeInsets.all(size * 0.2),
            decoration: BoxDecoration(
              border: Border.all(
                color: completed
                    ? const Color(0xFF8DBB59)
                    : current
                    ? const Color(0xFFE4C76B)
                    : const Color(0xFF716756),
                width: current ? 2 : 0,
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/minecraft/advancements/${frame}_$state.png',
                ),
                fit: BoxFit.fill,
                filterQuality: FilterQuality.none,
              ),
            ),
            child: Opacity(
              opacity: locked ? 0.45 : 1,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.none,
              ),
            ),
          ),
          if (completed || locked)
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                completed
                    ? 'assets/minecraft/ui/checkmark.png'
                    : 'assets/minecraft/ui/locked.png',
                width: 24,
                height: 24,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.none,
              ),
            ),
        ],
      ),
    );
  }
}
