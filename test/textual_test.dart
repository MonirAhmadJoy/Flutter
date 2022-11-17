import 'package:flutter_test/flutter_test.dart';
import 'textual.dart';

void main() {
  List<String> sttions = [
    "Choking",
    "Acid Attack",
    "Burns",
    "Head Injury",
    "Earthquake",
    "Stroke",
    "Drowning",
  ];

  group("Unit testing for situations indexing", () {
    textual text = textual();
    test("Situation Choking indexing", () {
      String result = text.situation(1);
      expect(result, sttions[0]);
    });

    test("Situation Acid Attack indexing", () {
      String result = text.situation(2);
      expect(result, sttions[1]);
    });

    test("Situation Burns indexing", () {
      String result = text.situation(3);
      expect(result, sttions[2]);
    });

    test("Situation Head Injury indexing", () {
      String result = text.situation(4);
      expect(result, sttions[3]);
    });

    test("Situation Earthquake indexing", () {
      String result = text.situation(5);
      expect(result, sttions[4]);
    });

    test("Situation Stroke indexing", () {
      String result = text.situation(6);
      expect(result, sttions[5]);
    });

    test("Situation Drowning indexing", () {
      String result = text.situation(100);
      expect(result, sttions[6]);
    });
  });
}
