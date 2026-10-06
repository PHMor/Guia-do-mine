import 'package:flutter/material.dart';

class MinecraftButton extends StatefulWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool highlighted;

  const MinecraftButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.highlighted = false,
  });

  @override
  State<MinecraftButton> createState() => _MinecraftButtonState();
}

class _MinecraftButtonState extends State<MinecraftButton> {
  bool _hovered = false;
  bool _focused = false;

  @override
  Widget build(BuildContext context) {
    final disabled = widget.onPressed == null;
    final active = widget.highlighted || _hovered || _focused;
    final texture = disabled
        ? 'button_disabled'
        : active
        ? 'button_hover'
        : 'button';

    return Material(
      color: Colors.transparent,
      child: Ink(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/minecraft/buttons/$texture.png'),
            centerSlice: disabled
                ? const Rect.fromLTRB(2, 2, 398, 38)
                : const Rect.fromLTRB(6, 6, 394, 34),
            scale: 0.5,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.none,
          ),
        ),
        child: InkWell(
          onTap: widget.onPressed,
          onHover: (value) => setState(() => _hovered = value),
          onFocusChange: (value) => setState(() => _focused = value),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Text(
              widget.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: disabled ? const Color(0xFFA0A0A0) : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
                shadows: const [
                  Shadow(color: Colors.black, offset: Offset(1, 1)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
