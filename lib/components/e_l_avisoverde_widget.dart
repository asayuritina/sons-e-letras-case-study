import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'e_l_avisoverde_model.dart';
export 'e_l_avisoverde_model.dart';

class ELAvisoverdeWidget extends StatefulWidget {
  const ELAvisoverdeWidget({super.key});

  @override
  State<ELAvisoverdeWidget> createState() => _ELAvisoverdeWidgetState();
}

class _ELAvisoverdeWidgetState extends State<ELAvisoverdeWidget> {
  late ELAvisoverdeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ELAvisoverdeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 322.24,
      height: 100.0,
      decoration: BoxDecoration(
        color: Color(0xE38FF68B),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Text(
          'CPF válido! ',
          style: FlutterFlowTheme.of(context).bodyLarge.override(
                font: GoogleFonts.inter(
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                fontSize: 25.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
                fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
              ),
        ),
      ),
    );
  }
}
