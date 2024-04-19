import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChallengeItem extends StatefulWidget {
  final String image;
  final String title;

  const ChallengeItem({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  State<ChallengeItem> createState() => _ChallengeItemState();
}

class _ChallengeItemState extends State<ChallengeItem> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() => selected = !selected);
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 34.0,
            backgroundColor: selected ? const Color(0x66E0FE10) : Colors.transparent,
            child: CircleAvatar(
              radius: 32.0,
              backgroundImage: AssetImage(widget.image),
              child: selected
                  ? Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0x995EB64A),
                      ),
                      child: const Icon(
                        CupertinoIcons.checkmark_alt,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            widget.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
