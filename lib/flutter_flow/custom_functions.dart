import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

int? randomNumber(
  int? lowestTable,
  int? highestTable,
) {
  return math.Random().nextInt(highestTable! - lowestTable! + 1) + lowestTable;
}

List<int>? subtractionAnswersList(
  int? numA,
  int? numB,
  int? lowestTable,
  int? highestTable,
) {
  List<int> answers = [];
  int i = 0;
  math.Random random = math.Random();
  int correctAnswer = (numA! - numB!).abs();
  int totalNumbersToChooseFrom = highestTable! - lowestTable! + 1;
  while (i < 8) {
    int wrongAnswer =
        ((random.nextInt(totalNumbersToChooseFrom) + lowestTable) -
                (random.nextInt(totalNumbersToChooseFrom) + lowestTable))
            .abs();
    if (correctAnswer != wrongAnswer && !answers.contains(wrongAnswer)) {
      answers.add(wrongAnswer);
      i++;
    }
  }
  answers.add(correctAnswer);
  answers.shuffle();
  return answers;
}

List<int>? multiplicationAnswersList(
  int? numA,
  int? numB,
  int? lowestTable,
  int? highestTable,
) {
  List<int> answers = [];
  int i = 0;
  math.Random random = math.Random();
  int correctAnswer = numA! * numB!;
  int totalNumbersToChooseFrom = highestTable! - lowestTable! + 1;
  while (i < 8) {
    int wrongAnswer = (random.nextInt(totalNumbersToChooseFrom) + lowestTable) *
        (random.nextInt(totalNumbersToChooseFrom) + lowestTable);
    if (correctAnswer != wrongAnswer && !answers.contains(wrongAnswer)) {
      answers.add(wrongAnswer);
      i++;
    }
  }
  answers.add(correctAnswer);
  answers.shuffle();
  return answers;
}

String? changeBackgroundGameVideo(int? theme) {
  switch (theme) {
    case 1:
      return "assets/videos/water.mp4";
    case 2:
      return "assets/videos/forest.mp4";
    case 3:
      return "assets/videos/fire.mp4";
  }
}

Color? changeButtonColor(
  int? comboCount,
  int? themeNumber,
) {
  switch (comboCount) {
    case 0:
      if (themeNumber == 1) {
        return Color(0xFFcaf0f8);
      }
      if (themeNumber == 2) {
        return Color(0xFFccff33);
      }
      return Color(0xFFffba08);
    case 1:
      if (themeNumber == 1) {
        return Color(0xFFade8f4);
      }
      if (themeNumber == 2) {
        return Color(0xFF9ef01a);
      }
      return Color(0xFFfaa307);
    case 2:
      if (themeNumber == 1) {
        return Color(0xFF90e0ef);
      }
      if (themeNumber == 2) {
        return Color(0xFF70e000);
      }
      return Color(0xFFf48c06);
    case 3:
      if (themeNumber == 1) {
        return Color(0xFF48cae4);
      }
      if (themeNumber == 2) {
        return Color(0xFF38b000);
      }
      return Color(0xFFe85d04);
    case 4:
      if (themeNumber == 1) {
        return Color(0xFF00b4d8);
      }
      if (themeNumber == 2) {
        return Color(0xFF008000);
      }
      return Color(0xFFdc2f02);
    default:
      if (themeNumber == 1) {
        return Color(0xFF00b4d8);
      }
      if (themeNumber == 2) {
        return Color(0xFF008000);
      }
      return Color(0xFFdc2f02);
  }
}

String? changeTheme(int? themeNumber) {
  switch (themeNumber) {
    case 1:
      return "Water";
    case 2:
      return "Forest";
    default:
      return "Fire";
  }
}

Color? changeButtonTextColor(
  int? comboCounter,
  int? themeNumber,
) {
  Color black = Colors.black;
  Color white = Colors.white;

  switch (comboCounter) {
    case 0:
      return black;
    case 1:
      return black;
    case 2:
      return black;
    case 3:
      return white;
    case 4:
      return white;
    default:
      return white;
  }
}

Color? changeTableTextColor(int? themeNumber) {
  return themeNumber != 1 ? Colors.white : Colors.black;
}

String? changeButtonAudio(int? comboCounter) {
  switch (comboCounter) {
    case 0:
      return "assets/audios/1.wav";
    case 1:
      return "assets/audios/2.wav";
    case 2:
      return "assets/audios/3.wav";
    case 3:
      return "assets/audios/4.wav";
    case 4:
      return "assets/audios/5.wav";
    default:
      return "assets/audios/5.wav";
  }
}

List<int>? additionAnswersList(
  int? numA,
  int? numB,
  int? lowestTable,
  int? highestTable,
) {
  List<int> answers = [];
  int i = 0;
  math.Random random = math.Random();
  int correctAnswer = (numA! + numB!);
  int totalNumbersToChooseFrom = highestTable! - lowestTable! + 1;
  while (i < 8) {
    int a = random.nextInt(totalNumbersToChooseFrom) + lowestTable;
    int b = random.nextInt(totalNumbersToChooseFrom) + lowestTable;
    int wrongAnswer = a + b;
    if (correctAnswer != wrongAnswer && !answers.contains(wrongAnswer)) {
      answers.add(wrongAnswer);
      i++;
    }
  }
  answers.add(correctAnswer);
  answers.shuffle();
  return answers;
}

List<int>? divisionAnswersList(
  int? numA,
  int? numB,
  int? lowestTable,
  int? highestTable,
) {
  List<int> answers = [];
  int i = 0;
  math.Random random = math.Random();
  int correctAnswer = numA! ~/ numB!;
  int totalNumbersToChooseFrom = highestTable! - lowestTable! + 1;
  while (i < 8) {
    int wrongAnswer = 0;
    int a = random.nextInt(totalNumbersToChooseFrom) + lowestTable;
    int b = random.nextInt(totalNumbersToChooseFrom) + lowestTable;
    if (b != 0 && a % b == 0) {
      wrongAnswer = a ~/ b;
      if (correctAnswer != wrongAnswer && !answers.contains(wrongAnswer)) {
        answers.add(wrongAnswer);
        i++;
      }
    }
  }
  answers.add(correctAnswer);
  answers.shuffle();
  return answers;
}

String? changeBackgroundMenuVideo(int? gameMode) {
  switch (gameMode) {
    case 0:
      return "assets/videos/blue_(1).mp4";
    case 1:
      return "assets/videos/red_background_(1).mp4";
    case 2:
            return "assets/videos/yellow_background_(1).mp4";

    case 3:      return "assets/videos/green_background_(1).mp4";

  }
}
