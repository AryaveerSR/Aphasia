import 'package:flutter/material.dart';

import '../screens/yesno.dart';
import '../screens/select.dart';
import '../screens/pain.dart';

enum Pages { yesno, select, pain }

class ListOption {
  ListOption(this.name, {required this.icon, this.onClick});
  String name;
  IconData icon;
  Function(BuildContext)? onClick;

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'icon': icon,
      'onClick': onClick,
    };
  }
}

List<String> bodyParts = [
  "Head",
  "Stomach",
  "Chest",
  "Back",
  "Legs",
  "Foot",
  "Skin",
  "Eyes",
  "Shoulder",
  "Mouth",
  "Arms"
];

List<ListOption> options = [
  ListOption('Incline Bed', icon: Icons.airline_seat_flat_angled_rounded),
  ListOption('Lay Down', icon: Icons.hotel_rounded),
  ListOption('Sit Up', icon: Icons.airline_seat_recline_normal_rounded),
  ListOption('Need Medicine', icon: Icons.medication_rounded),
  ListOption('Nurse / Doctor', icon: Icons.medical_services_rounded),
  ListOption('In Pain', icon: Icons.personal_injury_rounded,
      onClick: (context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Select(
                  options: bodyParts,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PainScreen()));
                  },
                )));
  }),
  ListOption('Food / Drink', icon: Icons.restaurant_menu_rounded),
  ListOption('TV', icon: Icons.tv),
  ListOption('Bath', icon: Icons.bathtub_rounded),
  ListOption('Change Bed', icon: Icons.bed),
  ListOption('Emotions', icon: Icons.sentiment_satisfied_rounded),
  ListOption('Yes / No', icon: Icons.check, onClick: (context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const YesNo()));
  }),
];
