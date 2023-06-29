// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

//* to generate file write this code in terminal  after write this => part "nameofmodel.g.dart";
/// flutter package pub run build_runner build

part "note_model.g.dart";


//*========================================

@HiveType(typeId: 1)

class NoteModel extends HiveObject {
  @HiveField(0)
  String? title;
  @HiveField(1)
  String? subTitle;
  @HiveField(2)
  String? date;
  @HiveField(3)
  int? color;
  NoteModel({
   required this.title,
   required this.subTitle,
   required this.date,
   required this.color,
  });
}
