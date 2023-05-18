import 'package:flutter/material.dart';
import 'package:flutter_gptex/themes/app.fonts.dart';
import 'package:flutter_gptex/ui/component/appbar.dart';
import 'package:flutter_gptex/ui/component/bubble.chat.component.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(elevation: 1.0),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            ///user chats
            _userChatWidget(),
            _receiveChatWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20.0),
        ),
        width: MediaQuery.of(context).size.width,
        padding: MediaQuery.of(context).viewInsets,

        ///text field elevation
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 6.0,
            ),
            Expanded(
              flex: 1,
              child: Material(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: TextField(
                  maxLines: null,
                  style: appFonts.style(),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white54,
                    hintText: 'Ask GPT Everything',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    hintStyle: appFonts.style(weight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 6.0,
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.black87,
              child: const Icon(Icons.send),
              elevation: 10.0,
            )
          ],
        ),
      ),
    );
  }

  _userChatWidget()=>Container(
    margin: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          width: MediaQuery.sizeOf(context).width / 2,
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0, vertical: 10.0),
          child: appFonts.text(
              'Siapakah nama presiden pertama indonesia?',
              weight: FontWeight.normal,
              color: Colors.white,
              maxLine: null
          ),
        ),
        CustomPaint(
          painter: BubbleChat(Colors.green),
        )
      ],
    ),
  );
  _receiveChatWidget()=> Container(
    margin:
    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomPaint(
          painter: BubbleChat(Colors.blue),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 2,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0)),
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0, vertical: 10.0),
          child: appFonts.text(
              'Presiden pertama indonesia adalah soekarno',
              maxLine: null,
              weight: FontWeight.normal,color: Colors.white),
        ),
      ],
    ),
  );
}
