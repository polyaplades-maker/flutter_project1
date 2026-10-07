import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Мои заметки',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NotesPage(),
    );
  }
}

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final TextEditingController _controller = TextEditingController();

  List<String> notes = [];

  int? editingIndex;

  void saveNote() {
    String text = _controller.text.trim();

    if (text.isEmpty) {
      return;
    }

    setState(() {
      if (editingIndex == null) {
        notes.add(text);
      } else {
        notes[editingIndex!] = text;
        editingIndex = null;
      }
    });

    _controller.clear();
  }

  void deleteNote(int index) {
    setState(() {
      notes.removeAt(index);
    });
  }

  void editNote(int index) {
    setState(() {
      _controller.text = notes[index];
      editingIndex = index;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Мои заметки'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              maxLines: 3,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Введите заметку',
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: saveNote,
                child: Text(
                  editingIndex == null ? 'Сохранить' : 'Сохранить изменения',
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: notes.isEmpty
                  ? const Center(
                      child: Text('Заметок пока нет'),
                    )
                  : ListView.builder(
                      itemCount: notes.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(notes[index]),
                            leading: CircleAvatar(
                              child: Text('${index + 1}'),
                            ),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  onPressed: () => editNote(index),
                                  icon: const Icon(Icons.edit),
                                ),
                                IconButton(
                                  onPressed: () => deleteNote(index),
                                  icon: const Icon(Icons.delete),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
