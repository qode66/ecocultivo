import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'prueba1_model.dart';
export 'prueba1_model.dart';

class Prueba1Widget extends StatefulWidget {
  const Prueba1Widget({
    super.key,
    this.parameter1,
    required this.supabase,
  });

  final int? parameter1;
  final List<CultivoRow>? supabase;

  @override
  State<Prueba1Widget> createState() => _Prueba1WidgetState();
}

class _Prueba1WidgetState extends State<Prueba1Widget> {
  late Prueba1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Prueba1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 8.0),
      child: FlutterFlowDropDown<String>(
        controller: _model.dropDownValueController ??=
            FormFieldController<String>(null),
        options: widget.supabase!.map((e) => e.cultNombre).toList(),
        onChanged: (val) async {
          setState(() => _model.dropDownValue = val);
          FFAppState().cultivoSelect = '';
          FFAppState().cultivoSelect = _model.dropDownValue!;
        },
        width: 300.0,
        height: 56.0,
        searchHintTextStyle: FlutterFlowTheme.of(context).labelMedium.override(
              fontFamily: 'Readex Pro',
              letterSpacing: 0.0,
            ),
        searchTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              letterSpacing: 0.0,
            ),
        textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Readex Pro',
              letterSpacing: 0.0,
            ),
        searchHintText: 'Dame pistas...',
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: FlutterFlowTheme.of(context).secondaryText,
          size: 24.0,
        ),
        fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        elevation: 2.0,
        borderColor: FlutterFlowTheme.of(context).alternate,
        borderWidth: 2.0,
        borderRadius: 8.0,
        margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
        hidesUnderline: true,
        isOverButton: true,
        isSearchable: true,
        isMultiSelect: false,
      ),
    );
  }
}
