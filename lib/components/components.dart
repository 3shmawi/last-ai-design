import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';



class DefaultDropDownButton extends StatefulWidget {
  final String text;
  final String validateText;
  final List<String> items;


  const DefaultDropDownButton(
      {
        required this.text,
        required this.validateText,
        required this.items,
        Key? key})
      : super(key: key);

  @override
  State<DefaultDropDownButton> createState() => _DefaultDropDownButtonState();
}

class _DefaultDropDownButtonState extends State<DefaultDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(10),
      elevation: 4,
      child: DropdownButtonFormField2(
        decoration: const InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          //Add isDense true and zero Padding.
          //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
          isDense: true,
          contentPadding: EdgeInsets.zero,

          //Add more decoration as you want here
          //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
        ),
        isExpanded: true,
        hint: Text(
          widget.text,
          style: const TextStyle(fontSize: 14),
        ),
        icon: const Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ),
        iconSize: 30,
        buttonHeight: 60,
        buttonPadding: const EdgeInsets.only(left: 20, right: 10),
        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        items: widget.items
            .map((item) => DropdownMenuItem<String>(
          value: item,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              item,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ))
            .toList(),
        validator: (value) {
          if (value == null) {
            return widget.validateText;
          }
          return null;
        },
        onChanged: (value) {
          //Do something when changing the item if you want.
        },
        onSaved: (value) {

        },
      ),
    );
  }
}
class DefaultElevatedButton extends StatelessWidget {
  final String header;
  final VoidCallback? onPressed;
  final bool icon;
  final double height;

  const DefaultElevatedButton({
    Key? key,
    this.height = 50,
    this.header = '',
    required this.onPressed,
    this.icon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return SizedBox(
      height: size.width / 8,
      width: size.width / 1.22,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.white,
            primary:Colors.blueAccent,
            fixedSize: const Size(1000, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: onPressed,
        child: Text(header),
      ),
    );
  }
}
