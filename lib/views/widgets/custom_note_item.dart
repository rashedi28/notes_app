import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteView();
          }),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 16,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter App',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                child: Text(
                  'This is a note app made by Ahmed ',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 24,
              ),
              child: Text(
                'May 2,2024',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
