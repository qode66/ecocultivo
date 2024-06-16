import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'estadistica_x_grids_model.dart';
export 'estadistica_x_grids_model.dart';

class EstadisticaXGridsWidget extends StatefulWidget {
  const EstadisticaXGridsWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    required this.nombreEstadistica,
  });

  final int? parameter1;
  final int? parameter2;
  final int? parameter3;
  final bool? nombreEstadistica;

  @override
  State<EstadisticaXGridsWidget> createState() =>
      _EstadisticaXGridsWidgetState();
}

class _EstadisticaXGridsWidgetState extends State<EstadisticaXGridsWidget> {
  late EstadisticaXGridsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EstadisticaXGridsModel());

    _model.switchValue = widget.nombreEstadistica!;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
        child: Switch.adaptive(
          value: _model.switchValue!,
          onChanged: (newValue) async {
            setState(() => _model.switchValue = newValue!);
            if (newValue!) {
              await HuertosCuadriculasTable().update(
                data: {
                  'nombre_grafica': widget.parameter1,
                },
                matchingRows: (rows) => rows.eq(
                  'id',
                  widget.parameter2,
                ),
              );
              await CeldasHuertoTable().update(
                data: {
                  'nombre_grafica': widget.parameter1,
                },
                matchingRows: (rows) => rows.eq(
                  'grid_id',
                  widget.parameter2,
                ),
              );
            } else {
              await HuertosCuadriculasTable().update(
                data: {
                  'nombre_grafica': null,
                },
                matchingRows: (rows) => rows.eq(
                  'id',
                  widget.parameter2,
                ),
              );
              await CeldasHuertoTable().update(
                data: {
                  'nombre_grafica': null,
                },
                matchingRows: (rows) => rows.eq(
                  'grid_id',
                  widget.parameter2,
                ),
              );
            }
          },
          activeColor: FlutterFlowTheme.of(context).primary,
          activeTrackColor: FlutterFlowTheme.of(context).accent1,
          inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
          inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
        ),
      ),
    );
  }
}
