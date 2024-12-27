import 'package:flutter/material.dart';
import 'package:flutter_sigorta/home/chatbot/message_widget.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class YapayZekaDeneme extends StatefulWidget {
  const YapayZekaDeneme({super.key});

  @override
  State<YapayZekaDeneme> createState() => _YapayZekaDenemeState();
}

class _YapayZekaDenemeState extends State<YapayZekaDeneme> {
  late final GenerativeModel _model;
  late final ChatSession _chatSession;
  final FocusNode _textFieldfocus = FocusNode();
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _model = GenerativeModel(
      model: "gemini-pro",
<<<<<<< HEAD
      apiKey: "AIzaSyCIurpW1YMeTHq1AN4JkOOMGH7zuAL6ewY",
=======
      apiKey: "api_key",
>>>>>>> 36bfc066338506fe88fd3159317a979c9b786683
    );
    _chatSession = _model.startChat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Gemini Chat",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 4.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: _loading
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: _chatSession.history.length,
                      itemBuilder: (context, index) {
                        final Content content =
                            _chatSession.history.toList()[index];
                        final text = content.parts
                            .whereType<TextPart>()
                            .map<String>((e) => e.text)
                            .join('');
                        return MessageWidget(
                          text: text,
                          isFromUser: content.role == "user",
                        );
                      },
                    ),
                  ),
          ),
          _buildInputArea(context),
        ],
      ),
    );
  }

  Widget _buildInputArea(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              autofocus: false,
              focusNode: _textFieldfocus,
              decoration: textFieldDecoration(),
              controller: _textController,
              onSubmitted: _sendChatMessage,
            ),
          ),
          const SizedBox(width: 8),
          IconButton(
            icon: const Icon(Icons.send, color: Colors.purple),
            onPressed: () {
              if (_textController.text.trim().isNotEmpty) {
                _sendChatMessage(_textController.text);
              }
            },
          ),
        ],
      ),
    );
  }

  InputDecoration textFieldDecoration() {
    return InputDecoration(
      hintText: "Mesajınızı yazın...",
      filled: true,
<<<<<<< HEAD
      fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
=======
      fillColor: Theme.of(context).colorScheme.surfaceVariant,
>>>>>>> 36bfc066338506fe88fd3159317a979c9b786683
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }

  Future<void> _sendChatMessage(String message) async {
    setState(() {
      _loading = true;
    });

    try {
      final response = await _chatSession.sendMessage(Content.text(message));
      final text = response.text;
      if (text == null) {
        _showError('API\'den yanıt alınamadı.');
        return;
      } else {
        setState(() {
          _loading = false;
          _scrollDown();
        });
      }
    } catch (e) {
      _showError(e.toString());
      setState(() {
        _loading = false;
      });
    } finally {
      _textController.clear();
      setState(() {
        _loading = false;
      });
      _textFieldfocus.requestFocus();
    }
  }

  void _showError(String message) {
    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Bir şeyler yanlış gitti"),
          content: SingleChildScrollView(
            child: SelectableText(message),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Tamam"),
            ),
          ],
        );
      },
    );
  }

  void _scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 750),
        curve: Curves.easeOutCirc,
      ),
    );
  }
}
