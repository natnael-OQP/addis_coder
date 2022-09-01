import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    // example of a easier way to write code instead of writing it in a single string
    List<String> contentOfPage1 = [
      "def compound_interest(P, r, n, t): return P * (1 + r/n) ** (n*t)",
      "principal = 10000  # birr ",
      "print('Amount in account after 5 years:', compound_interest(principal, r=0.04, n=12, t=5))",
      "print('Amount in account after 10 years:',compound_interest(principal, r=0.04, n=12, t=10))",
    ];

    // The files displayed in the navigation bar of the editor.
    // You are not limited.
    // By default, [name] = "file.${language ?? 'txt'}", [language] = "text" and [code] = "",
    List<FileEditor> files = [
      FileEditor(
        name: "lab1.dart",
        language: "dart",
        code: contentOfPage1.join("\n"), // [code] needs a string
      ),
      FileEditor(
        name: "page2.html",
        language: "html",
        code: "<a href='page1.html'>go back</a>",
      ),
      FileEditor(
        name: "style.css",
        language: "css",
        code: "a { color: red; }",
      ),
    ];

    // The model used by the CodeEditor widget, you need it in order to control it.
    // But, since 1.0.0, the model is not required inside the CodeEditor Widget.
    EditorModel model = EditorModel(
      files: files, // the files created above
      // you can customize the editor as you want
      styleOptions: EditorModelStyleOptions(
        fontSize: 13,
      ),
    );

    // A custom TextEditingController.
    final myController = TextEditingController(text: 'hello!');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#F4F4F4"),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/menu.png"),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Practice",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                IconButton(
                  alignment: Alignment.centerRight,
                  onPressed: () {},
                  icon: Image.asset("assets/icons/undo.png"),
                  iconSize: 20,
                ),
                IconButton(
                  alignment: Alignment.centerLeft,
                  onPressed: () {},
                  icon: Image.asset("assets/icons/redo.png"),
                  iconSize: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(left: width * .1),
                    padding: EdgeInsets.symmetric(
                      horizontal: width * .02,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.all(Radius.circular(width * .02)),
                      border: const Border(
                        top: BorderSide(width: 1.0, color: Colors.red),
                        left: BorderSide(width: 1.0, color: Colors.red),
                        right: BorderSide(width: 1.0, color: Colors.red),
                        bottom: BorderSide(width: 1.0, color: Colors.red),
                      ),
                    ),
                    child: const Text(
                      "Run",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        // /!\ important because of the telephone keypad which causes a "RenderFlex overflowed by x pixels on the bottom" error
        // display the CodeEditor widget
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width * .02),
          child: CodeEditor(
            model: model, // the model created above, not required since 1.0.0
            edit: true, // can edit the files? by default true
            onSubmit: (String? language, String? value) => print("yo"),
            disableNavigationbar:
                false, // hide the navigation bar ? by default false
            textEditingController:
                myController, // Provide an optional, custom TextEditingController.
          ),
        ),
      ),
    );
  }
}
