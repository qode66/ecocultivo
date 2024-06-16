import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/mi_huerta/estadistica_x_grids/estadistica_x_grids_widget.dart';
import '/mi_huerta/pop_cultivo/pop_cultivo_widget.dart';
import '/mi_huerta/pop_eliminar/pop_eliminar_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'planilla_model.dart';
export 'planilla_model.dart';

class PlanillaWidget extends StatefulWidget {
  const PlanillaWidget({super.key});

  @override
  State<PlanillaWidget> createState() => _PlanillaWidgetState();
}

class _PlanillaWidgetState extends State<PlanillaWidget> {
  late PlanillaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanillaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
              context.pop();
            },
          ),
          title: Text(
            'Mi huerta',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.pie_chart_rounded,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pushNamed('estadisticas');
              },
            ),
          ],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FutureBuilder<List<HuertosCuadriculasRow>>(
                  future: (_model.requestCompleter1 ??=
                          Completer<List<HuertosCuadriculasRow>>()
                            ..complete(HuertosCuadriculasTable().queryRows(
                              queryFn: (q) => q.order('id', ascending: true),
                            )))
                      .future,
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
                    List<HuertosCuadriculasRow>
                        columnHuertosCuadriculasRowList = snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          List.generate(columnHuertosCuadriculasRowList.length,
                              (columnIndex) {
                        final columnHuertosCuadriculasRow =
                            columnHuertosCuadriculasRowList[columnIndex];
                        return Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FutureBuilder<List<CeldasHuertoRow>>(
                            future: (_model.requestCompleter2 ??=
                                    Completer<List<CeldasHuertoRow>>()
                                      ..complete(CeldasHuertoTable().queryRows(
                                        queryFn: (q) => q
                                            .eq(
                                              'grid_id',
                                              columnHuertosCuadriculasRow.id,
                                            )
                                            .order('grid_id', ascending: true),
                                      )))
                                .future,
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
                              List<CeldasHuertoRow>
                                  containerCeldasHuertoRowList = snapshot.data!;
                              return Container(
                                width: 360.0,
                                height: 400.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.8,
                                      height: 40.0,
                                      decoration: BoxDecoration(),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              columnIndex.toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Expanded(
                                                    flex: 1,
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child:
                                                          EstadisticaXGridsWidget(
                                                        key: Key(
                                                            'Keyzv8_${columnIndex}_of_${columnHuertosCuadriculasRowList.length}'),
                                                        parameter1: columnIndex,
                                                        parameter2:
                                                            columnHuertosCuadriculasRow
                                                                .id,
                                                        parameter3:
                                                            columnHuertosCuadriculasRow
                                                                .nombreGrafica,
                                                        nombreEstadistica:
                                                            columnHuertosCuadriculasRow
                                                                    .nombreGrafica !=
                                                                null,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        'Crear estadistica',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Builder(
                                        builder: (context) {
                                          final row = FFAppState()
                                              .row
                                              .toList()
                                              .take(5)
                                              .toList();
                                          return GridView.builder(
                                            padding: EdgeInsets.zero,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 5,
                                              crossAxisSpacing: 0.0,
                                              mainAxisSpacing: 0.0,
                                              childAspectRatio: 0.2,
                                            ),
                                            scrollDirection: Axis.horizontal,
                                            itemCount: row.length,
                                            itemBuilder: (context, rowIndex) {
                                              final rowItem = row[rowIndex];
                                              return Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.72,
                                                height: 72.0,
                                                decoration: BoxDecoration(),
                                                child: Builder(
                                                  builder: (context) {
                                                    final column = FFAppState()
                                                        .COLUMN
                                                        .toList()
                                                        .take(5)
                                                        .toList();
                                                    return Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          column.length,
                                                          (columnIndex) {
                                                        final columnItem =
                                                            column[columnIndex];
                                                        return FutureBuilder<
                                                            List<
                                                                CeldasHuertoRow>>(
                                                          future:
                                                              CeldasHuertoTable()
                                                                  .querySingleRow(
                                                            queryFn: (q) => q
                                                                .eq(
                                                                  'row',
                                                                  rowIndex,
                                                                )
                                                                .eq(
                                                                  'column',
                                                                  columnIndex,
                                                                )
                                                                .eq(
                                                                  'grid_id',
                                                                  columnHuertosCuadriculasRow
                                                                      .id,
                                                                ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                            List<CeldasHuertoRow>
                                                                containerCeldasHuertoRowList =
                                                                snapshot.data!;
                                                            final containerCeldasHuertoRow =
                                                                containerCeldasHuertoRowList
                                                                        .isNotEmpty
                                                                    ? containerCeldasHuertoRowList
                                                                        .first
                                                                    : null;
                                                            return Container(
                                                              width: 72.0,
                                                              height: 72.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              child: Builder(
                                                                builder:
                                                                    (context) =>
                                                                        InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onLongPress:
                                                                      () async {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                PopEliminarWidget(
                                                                              id: containerCeldasHuertoRow?.id,
                                                                              titulo: 'Editar:',
                                                                              gridId: columnHuertosCuadriculasRow.id,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));

                                                                    setState(() =>
                                                                        _model.requestCompleter1 =
                                                                            null);
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 72.0,
                                                                    height:
                                                                        72.0,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        if (containerCeldasHuertoRow?.imgTerreno !=
                                                                            true)
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onLongPress: () async {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (dialogContext) {
                                                                                      return Dialog(
                                                                                        elevation: 0,
                                                                                        insetPadding: EdgeInsets.zero,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                        child: GestureDetector(
                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                          child: PopEliminarWidget(
                                                                                            id: containerCeldasHuertoRow?.id,
                                                                                            titulo: 'Editar:',
                                                                                            gridId: columnHuertosCuadriculasRow.id,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));

                                                                                  setState(() => _model.requestCompleter1 = null);
                                                                                  await _model.waitForRequestCompleted1();
                                                                                },
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: Colors.transparent,
                                                                                  borderRadius: 20.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  icon: Icon(
                                                                                    Icons.add,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    await CeldasHuertoTable().insert({
                                                                                      'row': rowIndex,
                                                                                      'column': columnIndex,
                                                                                      'img_terreno': true,
                                                                                      'grid_id': columnHuertosCuadriculasRow.id,
                                                                                    });
                                                                                    setState(() => _model.requestCompleter2 = null);
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (containerCeldasHuertoRow?.imgTerreno ==
                                                                            true)
                                                                          Builder(
                                                                            builder: (context) =>
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onLongPress: () async {
                                                                                await showDialog(
                                                                                  context: context,
                                                                                  builder: (dialogContext) {
                                                                                    return Dialog(
                                                                                      elevation: 0,
                                                                                      insetPadding: EdgeInsets.zero,
                                                                                      backgroundColor: Colors.transparent,
                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                      child: GestureDetector(
                                                                                        onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                        child: PopEliminarWidget(
                                                                                          id: containerCeldasHuertoRow?.id,
                                                                                          titulo: 'Editar:',
                                                                                          gridId: columnHuertosCuadriculasRow.id,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => setState(() {}));

                                                                                setState(() => _model.requestCompleter1 = null);
                                                                                await _model.waitForRequestCompleted1();
                                                                              },
                                                                              child: Container(
                                                                                width: 72.0,
                                                                                height: 72.0,
                                                                                decoration: BoxDecoration(
                                                                                  image: DecorationImage(
                                                                                    fit: BoxFit.fill,
                                                                                    image: Image.asset(
                                                                                      'assets/images/3478044_20483.jpg',
                                                                                    ).image,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if ((containerCeldasHuertoRow?.imgTerreno ==
                                                                                true) &&
                                                                            (containerCeldasHuertoRow?.cultivoPlantado ==
                                                                                null))
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) => FutureBuilder<List<CultivoRow>>(
                                                                                future: CultivoTable().queryRows(
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
                                                                                          valueColor: AlwaysStoppedAnimation<Color>(
                                                                                            FlutterFlowTheme.of(context).primary,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }
                                                                                  List<CultivoRow> iconButtonCultivoRowList = snapshot.data!;
                                                                                  return InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onLongPress: () async {
                                                                                      await showDialog(
                                                                                        context: context,
                                                                                        builder: (dialogContext) {
                                                                                          return Dialog(
                                                                                            elevation: 0,
                                                                                            insetPadding: EdgeInsets.zero,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                            child: GestureDetector(
                                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                              child: PopEliminarWidget(
                                                                                                id: containerCeldasHuertoRow?.id,
                                                                                                titulo: 'Editar:',
                                                                                                gridId: columnHuertosCuadriculasRow.id,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        },
                                                                                      ).then((value) => setState(() {}));

                                                                                      setState(() => _model.requestCompleter1 = null);
                                                                                    },
                                                                                    child: FlutterFlowIconButton(
                                                                                      borderColor: Colors.transparent,
                                                                                      borderRadius: 20.0,
                                                                                      borderWidth: 1.0,
                                                                                      buttonSize: 40.0,
                                                                                      icon: Icon(
                                                                                        Icons.add,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        await showDialog(
                                                                                          context: context,
                                                                                          builder: (dialogContext) {
                                                                                            return Dialog(
                                                                                              elevation: 0,
                                                                                              insetPadding: EdgeInsets.zero,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                              child: GestureDetector(
                                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                child: PopCultivoWidget(
                                                                                                  id: containerCeldasHuertoRow?.id,
                                                                                                  titulo: 'Selecciona cultivo plantado:',
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ).then((value) => setState(() {}));
                                                                                      },
                                                                                    ),
                                                                                  );
                                                                                },
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        if (containerCeldasHuertoRow?.cultivoPlantado !=
                                                                            null)
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) => InkWell(
                                                                                splashColor: Colors.transparent,
                                                                                focusColor: Colors.transparent,
                                                                                hoverColor: Colors.transparent,
                                                                                highlightColor: Colors.transparent,
                                                                                onLongPress: () async {
                                                                                  await showDialog(
                                                                                    context: context,
                                                                                    builder: (dialogContext) {
                                                                                      return Dialog(
                                                                                        elevation: 0,
                                                                                        insetPadding: EdgeInsets.zero,
                                                                                        backgroundColor: Colors.transparent,
                                                                                        alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                        child: GestureDetector(
                                                                                          onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                          child: PopEliminarWidget(
                                                                                            id: containerCeldasHuertoRow?.id,
                                                                                            titulo: 'Editar:',
                                                                                            gridId: columnHuertosCuadriculasRow.id,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));

                                                                                  setState(() => _model.requestCompleter1 = null);
                                                                                },
                                                                                child: Container(
                                                                                  width: 36.0,
                                                                                  height: 36.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x7FFFFFFF),
                                                                                  ),
                                                                                  child: Visibility(
                                                                                    visible: containerCeldasHuertoRow?.cultivoPlantado != null,
                                                                                    child: Align(
                                                                                      alignment: AlignmentDirectional(0.0, 0.0),
                                                                                      child: Builder(
                                                                                        builder: (context) => FutureBuilder<List<VistaCeldashuertoConImagenRow>>(
                                                                                          future: VistaCeldashuertoConImagenTable().querySingleRow(
                                                                                            queryFn: (q) => q.eq(
                                                                                              'id',
                                                                                              containerCeldasHuertoRow?.id,
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
                                                                                            List<VistaCeldashuertoConImagenRow> imageVistaCeldashuertoConImagenRowList = snapshot.data!;
                                                                                            final imageVistaCeldashuertoConImagenRow = imageVistaCeldashuertoConImagenRowList.isNotEmpty ? imageVistaCeldashuertoConImagenRowList.first : null;
                                                                                            return InkWell(
                                                                                              splashColor: Colors.transparent,
                                                                                              focusColor: Colors.transparent,
                                                                                              hoverColor: Colors.transparent,
                                                                                              highlightColor: Colors.transparent,
                                                                                              onLongPress: () async {
                                                                                                await showDialog(
                                                                                                  context: context,
                                                                                                  builder: (dialogContext) {
                                                                                                    return Dialog(
                                                                                                      elevation: 0,
                                                                                                      insetPadding: EdgeInsets.zero,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                      child: GestureDetector(
                                                                                                        onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                        child: PopEliminarWidget(
                                                                                                          id: containerCeldasHuertoRow?.id,
                                                                                                          titulo: 'Editar:',
                                                                                                          gridId: columnHuertosCuadriculasRow.id,
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => setState(() {}));

                                                                                                setState(() => _model.requestCompleter1 = null);
                                                                                                await _model.waitForRequestCompleted1();
                                                                                              },
                                                                                              child: ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                child: Image.network(
                                                                                                  imageVistaCeldashuertoConImagenRow!.cultImg!,
                                                                                                  width: 36.0,
                                                                                                  height: 36.0,
                                                                                                  fit: BoxFit.contain,
                                                                                                ),
                                                                                              ),
                                                                                            );
                                                                                          },
                                                                                        ),
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
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      }),
                    );
                  },
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FFButtonWidget(
                              onPressed: () async {
                                await HuertosCuadriculasTable().insert({
                                  'terreno': false,
                                });
                                setState(() => _model.requestCompleter1 = null);
                              },
                              text: 'Añadir huerto',
                              options: FFButtonOptions(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
