import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page3_materiaise_appsutilizados_model.dart';
export 'page3_materiaise_appsutilizados_model.dart';

class Page3MateriaiseAppsutilizadosWidget extends StatefulWidget {
  const Page3MateriaiseAppsutilizadosWidget({super.key});

  static String routeName = 'Page_3MateriaiseAppsutilizados';
  static String routePath = '/page3MateriaiseAppsutilizados';

  @override
  State<Page3MateriaiseAppsutilizadosWidget> createState() =>
      _Page3MateriaiseAppsutilizadosWidgetState();
}

class _Page3MateriaiseAppsutilizadosWidgetState
    extends State<Page3MateriaiseAppsutilizadosWidget> {
  late Page3MateriaiseAppsutilizadosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page3MateriaiseAppsutilizadosModel());
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
              Align(
                alignment: AlignmentDirectional(-0.06, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: (FFMainAxisAlignment.start).flutterValue,
                    children: [
                      Text(
                        'Materiais de apoio e aplicativos utilizados',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.cormorantGaramond(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Color(0xFF1C2F47),
                              fontSize: 44.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ],
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
