import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'page4_materiaiseapps_copy_model.dart';
export 'page4_materiaiseapps_copy_model.dart';

class Page4MateriaiseappsCopyWidget extends StatefulWidget {
  const Page4MateriaiseappsCopyWidget({super.key});

  static String routeName = 'Page_4MateriaiseappsCopy';
  static String routePath = '/page4MateriaiseappsCopy';

  @override
  State<Page4MateriaiseappsCopyWidget> createState() =>
      _Page4MateriaiseappsCopyWidgetState();
}

class _Page4MateriaiseappsCopyWidgetState
    extends State<Page4MateriaiseappsCopyWidget> {
  late Page4MateriaiseappsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page4MateriaiseappsCopyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF7F3E7),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                  child: Container(
                    width: double.infinity,
                    height: 940.3,
                    decoration: BoxDecoration(),
                    child: Opacity(
                      opacity: 0.2,
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Container(
                          width: 50.0,
                          height: 50.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/WhatsApp_Image_2026-01-24_at_13.18.03.jpeg',
                            fit: BoxFit.contain,
                            alignment: Alignment(0.0, 0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
