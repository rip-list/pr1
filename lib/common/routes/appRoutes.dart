// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

/*ppBar(
          title: const SizedBox(
            child: Text("tulpa ate the name"),
          ),
          backgroundColor: AppColors.violet,
        ),



        with PreferredSizeWidget;


        @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
  
  
   SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => const ListTile(
                  //TODO меняй совсем
                  title: Text(" "),
                ),
              )
  ,
            )
  
 SliverAnimatedList(
              itemBuilder: (context, index, animation) =>
                  const MaterialApp(home: Scaffold(body: Text('ytn'))),


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class ColorfulButton extends StatefulWidget {
  const ColorfulButton({super.key});

  @override
  State<ColorfulButton> createState() => _ColorfulButtonState();
}

class _ColorfulButtonState extends State<ColorfulButton> {
  late FocusNode _node;
  bool _focused = false;
  late FocusAttachment _nodeAttachment;
  Color _color = Colors.white;

  @override
  void initState() {
    super.initState();
    _node = FocusNode(debugLabel: 'Button');
    _node.addListener(_handleFocusChange);
    _nodeAttachment = _node.attach(context, onKey: _handleKeyPress);
  }

  void _handleFocusChange() {
    if (_node.hasFocus != _focused) {
      setState(() {
        _focused = _node.hasFocus;
      });
    }
  }

  KeyEventResult _handleKeyPress(FocusNode node, RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      debugPrint(
          'Focus node ${node.debugLabel} got key event: ${event.logicalKey}');
      if (event.logicalKey == LogicalKeyboardKey.keyR) {
        debugPrint('Changing color to red.');
        setState(() {
          _color = Colors.red;
        });
        return KeyEventResult.handled;
      } else if (event.logicalKey == LogicalKeyboardKey.keyG) {
        debugPrint('Changing color to green.');
        setState(() {
          _color = Colors.green;
        });
        return KeyEventResult.handled;
      } else if (event.logicalKey == LogicalKeyboardKey.keyB) {
        debugPrint('Changing color to blue.');
        setState(() {
          _color = Colors.blue;
        });
        return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }

  @override
  void dispose() {
    _node.removeListener(_handleFocusChange);
    // The attachment will automatically be detached in dispose().
    _node.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _nodeAttachment.reparent();
    return GestureDetector(
      onTap: () {
        if (_focused) {
          _node.unfocus();
        } else {
          _node.requestFocus();
        }
      },
      child: Center(
        child: Container(
          width: 400,
          height: 100,
          color: _focused ? _color : Colors.white,
          alignment: Alignment.center,
          child:
              Text(_focused ? "I'm in color! Press R,G,B!" : 'Press to focus'),
        ),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return DefaultTextStyle(
      style: textTheme.headlineMedium!,
      child: const ColorfulButton(),
    );
  }
}


//TODO код из 23 строки дока float_bar

SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => const ListTile(
                    focusColor: AppColors.blue,
                    style: ListTileStyle.list,
                    title: AlertDialog(
                      content: CusImage(
                        url:
                            "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8900201e-61b9-435d-96d6-fff2f6b21ddf/df2nxdl-5d089756-c76a-4806-9f34-834bc98d6432.png/v1/fill/w_894,h_894,q_70,strp/mobile_legends_bang_bang__melissa_by_skillerart_df2nxdl-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcLzg5MDAyMDFlLTYxYjktNDM1ZC05NmQ2LWZmZjJmNmIyMWRkZlwvZGYybnhkbC01ZDA4OTc1Ni1jNzZhLTQ4MDYtOWYzNC04MzRiYzk4ZDY0MzIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.NXUF_wSDB4__1Gc29HRota_pWyW_040jh4jIBTLiuSM",
                      ),
                    )
                                       ),
              ),
            ),


//TODO SLIVER LIST ln28
const AlertDialog(
  backgroundColor: AppColors.secondary,
                  content: CusImage(
                    url:
                        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8900201e-61b9-435d-96d6-fff2f6b21ddf/df2nxdl-5d089756-c76a-4806-9f34-834bc98d6432.png/v1/fill/w_894,h_894,q_70,strp/mobile_legends_bang_bang__melissa_by_skillerart_df2nxdl-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI4MCIsInBhdGgiOiJcL2ZcLzg5MDAyMDFlLTYxYjktNDM1ZC05NmQ2LWZmZjJmNmIyMWRkZlwvZGYybnhkbC01ZDA4OTc1Ni1jNzZhLTQ4MDYtOWYzNC04MzRiYzk4ZDY0MzIucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.NXUF_wSDB4__1Gc29HRota_pWyW_040jh4jIBTLiuSM",
                  ),),



  */
  