import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(color: const Color.fromARGB(109, 140, 94, 91),
            borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //text
            Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),

            const SizedBox(width: 10,),

            //icon
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 24,
            )
          ],
        ),
      ),
    );
  }
}
