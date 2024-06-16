import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'dart:async';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'estadisticas_model.dart';
export 'estadisticas_model.dart';

class EstadisticasWidget extends StatefulWidget {
  const EstadisticasWidget({super.key});

  @override
  State<EstadisticasWidget> createState() => _EstadisticasWidgetState();
}

class _EstadisticasWidgetState extends State<EstadisticasWidget> {
  late EstadisticasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EstadisticasModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chartPieChartColorsList1 = [
      Color(0xFF8F46E9),
      Color(0xFF6F28CB),
      Color(0xFF2536A4),
      Color(0xFF539A80),
      Color(0xFF4A57C1),
      Color(0xFF3E8DD0),
      Color(0xFF2F1F86),
      Color(0xFF333EBA),
      Color(0xFF5C6BF4),
      Color(0xFF8F5CB5),
      Color(0xFFA487ED),
      Color(0xFF6A80C9),
      Color(0xFF7849BD),
      Color(0xFF2534B9),
      Color(0xFF8E80D9),
      Color(0xFF885495)
    ];
    final chartPieChartColorsList2 = [
      Color(0xFF8F46E9),
      Color(0xFF6F28CB),
      Color(0xFF2536A4),
      Color(0xFF4A57C1)
    ];
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFF27B437),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('menuInicio');
            },
          ),
          title: Text(
            'Estadisticas',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.9,
                  height: MediaQuery.sizeOf(context).height * 0.8,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    speed: 400,
                    front: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          height: MediaQuery.sizeOf(context).height * 0.8,
                          decoration: BoxDecoration(
                            color: Color(0xFF7FFD8D),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Cultivos totales',
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Flexible(
                                child: FutureBuilder<
                                    List<VistaHuertototalGraficaRow>>(
                                  future:
                                      VistaHuertototalGraficaTable().queryRows(
                                    queryFn: (q) => q,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 50.0,
                                          height: 50.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    List<VistaHuertototalGraficaRow>
                                        chartVistaHuertototalGraficaRowList =
                                        snapshot.data!;
                                    return Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.8,
                                      child: Stack(
                                        children: [
                                          FlutterFlowPieChart(
                                            data: FFPieChartData(
                                              values:
                                                  chartVistaHuertototalGraficaRowList
                                                      .map((e) => e.cantidad)
                                                      .withoutNulls
                                                      .toList(),
                                              colors: chartPieChartColorsList1,
                                              radius: [100.0],
                                              borderColor: [Color(0x00000000)],
                                            ),
                                            donutHoleRadius: 0.0,
                                            donutHoleColor: Colors.transparent,
                                            sectionLabelType:
                                                PieChartSectionLabelType.value,
                                            sectionLabelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            labelFormatter: LabelFormatter(
                                              numberFormat: (val) =>
                                                  formatNumber(
                                                val,
                                                formatType: FormatType.compact,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -1.0, -1.0),
                                            child: FlutterFlowChartLegendWidget(
                                              entries:
                                                  chartVistaHuertototalGraficaRowList
                                                      .map((e) => e.cultNombre)
                                                      .withoutNulls
                                                      .toList()
                                                      .asMap()
                                                      .entries
                                                      .map(
                                                        (label) => LegendEntry(
                                                          chartPieChartColorsList1[
                                                              label.key %
                                                                  chartPieChartColorsList1
                                                                      .length],
                                                          label.value,
                                                        ),
                                                      )
                                                      .toList(),
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.2,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              textPadding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 5.0, 0.0),
                                              borderWidth: 1.0,
                                              borderColor: Colors.black,
                                              indicatorSize: 10.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    back: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: FutureBuilder<
                              List<CantidadparcelasselecionadasRow>>(
                            future: CantidadparcelasselecionadasTable()
                                .querySingleRow(
                              queryFn: (q) => q.in_(
                                'hay_registros',
                                [false, true],
                              ),
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
                              List<CantidadparcelasselecionadasRow>
                                  graficaCantidadparcelasselecionadasRowList =
                                  snapshot.data!;
                              final graficaCantidadparcelasselecionadasRow =
                                  graficaCantidadparcelasselecionadasRowList
                                          .isNotEmpty
                                      ? graficaCantidadparcelasselecionadasRowList
                                          .first
                                      : null;
                              return Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF7FFD8D),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Estadistica por parcela',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 30.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Stack(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      children: [
                                        if (_model.dropDownValue != null)
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FutureBuilder<
                                                List<VistaGridsGraficaRow>>(
                                              future: (_model
                                                          .requestCompleter ??=
                                                      Completer<
                                                          List<
                                                              VistaGridsGraficaRow>>()
                                                        ..complete(
                                                            VistaGridsGraficaTable()
                                                                .queryRows(
                                                          queryFn: (q) => q
                                                              .eq(
                                                                'grid_id',
                                                                _model
                                                                    .dropDownValue,
                                                              )
                                                              .order(
                                                                  'cantidad'),
                                                        )))
                                                  .future,
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<VistaGridsGraficaRow>
                                                    chartVistaGridsGraficaRowList =
                                                    snapshot.data!;
                                                return Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.8,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.7,
                                                  child: Stack(
                                                    children: [
                                                      FlutterFlowPieChart(
                                                        data: FFPieChartData(
                                                          values:
                                                              chartVistaGridsGraficaRowList
                                                                  .map((e) =>
                                                                      formatNumber(
                                                                        e.cantidad,
                                                                        formatType:
                                                                            FormatType.compact,
                                                                      ))
                                                                  .toList(),
                                                          colors:
                                                              chartPieChartColorsList2,
                                                          radius: [100.0],
                                                          borderColor: [
                                                            Color(0x00000000)
                                                          ],
                                                        ),
                                                        donutHoleRadius: 0.0,
                                                        donutHoleColor:
                                                            Colors.transparent,
                                                        sectionLabelType:
                                                            PieChartSectionLabelType
                                                                .value,
                                                        sectionLabelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        labelFormatter:
                                                            LabelFormatter(
                                                          numberFormat: (val) =>
                                                              formatNumber(
                                                            val,
                                                            formatType:
                                                                FormatType
                                                                    .compact,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child:
                                                            FlutterFlowChartLegendWidget(
                                                          entries:
                                                              chartVistaGridsGraficaRowList
                                                                  .map((e) => e
                                                                      .cultNombre)
                                                                  .withoutNulls
                                                                  .toList()
                                                                  .asMap()
                                                                  .entries
                                                                  .map(
                                                                    (label) =>
                                                                        LegendEntry(
                                                                      chartPieChartColorsList2[label
                                                                              .key %
                                                                          chartPieChartColorsList2
                                                                              .length],
                                                                      label
                                                                          .value,
                                                                    ),
                                                                  )
                                                                  .toList(),
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.8,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.2,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          textPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      5.0,
                                                                      0.0),
                                                          borderWidth: 1.0,
                                                          borderColor:
                                                              Colors.black,
                                                          indicatorSize: 10.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        if (graficaCantidadparcelasselecionadasRow
                                                ?.hayRegistros ==
                                            true)
                                          Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.8,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.66,
                                            decoration: BoxDecoration(),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.8, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  FutureBuilder<
                                                      List<
                                                          HuertosCuadriculasRow>>(
                                                    future:
                                                        HuertosCuadriculasTable()
                                                            .queryRows(
                                                      queryFn: (q) => q
                                                          .not(
                                                            'nombre_grafica',
                                                            'is',
                                                            null,
                                                          )
                                                          .order('id',
                                                              ascending: true),
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                CircularProgressIndicator(
                                                              valueColor:
                                                                  AlwaysStoppedAnimation<
                                                                      Color>(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      List<HuertosCuadriculasRow>
                                                          dropDownHuertosCuadriculasRowList =
                                                          snapshot.data!;
                                                      return FlutterFlowDropDown<
                                                          int>(
                                                        controller: _model
                                                                .dropDownValueController ??=
                                                            FormFieldController<
                                                                int>(
                                                          _model.dropDownValue ??=
                                                              dropDownHuertosCuadriculasRowList
                                                                  .first
                                                                  .nombreGrafica,
                                                        ),
                                                        options: List<int>.from(
                                                            dropDownHuertosCuadriculasRowList
                                                                .map(
                                                                    (e) => e.id)
                                                                .toList()),
                                                        optionLabels:
                                                            dropDownHuertosCuadriculasRowList
                                                                .map((e) => e
                                                                    .nombreGrafica
                                                                    .toString())
                                                                .toList(),
                                                        onChanged: (val) async {
                                                          setState(() => _model
                                                                  .dropDownValue =
                                                              val);
                                                          setState(() => _model
                                                                  .requestCompleter =
                                                              null);
                                                        },
                                                        width: 175.0,
                                                        height: 56.0,
                                                        searchHintTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        searchTextStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        hintText:
                                                            'Selecciona terreno',
                                                        searchHintText:
                                                            'Numero de terreno',
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                        fillColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        borderWidth: 2.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    4.0,
                                                                    16.0,
                                                                    4.0),
                                                        hidesUnderline: true,
                                                        isOverButton: true,
                                                        isSearchable: true,
                                                        isMultiSelect: false,
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        if (graficaCantidadparcelasselecionadasRow
                                                ?.hayRegistros ==
                                            false)
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Text(
                                                  'No estan habilitadas las estadisticas por terreno.\nHabilitalo en \'\'Mi huerta\'\'',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: FlutterFlowIconButton(
                                                  borderColor:
                                                      Color(0xFF27B437),
                                                  borderRadius: 8.0,
                                                  borderWidth: 2.0,
                                                  buttonSize:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.2,
                                                  fillColor: Color(0x8027B437),
                                                  icon: FaIcon(
                                                    FontAwesomeIcons.seedling,
                                                    color: Color(0xFF1C8028),
                                                    size: 40.0,
                                                  ),
                                                  onPressed: () async {
                                                    context
                                                        .pushNamed('planilla');
                                                  },
                                                ),
                                              ),
                                              Text(
                                                'Mi huerta',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
