import 'package:flutter/material.dart';

import 'screens/yesno.dart';
import 'screens/select.dart';
import 'screens/pain.dart';
import 'screens/emotions.dart';

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

List<ListOption> bodyParts = [
  ListOption("Head", icon: Icons.psychology_rounded),
  ListOption("Stomach", icon: Icons.lunch_dining),
  ListOption("Chest", icon: Icons.clear_all_rounded),
  ListOption("Back", icon: Icons.clear_all_rounded),
  ListOption("Legs", icon: Icons.airline_seat_legroom_normal_rounded),
  ListOption("Eyes", icon: Icons.visibility_rounded),
  ListOption("Shoulder", icon: Icons.emoji_people_rounded),
  ListOption("Mouth", icon: Icons.mood),
  ListOption("Hands", icon: Icons.front_hand_rounded)
];

List<ListOption> emotions = [
  ListOption("Depressed", icon: Icons.sentiment_very_dissatisfied_rounded),
  ListOption("Sad", icon: Icons.sentiment_dissatisfied_rounded),
  ListOption("Neutral", icon: Icons.sentiment_neutral_rounded),
  ListOption("Happy", icon: Icons.sentiment_satisfied_rounded),
  ListOption("Delighted", icon: Icons.sentiment_very_satisfied_rounded),
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
  ListOption('Emotions', icon: Icons.mood_rounded, onClick: (context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => EmotionsScreen(options: emotions)),
    );
  }),
  ListOption('Yes / No', icon: Icons.check, onClick: (context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const YesNo()));
  }),
];
