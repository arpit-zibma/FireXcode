import 'package:firexcode/firexcode.dart';

class ExampleContainerGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      XContainerGradient(
        height: 200.0,
        width: xwidth(context),
        gradient: [Colors.orange, Colors.red].xLGClamp(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.7],
        ),
        child: 'test'.xTextColorWhite(fontsize: 25.0).toCenter(),
      ).xap(value: 20.0),
      XContainerGradient(
        shadowColor: Colors.pink,
        blurRadius: 15.0,
        offset: Offset(0, 10),
        onTap: () {},
        rounded: 10.0,
        height: 200.0,
        width: xwidth(context),
        gradient: [Colors.pink, Colors.indigo].xLGClamp(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.7],
        ),
        child: 'test'.xTextColorWhite(fontsize: 25.0).toCenter(),
      ).xap(value: 20.0),
      XContainerGradient(
        borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(100, 100),
            bottomRight: Radius.elliptical(100, 100)),
        height: 200.0,
        width: xwidth(context),
        gradient: [Color(0xFF65FDF0), Color(0xFF1D6FA3)].xLGClamp(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.7],
        ),
        child: 'test'.xTextColorWhite(fontsize: 25.0).toCenter(),
      ).xap(value: 20.0),
    ].xListView().xScaffold(
        backgroundColor: Colors.white,
        appBar: 'ContainerGradient'.xTextColorBlack().xAppBar(
          preferredSize: Size(15, 15),
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
