import 'package:emagz_vendor/constant/colors.dart';
import 'package:flutter/material.dart';


class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>)? onSelectionChanged;
  final Function(List<String>)? onMaxSelected;
  final int? maxSelection;

  MultiSelectChip(this.reportList,
      {this.onSelectionChanged, this.onMaxSelected, this.maxSelection});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.forEach((item) {
      choices.add(Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        // alignment: Alignment.center,
        height: 30,
        // width: 106,
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: ChoiceChip(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          backgroundColor: socialBack,
          selectedColor: chipColor,
          side: BorderSide(
            width: .5,
            color:
                selectedChoices.contains(item) ? chipColor : Color(0xff686868),
          ),
          labelPadding: EdgeInsets.symmetric(horizontal: 10),
          label: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              item,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: selectedChoices.contains(item)
                      ? whiteColor
                      : Color(0xff686868),
                  fontSize: 12),
            ),
          ),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            if (selectedChoices.length == (1 == 1) &&
                !selectedChoices.contains(item)) {
              widget.onMaxSelected?.call(selectedChoices);
            } else {
              setState(() {
                selectedChoices.contains(item)
                    ? selectedChoices.remove(item)
                    : selectedChoices.add(item);
                widget.onSelectionChanged?.call(selectedChoices);
              });
            }
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // alignment: WrapAlignment.spaceBetween,
      children: _buildChoiceList(),
    );
  }
}