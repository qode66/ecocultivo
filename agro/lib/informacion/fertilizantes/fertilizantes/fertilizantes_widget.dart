import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fertilizantes_model.dart';
export 'fertilizantes_model.dart';

class FertilizantesWidget extends StatefulWidget {
  const FertilizantesWidget({
    super.key,
    this.parameter1,
  });

  final int? parameter1;

  @override
  State<FertilizantesWidget> createState() => _FertilizantesWidgetState();
}

class _FertilizantesWidgetState extends State<FertilizantesWidget> {
  late FertilizantesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FertilizantesModel());

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
      child: FutureBuilder<List<FertilizantesRow>>(
        future: FertilizantesTable().queryRows(
          queryFn: (q) => q.order('Nombre', ascending: true),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<FertilizantesRow> dropDownFertilizantesRowList = snapshot.data!;
          return FlutterFlowDropDown<String>(
            controller: _model.dropDownValueController ??=
                FormFieldController<String>(null),
            options: dropDownFertilizantesRowList.map((e) => e.nombre).toList(),
            onChanged: (val) async {
              setState(() => _model.dropDownValue = val);
              FFAppState().fertilizantesSelect = '';
              FFAppState().fertilizantesSelect = _model.dropDownValue!;
            },
            width: 300.0,
            height: 56.0,
            searchHintTextStyle:
                FlutterFlowTheme.of(context).labelMedium.override(
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
          );
        },
      ),
    );
  }
}
