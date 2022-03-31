import 'package:flutter/material.dart';
import 'package:car_rental/constants.dart';

class SearchBar extends StatelessWidget {
  final String hint;

  const SearchBar({required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(top: 10.0, right: 20.0, left: 20.0),
      child: TextField(
        cursorColor: kMainColor,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
            filled: true,
            fillColor: kGreyColor,
            prefixIcon: const Icon(
              Icons.search,
              color: kMainColor,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            hintStyle: const TextStyle(
              fontSize: 16,
              color: kTextColor,
            ),
            hintText: hint),
      ),
    );
  }
}
