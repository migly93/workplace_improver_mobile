import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/user.dart';

final Color mainColor = Colors.red.shade300;
const Color secondaryColor = Colors.white;
const Color mainGrey = Colors.grey;
final Color validFieldGreen = Colors.greenAccent.shade100;
final Color invalidFieldRed = Colors.redAccent.shade100;
const Color lightGray = CupertinoColors.lightBackgroundGray;
const String mainFont = 'Roboto';

final BoxDecoration normalInputTextFieldBorder = BoxDecoration(
  border: Border.all(
    color: lightGray,
    width: 2,
  ),
  borderRadius: BorderRadius.circular(10),
);

final BoxDecoration vaildInputTextFieldBorder = BoxDecoration(
  border: Border.all(
    color: validFieldGreen,
    width: 3,
  ),
  borderRadius: BorderRadius.circular(10),
);

final BoxDecoration invalidInputTextFieldBorder = BoxDecoration(
  border: Border.all(
    color: invalidFieldRed,
    width: 3,
  ),
  borderRadius: BorderRadius.circular(10),
);

//USERS TO BE REMOVED
// ignore: non_constant_identifier_names
final GIUSEPPE = User(
  id: 0,
  firstName: 'Giuseppe',
  lastName: 'Migliaccio',
  imageUrl:
      'https://cdn.dribbble.com/users/81809/screenshots/3347540/gokussj.jpg',
  activeInitiatives: 2,
  monthlyVotesLeft: 4,
);

// ignore: non_constant_identifier_names
final User CRISTINA = User(
  id: 1,
  firstName: 'Cristina',
  lastName: 'Moran',
  imageUrl:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt_YdhVcfSALkr-boct2kimVsDKkwtkjRDtA&usqp=CAU',
);

// ignore: non_constant_identifier_names
final NOELIA = User(
  id: 2,
  firstName: 'Noelia',
  lastName: 'Carrasco',
  imageUrl: '',
);
