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
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1185701050485850272/Underwater_Bubbles_Motion_Background_effects_FREE_1080p_30fps_H264-128kbit_AAC.mp4?ex=65909127&is=657e1c27&hm=0b28439301e92e305b75ccc1fdb5e84778c0d1a8c0c7d1be0b75d11a4d3bb31e&";
    case 2:
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1185703003710312548/forest_stream_animated_nature_4k_live_wallpaper_2160p_60fps_VP9-160kbit_Opus.webm?ex=659092f9&is=657e1df9&hm=be7c2a0ff585e9fff78e215e10edb61a8bc5b10a8b797b7af4eefeead0f6cb48&";
    case 3:
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1185704128412917760/fire.mp4?ex=65909405&is=657e1f05&hm=7923347b5054e7c4ca92f2311171d26d5e2c796c7279f1ee0cf267d3aa37e5bb&";
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
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1183869957369512056/1.wav?ex=6589e7d1&is=657772d1&hm=fea0a2b002c450f3310ba72e9b93dd80f46528eaec06d37c2fe5c024ec93d1af&";
    case 1:
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1183869957931552789/2.wav?ex=6589e7d1&is=657772d1&hm=6bb2ed1d5af2af2225842b14c4eae00f8dbe96a43368b881d938dabd148c4174&";
    case 2:
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1183869958317420664/3.wav?ex=6589e7d1&is=657772d1&hm=59b24d373e90f19be72b0367e0d725dc2e768983ecec1642edee490e5d9bf6d0&";
    case 3:
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1183869958996901969/4.wav?ex=6589e7d1&is=657772d1&hm=869832516abe2db413fa92d57dae217cf776bc8d8800bc10550bded4b1269969&";
    case 4:
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1183869959630245928/5.wav?ex=6589e7d1&is=657772d1&hm=9980979c1f30f083a19dc28d9446d994b735a45673b89fab2548341f4b04758f&";
    default:
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1183869959630245928/5.wav?ex=6589e7d1&is=657772d1&hm=9980979c1f30f083a19dc28d9446d994b735a45673b89fab2548341f4b04758f&";
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
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1185374671764471818/blue_1.mp4?ex=658f6130&is=657cec30&hm=88422f55df83ded5bb9b9c06e39e99d978b9f240d774a069fe599c44de126a17&";
    case 1:
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1185374501584769044/red_background.mp4?ex=658f6108&is=657cec08&hm=2062c9e62ad51b1b37ccde3a89ad52a2b2129ba7de390f222f506c4b24e93bbc&";
    case 2:
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1185374472065257542/yellow_background.mp4?ex=658f6101&is=657cec01&hm=bc1b7f5834bdf7cb8265a7bb1664fa3a224ad54b9d4bcf8a92ce4348ddde2be8&";
    case 3:
      return "https://cdn.discordapp.com/attachments/1181722338568454178/1185374340674506782/green_background.mp4?ex=658f60e2&is=657cebe2&hm=82f99f143cb57a4e9828ba5817aeb5bfd85fa22de6d4a704ec8855b5d325bba3&";
  }
}
