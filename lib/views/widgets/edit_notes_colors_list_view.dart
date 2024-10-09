import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'color_item.dart';

class EditNotesColorsListView extends StatefulWidget {
  const EditNotesColorsListView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNotesColorsListView> createState() =>
      _EditNotesColorsListViewState();
}

class _EditNotesColorsListViewState extends State<EditNotesColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kNotesColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: kNotesColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kNotesColors[index].value;
                setState(() {});
              },
              child: ColorItem(
                color: kNotesColors[index],
                isSelected: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
