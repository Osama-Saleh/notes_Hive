import 'package:flutter/material.dart';
import 'package:notes_app_hive/controller/add_note_provider.dart';
import 'package:notes_app_hive/models/note_model.dart';
import 'package:notes_app_hive/views/note_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';


void main() async {
  await Hive.initFlutter();
  await Hive.openBox("noteBox");
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AddNoteProvider>(create: (context) => AddNoteProvider(),)
      ],
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: Brightness.dark),
          home: const NoteView(),
        );
      },
    );
  }
}
