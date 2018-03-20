# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170106144358) do

  create_table "Accion_Personal", primary_key: "Codigo", force: :cascade do |t|
    t.integer    "ap_CodCompania",          limit: 4
    t.integer    "Codigo_Empleado",         limit: 4,                                                 null: false
    t.integer    "Tipo_Accion",             limit: 4,                                                 null: false
    t.datetime   "Fecha",                                                                             null: false
    t.text_basic "Razon_Accion",            limit: 2147483647,                                        null: false
    t.varchar    "Motivo_Cierre_Contrato",  limit: 1
    t.real       "Periodos_Retroactivos"
    t.varchar    "Nivel_actual",            limit: 40
    t.varchar    "Clasificacion_actual",    limit: 100
    t.varchar    "Posicion_actual",         limit: 100
    t.money      "Salario_Actual",                             precision: 19, scale: 4
    t.money      "Salario_Hora_Actual",                        precision: 19, scale: 4
    t.varchar    "Nivel_Propuesto",         limit: 40
    t.varchar    "Clasificacion_Propuesta", limit: 100
    t.varchar    "Posicion_Propuesta",      limit: 100
    t.money      "Salario_Propuesto",                          precision: 19, scale: 4
    t.money      "Salario_Hora_Propuesto",                     precision: 19, scale: 4
    t.varchar    "Estatus_Empleado",        limit: 1
    t.integer    "Autorizada",              limit: 1
    t.varchar    "Solicitada_Por",          limit: 60
    t.varchar    "Cargo_Solicitante",       limit: 50
    t.varchar    "Autorizada_Por",          limit: 60
    t.varchar    "Cargo_Autorizada_Por",    limit: 50
    t.datetime   "Fecha_Efectividad"
    t.datetime   "Fecha_Autorizacion"
    t.varchar    "Incluido_Nomina_Por",     limit: 60
    t.real       "Porc_Aumento"
    t.integer    "Cod_MotivoAccion",        limit: 4
    t.integer    "CodSucursalAct",          limit: 4
    t.integer    "CodSucursalProp",         limit: 4,                                   default: 0
    t.integer    "CodClasifAct",            limit: 4
    t.integer    "CodClasifProp",           limit: 4,                                   default: 0
    t.integer    "CodCargoActual",          limit: 4
    t.integer    "CodCargoProp",            limit: 4,                                   default: 0
    t.integer    "CodSupervAct",            limit: 4
    t.integer    "CodSupervProp",           limit: 4,                                   default: 0
    t.integer    "CodNomActual",            limit: 4
    t.integer    "CodNomProp",              limit: 4,                                   default: 0
    t.integer    "CodPolHorAct",            limit: 4
    t.integer    "CodPolHorProp",           limit: 4,                                   default: 0
    t.integer    "CodSubGrupNomAct",        limit: 4
    t.integer    "CodSubGrupNomProp",       limit: 4,                                   default: 0
    t.integer    "CodTipoEmpAct",           limit: 1
    t.integer    "CodTipoEmpProp",          limit: 1,                                   default: 0
    t.char       "CodEstatusAct",           limit: 1
    t.char       "CodEstatusProp",          limit: 1,                                   default: "A"
    t.integer    "CodSolicPor",             limit: 4
    t.varchar    "Usuario",                 limit: 30
    t.datetime   "Fecha_RegAut"
    t.datetime   "FechaIngActual"
    t.datetime   "FechaIngProp"
    t.integer    "NoRecontratable",         limit: 1
    t.integer    "NoPuedeEntrarEmpresa",    limit: 1
    t.varchar    "CuentaBancoAnt",          limit: 20
    t.varchar    "CuentaBancoAct",          limit: 20
    t.integer    "AutorizadaAutoServ",      limit: 1,                                   default: 0
  end

  add_index "Accion_Personal", ["CodSolicPor"], name: "IX_Accion_Personal_1"
  add_index "Accion_Personal", ["ap_CodCompania", "Codigo_Empleado"], name: "IX_Accion_Personal"

  create_table "Acciones_Cartas", id: false, force: :cascade do |t|
    t.integer "Codigo",            limit: 4,  null: false
    t.integer "Cod_Accion",        limit: 4,  null: false
    t.varchar "Descripcion_Carta", limit: 80, null: false
    t.char    "Estatus",           limit: 1,  null: false
  end

  create_table "Acciones_CartasImprimir", id: false, force: :cascade do |t|
    t.integer "CodCompania", limit: 4, null: false
    t.integer "CodAccion",   limit: 4, null: false
    t.integer "CodEmpleado", limit: 4, null: false
  end

  create_table "Acciones_Cartas_Lineas", id: false, force: :cascade do |t|
    t.integer "Cod_CartaAccion",   limit: 4,  null: false
    t.integer "Linea",             limit: 4,  null: false
    t.varchar "Descripcion_Linea", limit: 80
    t.integer "Justificacion",     limit: 1
  end

  create_table "Acciones_EmpAut", id: false, force: :cascade do |t|
    t.integer "Cod_Configuracion", limit: 4,  null: false
    t.integer "Cod_Cargo",         limit: 4,  null: false
    t.varchar "Label1",            limit: 30
    t.integer "NumEmp1",           limit: 4
    t.varchar "Label2",            limit: 30
    t.integer "NumEmp2",           limit: 4
    t.varchar "Label3",            limit: 30
    t.integer "NumEmp3",           limit: 4
    t.varchar "Label4",            limit: 30
    t.integer "NumEmp4",           limit: 4
    t.varchar "Label5",            limit: 30
    t.integer "NumEmp5",           limit: 4
    t.varchar "Label6",            limit: 30
    t.integer "NumEmp6",           limit: 4
    t.varchar "Label7",            limit: 30
    t.integer "NumEmp7",           limit: 4
    t.varchar "Label8",            limit: 30
    t.integer "NumEmp8",           limit: 4
    t.integer "aeu_CodCompania",   limit: 4
    t.integer "aeu_CodCompania2",  limit: 4
    t.integer "aeu_CodCompania3",  limit: 4
    t.integer "aeu_CodCompania4",  limit: 4
    t.integer "aeu_CodCompania5",  limit: 4
    t.integer "aeu_CodCompania6",  limit: 4
    t.integer "aeu_CodCompania7",  limit: 4
    t.integer "aeu_CodCompania8",  limit: 4
  end

  create_table "Acciones_FirmasAut", id: false, force: :cascade do |t|
    t.integer "Cod_Accion",       limit: 4,  null: false
    t.varchar "Label1",           limit: 30
    t.integer "NumEmp1",          limit: 4
    t.integer "CodCargo1",        limit: 4
    t.varchar "Label2",           limit: 30
    t.integer "NumEmp2",          limit: 4
    t.integer "CodCargo2",        limit: 4
    t.varchar "Label3",           limit: 30
    t.integer "NumEmp3",          limit: 4
    t.integer "CodCargo3",        limit: 4
    t.varchar "Label4",           limit: 30
    t.integer "NumEmp4",          limit: 4
    t.integer "CodCargo4",        limit: 4
    t.varchar "Label5",           limit: 30
    t.integer "NumEmp5",          limit: 4
    t.integer "CodCargo5",        limit: 4
    t.varchar "Label6",           limit: 30
    t.integer "NumEmp6",          limit: 4
    t.integer "CodCargo6",        limit: 4
    t.varchar "Label7",           limit: 30
    t.integer "NumEmp7",          limit: 4
    t.integer "CodCargo7",        limit: 4
    t.varchar "Label8",           limit: 30
    t.integer "NumEmp8",          limit: 4
    t.integer "CodCargo8",        limit: 4
    t.integer "afu_CodCompania",  limit: 4
    t.integer "afu_CodCompania2", limit: 4
    t.integer "afu_CodCompania3", limit: 4
    t.integer "afu_CodCompania4", limit: 4
    t.integer "afu_CodCompania5", limit: 4
    t.integer "afu_CodCompania6", limit: 4
    t.integer "afu_CodCompania7", limit: 4
    t.integer "afu_CodCompania8", limit: 4
  end

  add_index "Acciones_FirmasAut", ["afu_CodCompania", "Cod_Accion"], name: "IX_Acciones_FirmasAut"

  create_table "Acciones_Motivos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",    limit: 100, null: false
    t.integer "Cod_TipoAccion", limit: 4
  end

  create_table "Areas_Economicas", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 100, null: false
  end

  create_table "Aumentos_Salarios", id: false, force: :cascade do |t|
    t.integer  "Ano",             limit: 4,                           null: false
    t.integer  "Mes",             limit: 1,                           null: false
    t.integer  "as_CodCompania",  limit: 4
    t.integer  "Numero",          limit: 4,                           null: false
    t.datetime "Fecha",                                               null: false
    t.integer  "CodSubGrupo",     limit: 4,                           null: false
    t.integer  "CodCargo",        limit: 4,                           null: false
    t.money    "SalarioBase",                precision: 19, scale: 4, null: false
    t.money    "SalarioVariable",            precision: 19, scale: 4
    t.varchar  "DescPeriodo1",    limit: 50
    t.money    "SalarioAno1",                precision: 19, scale: 4
    t.varchar  "DescPeriodo2",    limit: 50
    t.money    "SalarioAno2",                precision: 19, scale: 4
    t.varchar  "DescPeriodo3",    limit: 50
    t.money    "SalarioAno3",                precision: 19, scale: 4
    t.float    "PorcAumento"
    t.money    "ValorAumento",               precision: 19, scale: 4
    t.money    "DifRedondeo",                precision: 19, scale: 4
    t.money    "AumentoNeto",                precision: 19, scale: 4
    t.datetime "FechaIng"
    t.float    "ResultadoEval"
    t.decimal  "SalarioProm",                precision: 18, scale: 2
  end

  add_index "Aumentos_Salarios", ["as_CodCompania", "Numero"], name: "IX_Aumentos_Salarios"

  create_table "Aumentos_Salarios_Temp", id: false, force: :cascade do |t|
    t.integer  "Ano",             limit: 4,                           null: false
    t.integer  "Mes",             limit: 1,                           null: false
    t.datetime "Fecha",                                               null: false
    t.integer  "ast_CodCompania", limit: 4
    t.integer  "Numero",          limit: 4,                           null: false
    t.integer  "CodSubGrupo",     limit: 4,                           null: false
    t.integer  "CodCargo",        limit: 4,                           null: false
    t.money    "SalarioBase",                precision: 19, scale: 4, null: false
    t.money    "SalarioVariable",            precision: 19, scale: 4
    t.varchar  "DescPeriodo1",    limit: 50
    t.money    "SalarioAno1",                precision: 19, scale: 4
    t.varchar  "DescPeriodo2",    limit: 50
    t.money    "SalarioAno2",                precision: 19, scale: 4
    t.varchar  "DescPeriodo3",    limit: 50
    t.money    "SalarioAno3",                precision: 19, scale: 4
    t.float    "PorcAumento"
    t.money    "ValorAumento",               precision: 19, scale: 4
    t.money    "DifRedondeo",                precision: 19, scale: 4
    t.money    "AumentoNeto",                precision: 19, scale: 4
    t.datetime "FechaIng"
    t.float    "ResultadoEval"
    t.decimal  "SalarioProm",                precision: 18, scale: 2
  end

  create_table "AutoServicioNotif", primary_key: "Id", force: :cascade do |t|
    t.datetime   "Fecha",                                 null: false
    t.integer    "CodCompaniaEnvia",   limit: 4,          null: false
    t.integer    "CodCompaniaDestino", limit: 4,          null: false
    t.integer    "CodEmpEnvia",        limit: 4,          null: false
    t.integer    "CodEmpDestino",      limit: 4,          null: false
    t.varchar    "Asunto",             limit: 200,        null: false
    t.text_basic "Mensaje",            limit: 2147483647, null: false
    t.integer    "Leido",              limit: 1,          null: false
    t.datetime   "FechaLeido"
  end

  create_table "Autorizaciones_Solicitudes", primary_key: "Cod_Registro", force: :cascade do |t|
    t.integer  "Orden",        limit: 2,               null: false
    t.char     "Concepto",     limit: 1,               null: false
    t.integer  "Cod_Compania", limit: 4,               null: false
    t.integer  "Cod_Empleado", limit: 4,               null: false
    t.integer  "Cod_EmpAut",   limit: 4,               null: false
    t.integer  "Autorizado",   limit: 1,   default: 0, null: false
    t.datetime "FechaAutoriz",                         null: false
    t.varchar  "Comentario",   limit: 500
    t.integer  "Secuencia",    limit: 4
    t.integer  "Rechazada",    limit: 1
  end

  add_index "Autorizaciones_Solicitudes", ["Cod_Registro", "Cod_EmpAut", "Concepto"], name: "IX_Autorizaciones_Solicitudes", unique: true

  create_table "Avance_Sueldo", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Tipo_Nomina", limit: 4
    t.integer  "Ano",         limit: 4
    t.integer  "Mes",         limit: 1
    t.integer  "Periodo",     limit: 1
    t.datetime "Fecha_Desde"
    t.datetime "Fecha_Hasta"
    t.integer  "Compania",    limit: 4
    t.money    "Neto_Pagado",            precision: 19, scale: 4
    t.varchar  "Usuario",     limit: 30
  end

  create_table "Bancos", id: false, force: :cascade do |t|
    t.varchar "CodBancoDestino",    limit: 15, null: false
    t.varchar "DigitoVerBancoDest", limit: 15, null: false
    t.varchar "Banco",              limit: 60, null: false
    t.integer "bCodCompania",       limit: 4
  end

  create_table "Beneficios_PosicClasif", id: false, force: :cascade do |t|
    t.integer "Numero_Compania",  limit: 4,                          null: false
    t.integer "Codigo_Cargo",     limit: 4,                          null: false
    t.integer "Codigo_Beneficio", limit: 4,                          null: false
    t.money   "Valor_Beneficio",            precision: 19, scale: 4
  end

  create_table "Bonificacion", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Tipo_Nomina",         limit: 4,                                       null: false
    t.integer  "Compania",            limit: 4,                                       null: false
    t.integer  "Ano_Correspondiente", limit: 2,                                       null: false
    t.datetime "Fecha_Procesamiento",                                                 null: false
    t.money    "Total_Bonificacion",             precision: 19, scale: 4
    t.money    "Total_Descuentos",               precision: 19, scale: 4
    t.money    "Total_Neto",                     precision: 19, scale: 4
    t.integer  "Ano_Cont",            limit: 4
    t.integer  "Periodo_Cont",        limit: 1
    t.integer  "Transferida",         limit: 1,                           default: 0
    t.integer  "NoTransfMod",         limit: 4,                           default: 0
    t.integer  "NoAsientoCG",         limit: 4,                           default: 0
    t.varchar  "Usuario",             limit: 30,                                      null: false
    t.integer  "Mes_ISR",             limit: 1
  end

  create_table "Bonificacion_Emp", id: false, force: :cascade do |t|
    t.integer "Codigo_Bonificacion", limit: 4,                          null: false
    t.integer "bem_CodCompania",     limit: 4
    t.integer "Codigo_Empleado",     limit: 4,                          null: false
    t.integer "Cod_Posicion",        limit: 4
    t.money   "Salario_Base",                  precision: 19, scale: 4, null: false
    t.money   "Salario_Diario",                precision: 19, scale: 4, null: false
    t.integer "Dias_Bonificacion",   limit: 4
    t.integer "Meses",               limit: 1
    t.varchar "Estatus",             limit: 1,                          null: false
    t.money   "Valor_Descuentos",              precision: 19, scale: 4
    t.money   "Valor_Bonificacion",            precision: 19, scale: 4, null: false
    t.money   "Bonificacion_Neta",             precision: 19, scale: 4
    t.money   "ISR_PendCompensar",             precision: 19, scale: 4
    t.money   "ISR_Compensado",                precision: 19, scale: 4
    t.varchar "boMoneda",            limit: 5
  end

  add_index "Bonificacion_Emp", ["Codigo_Bonificacion", "Codigo_Empleado"], name: "Personal_Nomina_AltCumb_dbo_Bonificacion_Emp id_Bonificacion_Emp_1", unique: true
  add_index "Bonificacion_Emp", ["Codigo_Bonificacion", "Codigo_Empleado"], name: "Personal_Nomina_dbo_Bonificacion_Emp id_Bonificacion_Emp_1", unique: true

  create_table "Borrar", id: false, force: :cascade do |t|
    t.integer "Codigo",      limit: 4
    t.varchar "Descripcion", limit: 50
  end

  create_table "CW_ErrorCatcher", primary_key: "EventId", force: :cascade do |t|
    t.datetime   "EventFecha"
    t.text_basic "EventMensaje", limit: 2147483647
    t.string     "EventDonde",   limit: 150
  end

  create_table "Calendario_Horas", id: false, force: :cascade do |t|
    t.datetime "Fecha_Inicio1"
    t.datetime "Fecha_Fin1"
    t.datetime "Fecha_Inicio2"
    t.datetime "Fecha_Fin2"
    t.datetime "Fecha_Inicio3"
    t.datetime "Fecha_Fin3"
    t.datetime "Fecha_Inicio4"
    t.datetime "Fecha_Fin4"
    t.datetime "Fecha_Inicio5"
    t.datetime "Fecha_Fin5"
  end

  create_table "Calendario_Horas_Historico", id: false, force: :cascade do |t|
    t.integer  "Horario",       limit: 1
    t.datetime "Desde"
    t.datetime "Hasta"
    t.integer  "Lunes",         limit: 4
    t.integer  "Martes",        limit: 4
    t.integer  "Miercoles",     limit: 4
    t.integer  "Jueves",        limit: 4
    t.integer  "Viernes",       limit: 4
    t.integer  "Sabado",        limit: 4
    t.integer  "Codigo_Nomina", limit: 4
  end

  create_table "Calendario_Horas_Temp", id: false, force: :cascade do |t|
    t.integer  "Horario",       limit: 1
    t.datetime "Desde"
    t.datetime "Hasta"
    t.integer  "Lunes",         limit: 4
    t.integer  "Martes",        limit: 4
    t.integer  "Miercoles",     limit: 4
    t.integer  "Jueves",        limit: 4
    t.integer  "Viernes",       limit: 4
    t.integer  "Sabado",        limit: 4
    t.integer  "Codigo_Nomina", limit: 4
  end

  create_table "Cap_AreasCursos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",  limit: 100, null: false
    t.integer "Cod_Compania", limit: 4
  end

  create_table "Cap_AsignacionCursos", primary_key: "Cod_Bacht", force: :cascade do |t|
    t.integer  "Secuencia",       limit: 4,                null: false
    t.integer  "Cod_ProgCurso",   limit: 4,                null: false
    t.integer  "cac_CodCompania", limit: 4
    t.integer  "Cod_Empleado",    limit: 4,                null: false
    t.datetime "Fec_Asignacion"
    t.datetime "Fec_Registro"
    t.char     "Estatus",         limit: 1,  default: "1"
    t.varchar  "Usuario",         limit: 30
  end

  add_index "Cap_AsignacionCursos", ["Cod_ProgCurso", "Cod_Empleado"], name: "IX_Cap_AsignacionCursos"

  create_table "Cap_Cargos_Cursos", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer "Codigo",       limit: 4, null: false
    t.integer "Cod_Curso",    limit: 4, null: false
    t.integer "Cod_Cargo",    limit: 4, null: false
    t.char    "Requerido",    limit: 1
    t.integer "Chequeado",    limit: 1
    t.integer "Recurrencia",  limit: 1
    t.integer "Tiempo",       limit: 2
    t.char    "Periodicidad", limit: 1
  end

  create_table "Cap_Competencias_Genericas", id: false, force: :cascade do |t|
    t.integer "Cod_Compania", limit: 4,   null: false
    t.integer "Codigo",       limit: 4,   null: false
    t.integer "Cod_Curso",    limit: 4,   null: false
    t.varchar "Codigo_CG",    limit: 100, null: false
    t.integer "Requerido",    limit: 1
    t.integer "Cod_Cargo",    limit: 4
  end

  create_table "Cap_Competencias_Tecnicas", id: false, force: :cascade do |t|
    t.integer "Cod_Compania", limit: 4,   null: false
    t.integer "Codigo",       limit: 4,   null: false
    t.integer "Cod_Curso",    limit: 4,   null: false
    t.varchar "Codigo_CT",    limit: 100, null: false
    t.integer "Requerido",    limit: 1
  end

  create_table "Cap_Cursos", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer "Codigo",        limit: 4,   null: false
    t.varchar "Descripcion",   limit: 100, null: false
    t.integer "Cod_Area",      limit: 4,   null: false
    t.varchar "Titulo",        limit: 100, null: false
    t.integer "Req_Calif",     limit: 1,   null: false
    t.float   "Calificacion",              null: false
    t.varchar "Comentario",    limit: 255
    t.varchar "Usuario",       limit: 30,  null: false
    t.integer "Cod_GradoAcad", limit: 4
  end

  create_table "Cap_CursosContenido", primary_key: "Cod_Curso", force: :cascade do |t|
    t.integer "Orden",     limit: 4,   null: false
    t.varchar "Contenido", limit: 255, null: false
  end

  create_table "Cap_DiasClase", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 50,             null: false
    t.integer "Lunes",       limit: 1,  default: 0, null: false
    t.integer "Martes",      limit: 1,  default: 0, null: false
    t.integer "Miercoles",   limit: 1,  default: 0, null: false
    t.integer "Jueves",      limit: 1,  default: 0, null: false
    t.integer "Viernes",     limit: 1,  default: 0, null: false
    t.integer "Sabado",      limit: 1,  default: 0, null: false
    t.integer "Domingo",     limit: 1,  default: 0, null: false
  end

  create_table "Cap_Facilitadores", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",  limit: 100, null: false
    t.integer "EsEmpleado",   limit: 1,   null: false
    t.integer "Cod_Empleado", limit: 4
    t.varchar "Titulos",      limit: 255
    t.integer "fCodCompania", limit: 4
  end

  create_table "Cap_Materiales", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",   limit: 100,                          null: false
    t.money   "CostoUnitario",             precision: 19, scale: 4, null: false
    t.integer "mCodCompania",  limit: 4
  end

  create_table "Cap_Medios", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",   limit: 100, null: false
    t.integer "meCodCompania", limit: 4
  end

  create_table "Cap_ProgCursosCont", primary_key: "Cod_ProgCurso", force: :cascade do |t|
    t.integer "Orden",     limit: 4,   null: false
    t.varchar "Modulo",    limit: 100, null: false
    t.varchar "Contenido", limit: 255, null: false
  end

  create_table "Cap_ProgCursosDest", primary_key: "Cod_ProgCurso", force: :cascade do |t|
    t.integer "Orden",        limit: 4,   null: false
    t.integer "Cod_Cualidad", limit: 4,   null: false
    t.varchar "Destreza",     limit: 100
  end

  create_table "Cap_ProgCursosFacil", primary_key: "Cod_ProgCurso", force: :cascade do |t|
    t.integer "Orden",           limit: 4,   null: false
    t.varchar "Modulo",          limit: 100, null: false
    t.integer "Cod_Facilitador", limit: 4,   null: false
  end

  create_table "Cap_ProgCursosMat", primary_key: "Cod_ProgCurso", force: :cascade do |t|
    t.integer "Orden",        limit: 4, null: false
    t.integer "Cod_Material", limit: 4, null: false
  end

  create_table "Cap_ProgCursosMed", primary_key: "Cod_ProgCurso", force: :cascade do |t|
    t.integer "Orden",     limit: 4, null: false
    t.integer "Cod_Medio", limit: 4, null: false
  end

  create_table "Cap_ProgramCursos", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer  "Codigo",            limit: 4,                           null: false
    t.integer  "Cod_Curso",         limit: 4,                           null: false
    t.integer  "Cod_Aula",          limit: 4,                           null: false
    t.float    "Duracion",                                              null: false
    t.char     "Unid_Duracion",     limit: 1,                           null: false
    t.integer  "Cod_DiaCurso",      limit: 4,                           null: false
    t.varchar  "Hora_Inicio",       limit: 12,                          null: false
    t.integer  "Cant_Horas",        limit: 2,                           null: false
    t.datetime "Fec_Inicio",                                            null: false
    t.datetime "Fec_Termino",                                           null: false
    t.integer  "Max_Integrantes",   limit: 2,                           null: false
    t.integer  "Estatus",           limit: 1,                           null: false
    t.char     "Forma_CostoAula",   limit: 1,                           null: false
    t.money    "Costo_Aula",                   precision: 19, scale: 4, null: false
    t.money    "Costo_MatInteg",               precision: 19, scale: 4, null: false
    t.money    "Costo_RefInteg",               precision: 19, scale: 4, null: false
    t.money    "Costo_OtrosInteg",             precision: 19, scale: 4, null: false
    t.money    "Costo_TotCurso",               precision: 19, scale: 4
    t.integer  "Integrantes_Curso", limit: 2
    t.varchar  "Coordinador",       limit: 60
    t.char     "Forma_CostoFacil",  limit: 1
    t.money    "Costo_Facilitador",            precision: 19, scale: 4
    t.money    "Presup_Gastos",                precision: 19, scale: 4
    t.money    "Gasto_Final",                  precision: 19, scale: 4
    t.varchar  "Usuario",           limit: 30,                          null: false
    t.float    "TotalHorasCurso"
  end

  create_table "Cap_RetiroIntegCursos", primary_key: "Cod_Bacht", force: :cascade do |t|
    t.integer  "Secuencia",       limit: 4,  null: false
    t.integer  "Cod_ProgCurso",   limit: 4,  null: false
    t.integer  "crc_CodCompania", limit: 4
    t.integer  "Cod_Empleado",    limit: 4,  null: false
    t.datetime "Fec_Retiro"
    t.datetime "Fec_Registro"
    t.varchar  "Usuario",         limit: 30
  end

  add_index "Cap_RetiroIntegCursos", ["Cod_ProgCurso", "Cod_Empleado"], name: "IX_Cap_RetiroIntegCursos"

  create_table "Cap_UbicacionesCursos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",   limit: 100, null: false
    t.varchar "Localidad",     limit: 100
    t.integer "Arquilada",     limit: 1
    t.integer "Cod_Pais",      limit: 2
    t.integer "ubCodCompania", limit: 4
  end

  create_table "CargaEvaluacionesEntidadesTemp", primary_key: "SecuenEntidad", force: :cascade do |t|
    t.integer  "CodCompania",      limit: 4,  null: false
    t.varchar  "CodEmpleado",      limit: 15, null: false
    t.char     "TipoEvaluado",     limit: 1,  null: false
    t.varchar  "Nombres",          limit: 50
    t.varchar  "Apellidos",        limit: 50
    t.integer  "CodSucursal",      limit: 4
    t.varchar  "CodDepartamento",  limit: 50, null: false
    t.varchar  "CodCargo",         limit: 50, null: false
    t.varchar  "CodSupervisor",    limit: 15, null: false
    t.datetime "FechaIngreso"
    t.char     "Estatus",          limit: 1,  null: false
    t.varchar  "CorreoInterno",    limit: 60
    t.varchar  "CorreoExterno",    limit: 60
    t.datetime "Fecha_Nacimiento"
    t.char     "Genero",           limit: 1
    t.varchar  "cedula",           limit: 13
  end

  create_table "CargosAsignados_Borrar", id: false, force: :cascade do |t|
    t.string "Cargos", limit: 255
    t.float  "Codigo"
  end

  create_table "Carta_Aumento_Salario", id: false, force: :cascade do |t|
    t.varchar "Frase_Cortesia",     limit: 50
    t.varchar "Linea_1",            limit: 80
    t.varchar "Linea_2",            limit: 80
    t.varchar "Linea_3",            limit: 80
    t.varchar "Linea_4",            limit: 80
    t.varchar "Ultima_Linea",       limit: 160
    t.varchar "Frase_Despedida",    limit: 40
    t.varchar "Licenciado",         limit: 50
    t.varchar "Nombre_Autorizante", limit: 50
    t.varchar "Copia",              limit: 15
  end

  create_table "Carta_Cancelacion_Contrato", id: false, force: :cascade do |t|
    t.varchar "Senores",            limit: 30
    t.varchar "Secretaria",         limit: 60
    t.varchar "Direccion",          limit: 60
    t.varchar "Frase_Cortesia",     limit: 40
    t.varchar "Linea_1",            limit: 80
    t.varchar "Linea_2",            limit: 80
    t.varchar "Linea_3",            limit: 80
    t.varchar "Linea_4",            limit: 80
    t.varchar "Ultima_Linea",       limit: 160
    t.varchar "Frase_Despedida",    limit: 40
    t.varchar "Licenciado",         limit: 50
    t.varchar "Nombre_Autorizante", limit: 50
    t.varchar "Copia",              limit: 15
  end

  create_table "Cartas_Formatos", primary_key: "Cod_Compania", force: :cascade do |t|
    t.varchar "Nombre_Carta",    limit: 100,  null: false
    t.string  "Contenido_Carta", limit: 4000
  end

  create_table "Cartas_PantallaEjec", primary_key: "CodCompania", force: :cascade do |t|
    t.varchar "ModCargar",      limit: 20, null: false
    t.varchar "PantallaCargar", limit: 50, null: false
  end

  create_table "Categoria_Competencias", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion_Categoria", limit: 100, null: false
    t.integer "Orden_Form",            limit: 4
  end

  create_table "Cheques", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Cod_Beneficiario", limit: 4,                            null: false
    t.varchar "Beneficiario",     limit: 100,                          null: false
    t.varchar "No_Cheque",        limit: 30,                           null: false
    t.money   "Monto_Numero",                 precision: 19, scale: 4, null: false
    t.varchar "Monto_Letras",     limit: 255,                          null: false
    t.integer "Dia",              limit: 2,                            null: false
    t.integer "Mes",              limit: 2,                            null: false
    t.integer "Ano",              limit: 4,                            null: false
    t.varchar "SubGrupoNomina",   limit: 200
  end

  create_table "Cheques_Concepto", primary_key: "Cod_Cheque", force: :cascade do |t|
    t.integer "Orden",    limit: 4,                            null: false
    t.varchar "Concepto", limit: 100,                          null: false
    t.money   "Monto",                precision: 19, scale: 4, null: false
  end

  create_table "Clasificacion_Cargos", primary_key: "Numero_Compania", force: :cascade do |t|
    t.integer "Codigo",        limit: 4,                           null: false
    t.varchar "Descripcion",   limit: 50,                          null: false
    t.integer "Nivel",         limit: 4,                           null: false
    t.money   "Salario_Desde",            precision: 19, scale: 4
    t.money   "Salario_Hasta",            precision: 19, scale: 4
    t.money   "Salario_Medio",            precision: 19, scale: 4
    t.integer "Puntos_Desde",  limit: 2
    t.integer "Puntos_Hasta",  limit: 2
  end

  add_index "Clasificacion_Cargos", ["Codigo"], name: "Personal_Nomina_AltCumb_dbo_Clasificacion_Cargos Clasificacion_CargosCodigo"

  create_table "Clasificacion_Niveles", primary_key: "Numero_Compania", force: :cascade do |t|
    t.integer "Codigo",                limit: 4,   null: false
    t.integer "Nivel",                 limit: 4,   null: false
    t.varchar "Descripcion",           limit: 100, null: false
    t.integer "Nivel_Padre",           limit: 4
    t.integer "Nivel_Correspondiente", limit: 4
    t.varchar "Funcion",               limit: 255
    t.varchar "Usuario",               limit: 30,  null: false
    t.char    "Tipo_Clasificacion",    limit: 1
    t.varchar "Indice",                limit: 20
    t.varchar "No_Depto",              limit: 5
    t.integer "Orden",                 limit: 4
    t.char    "Estatus_Clasif",        limit: 1
  end

  add_index "Clasificacion_Niveles", ["Numero_Compania", "Codigo", "Nivel"], name: "Personal_Nomina_AltCumb_dbo_Clasificacion_Niveles Clasificacion_Niv_1", unique: true
  add_index "Clasificacion_Niveles", ["Numero_Compania", "Descripcion"], name: "IX_Clasificacion_Niveles", unique: true
  add_index "Clasificacion_Niveles", ["Numero_Compania"], name: "Personal_Nomina_AltCumb_dbo_Clasificacion_Niveles Clasificacion_NivelesNumero_compania"

  create_table "Clasificacion_NivelesSuc", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer "Cod_Clasificacion", limit: 4, null: false
    t.integer "Cod_Sucursal",      limit: 4, null: false
  end

  create_table "Companias", primary_key: "Codigo", force: :cascade do |t|
    t.varchar  "Descripcion",         limit: 100,                           null: false
    t.varchar  "RNC",                 limit: 15
    t.varchar  "Numero_Patronal",     limit: 50
    t.varchar  "Direccion",           limit: 75
    t.varchar  "Provincia",           limit: 40
    t.varchar  "Municipio",           limit: 40
    t.varchar  "Poliza",              limit: 15
    t.varchar  "Zona_Inspeccion",     limit: 10
    t.varchar  "Categoria",           limit: 10
    t.varchar  "Delegacion",          limit: 10
    t.varchar  "Delegacion_De",       limit: 50
    t.varchar  "Telefono",            limit: 12
    t.varchar  "Fax",                 limit: 12
    t.varchar  "No_AFP",              limit: 15
    t.varchar  "Represen_Leg",        limit: 50
    t.real     "Porc_PagarSS"
    t.varchar  "Email",               limit: 100
    t.varchar  "Sector",              limit: 50
    t.integer  "Zona_Franca",         limit: 1
    t.varchar  "Parque_Industrial",   limit: 100
    t.varchar  "Dedica_Empresa",      limit: 255
    t.varchar  "No_IDSS",             limit: 15
    t.varchar  "Registro_NacLab",     limit: 20
    t.varchar  "Usuario",             limit: 30
    t.varchar  "Servidor",            limit: 100
    t.varchar  "NombreDB",            limit: 100
    t.money    "Valor_Instalaciones",              precision: 19, scale: 4
    t.varchar  "Pagina_Web",          limit: 100
    t.varchar  "Nombre_Emp",          limit: 100
    t.varchar  "Cedula_RepLegal",     limit: 15
    t.varchar  "Cedula_Empleador",    limit: 15
    t.varchar  "Seccion",             limit: 40
    t.integer  "CodSectorEco",        limit: 4
    t.varchar  "RangoCantEmp",        limit: 20
    t.varchar  "RutaLogo",            limit: 200
    t.varchar  "AreaCode",            limit: 10
    t.varchar  "Contacto",            limit: 40
    t.varchar  "ContactoTel",         limit: 15
    t.datetime "FechaReg"
    t.varchar  "CodPlan",             limit: 15
    t.integer  "CodGrupo",            limit: 4
    t.integer  "CodHorarioLabor",     limit: 4
    t.integer  "CodMunicipio",        limit: 4
    t.integer  "Id",                  limit: 4
    t.string   "Logo",                limit: 4000
  end

  create_table "Companias_Galeria", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "Orden",              limit: 4,   null: false
    t.varchar "Imagen",             limit: 200, null: false
    t.integer "adj_CodCompania",    limit: 4
    t.integer "adj_Orden",          limit: 4
    t.varchar "adj_RutaArchivo",    limit: 255
    t.varchar "adj_NombreArchivo",  limit: 200
    t.varchar "adj_Extension",      limit: 5
    t.varchar "adj_IDNomArchivo",   limit: 200
    t.varchar "adj_DocOrigenAdj",   limit: 3
    t.varchar "adj_IDDocOrigenAdj", limit: 50
  end

  create_table "Companias_tmp", primary_key: "Codigo", force: :cascade do |t|
    t.varchar  "Descripcion",         limit: 100,                          null: false
    t.varchar  "RNC",                 limit: 15
    t.varchar  "Numero_Patronal",     limit: 50
    t.varchar  "Direccion",           limit: 75
    t.varchar  "Provincia",           limit: 40
    t.varchar  "Municipio",           limit: 40
    t.varchar  "Poliza",              limit: 15
    t.varchar  "Zona_Inspeccion",     limit: 10
    t.varchar  "Categoria",           limit: 10
    t.varchar  "Delegacion",          limit: 10
    t.varchar  "Delegacion_De",       limit: 50
    t.varchar  "Telefono",            limit: 12
    t.varchar  "Fax",                 limit: 12
    t.varchar  "No_AFP",              limit: 15
    t.varchar  "Represen_Leg",        limit: 50
    t.decimal  "Porc_PagarSS",                    precision: 18, scale: 0
    t.varchar  "Email",               limit: 100
    t.varchar  "Sector",              limit: 50
    t.integer  "Zona_Franca",         limit: 1
    t.varchar  "Parque_Industrial",   limit: 100
    t.varchar  "Dedica_Empresa",      limit: 255
    t.varchar  "No_IDSS",             limit: 15
    t.varchar  "Registro_NacLab",     limit: 20
    t.varchar  "Usuario",             limit: 30
    t.varchar  "Servidor",            limit: 100
    t.varchar  "NombreDB",            limit: 100
    t.money    "Valor_Instalaciones",             precision: 19, scale: 4
    t.varchar  "Pagina_Web",          limit: 100
    t.varchar  "Nombre_Emp",          limit: 100
    t.varchar  "Cedula_RepLegal",     limit: 15
    t.varchar  "Cedula_Empleador",    limit: 15
    t.varchar  "Seccion",             limit: 40
    t.integer  "CodSectorEco",        limit: 4
    t.varchar  "RangoCantEmp",        limit: 20
    t.varchar  "RutaLogo",            limit: 200
    t.varchar  "AreaCode",            limit: 10
    t.varchar  "Contacto",            limit: 40
    t.varchar  "ContactoTel",         limit: 15
    t.datetime "FechaReg"
    t.varchar  "CodPlan",             limit: 15
    t.integer  "CodGrupo",            limit: 4
    t.integer  "CodHorarioLabor",     limit: 4
    t.integer  "CodMunicipio",        limit: 4
  end

  create_table "Competencias_Evaluaciones", primary_key: "Codigo", force: :cascade do |t|
    t.char    "Tipo_Competencia", limit: 1,   null: false
    t.integer "Cod_Competencia",  limit: 4
    t.varchar "Descripcion",      limit: 500, null: false
    t.float   "Puntos_Req"
    t.integer "Cod_Cargo",        limit: 4
  end

  create_table "Configuracion", primary_key: "Codigo_Compania", force: :cascade do |t|
    t.integer "Imprimir_Nomina_Columnas",       limit: 1
    t.integer "Imprimir_Nomina_Listado",        limit: 1
    t.integer "Imprimir_Nomina_Fija",           limit: 1
    t.integer "Nomina_ImpSubGPag",              limit: 1
    t.integer "Vacaciones_Avance_Sueldo",       limit: 1
    t.integer "Vacaciones_Avance_Bono",         limit: 1
    t.integer "Vacaciones_Avance_Automatico",   limit: 1
    t.integer "Vacaciones_Bono_Automatico",     limit: 1
    t.varchar "Vacaciones_Valor_Periodo1",      limit: 2
    t.varchar "Vacaciones_Valor_Periodo2",      limit: 2
    t.integer "Vacaciones_Pagar_Nom_Ant_Vac",   limit: 1
    t.integer "Vacaciones_Pagar_Nom_Pos_Vac",   limit: 1
    t.integer "Vacaciones_Desactivar_Salario",  limit: 1
    t.integer "Vac_Desactivar_Otros_Ing",       limit: 1
    t.integer "Vac_Desactivar_Horas_Trab",      limit: 1
    t.integer "Vac_Desactivar_Descuentos",      limit: 1
    t.integer "Nomina_Grupos",                  limit: 1
    t.integer "Nomina_Grupos_SubGrupos",        limit: 1
    t.integer "Nomina_Billetes1000",            limit: 1
    t.integer "Nomina_Billetes500",             limit: 1
    t.integer "Nomina_Billetes100",             limit: 1
    t.integer "Nomina_Orden_Numero",            limit: 1
    t.integer "Nomina_Orden_Nombre",            limit: 1
    t.integer "Nomina_Orden_Cedula",            limit: 1
    t.integer "Nomina_Incluir_Inactivos",       limit: 1
    t.integer "Nomina_Incluir_NoFijos",         limit: 1
    t.integer "Nomina_Incluir_Retroactivos",    limit: 1
    t.integer "Nom_Proce_Nom_Sobregiros",       limit: 1
    t.integer "Nom_Procesar_Nom_Unica",         limit: 1
    t.integer "Nom_Incluir_Ing_Negativos",      limit: 1
    t.integer "Nom_Desabilitar_Des_Exce",       limit: 1
    t.integer "Nom_Imp_Pag_Completa",           limit: 1
    t.integer "Nom_Imprimir_Media_Pag",         limit: 1
    t.integer "Nom_Imprimir_Tercio_Pag",        limit: 1
    t.integer "Nomina_Excluir_Sobregirados",    limit: 1
    t.integer "Nom_ISR_Sal_Proyectado",         limit: 1
    t.integer "Nom_ISR_Ing_Proyectados",        limit: 1
    t.integer "Nom_Ocultar_Ced",                limit: 1
    t.integer "Nom_Ocultar_Cargo",              limit: 1
    t.integer "Nom_Ocultar_SalBase",            limit: 1
    t.integer "Nom_Ocultar_Cant_Horas",         limit: 1
    t.integer "Nom_Ocultar_Valor_Horas",        limit: 1
    t.integer "Nomina_Ocultar_Ingresos",        limit: 1
    t.integer "Nom_Ocultar_TotIngVar",          limit: 1
    t.integer "Nom_Ocultar_Descuentos",         limit: 1
    t.integer "Nomina_Ocultar_ISR",             limit: 1
    t.integer "Nomina_Ocultar_SS",              limit: 1
    t.real    "Coeficiente_Salario"
    t.integer "Regalia_Mes_Ultimo_Sueldo",      limit: 1
    t.integer "Regalia_Ultimo_Sueldo",          limit: 1
    t.integer "Regalia_Salario_Base",           limit: 1
    t.integer "Regalia_Acumulado",              limit: 1
    t.integer "Regalia_Incluir_Inactivos",      limit: 1
    t.integer "Regalia_Incluir_NoFijos",        limit: 1
    t.integer "Regalia_Incluir_Cancelados",     limit: 1
    t.integer "Regalia_Descontar_ISR",          limit: 1
    t.integer "Regalia_Meses_Desde",            limit: 2
    t.integer "Bonificacion_Acumulado",         limit: 1
    t.integer "Bon_Salario_Base",               limit: 1
    t.integer "Bon_Incluir_Inactivos",          limit: 1
    t.integer "Bon_Incluir_NoFijos",            limit: 1
    t.integer "Bon_Incluir_Cancelados",         limit: 1
    t.integer "Bon_Descontar_ISR",              limit: 1
    t.integer "Bon_Descontar_Infotep",          limit: 1
    t.real    "Bon_Porciento_Infotep"
    t.integer "Bon_Meses_Desde",                limit: 2
    t.integer "Liq_Prea_Sal_Base",              limit: 1
    t.integer "Liq_Prea_Sal_Promedio",          limit: 1
    t.integer "Liq_Ces_Sal_Base",               limit: 1
    t.integer "Liq_Ces_Sal_Promedio",           limit: 1
    t.integer "Liq_Vac_Sal_Base",               limit: 1
    t.integer "Liq_Vac_Sal_Prom",               limit: 1
    t.integer "Liq_Prea_Sal_Base_Hora",         limit: 1
    t.integer "Liq_Prea_Sal_Prom_Hora",         limit: 1
    t.integer "Liq_Ces_Sal_Base_Hora",          limit: 1
    t.integer "Liq_Ces_Sal_Prom_Hora",          limit: 1
    t.integer "Liq_Vac_Sal_Base_Hora",          limit: 1
    t.integer "Liq_Vac_Sal_Prom_Hora",          limit: 1
    t.varchar "Ruta_Listado_Banco",             limit: 255
    t.varchar "Numero_Compania_Lista",          limit: 20
    t.integer "Retenciones_Tam_Papel",          limit: 1
    t.float   "Porciento_Poliza_Accid"
    t.money   "Limite_Poliza_Sujeto_Cont",                  precision: 19, scale: 4
    t.varchar "Ruta_DB",                        limit: 100
    t.varchar "Servidor",                       limit: 100
    t.varchar "Nombre_DB",                      limit: 100
    t.varchar "Ruta_Fotos",                     limit: 100
    t.integer "Forma_Codigo_Empleado",          limit: 1
    t.float   "AFP_PorcComp"
    t.float   "AFP_PorcEmp"
    t.money   "AFP_SalTope",                                precision: 19, scale: 4
    t.float   "ARS_PorcComp"
    t.float   "ARS_PorcEmp"
    t.money   "ARS_SalTope",                                precision: 19, scale: 4
    t.float   "Riesgo_PorcComp"
    t.float   "Riesgo_PorcEmp"
    t.money   "Riesgo_SalTope",                             precision: 19, scale: 4
    t.varchar "Nom_CodEmpDesp",                 limit: 2
    t.varchar "Causa_LaborHoras",               limit: 100
    t.integer "Control_DiasLab",                limit: 1
    t.integer "Control_CorteNom",               limit: 1
    t.integer "Control_DiasNoLabSal",           limit: 1
    t.integer "Control_DiasExcPrest",           limit: 1
    t.integer "Control_DiasLic",                limit: 1
    t.integer "DiasNoLabSal_PolHor",            limit: 1
    t.integer "Provisiones_Calc",               limit: 1
    t.integer "Provisiones_Vac",                limit: 1
    t.integer "Provisiones_Preav",              limit: 1
    t.integer "Provisiones_Ces",                limit: 1
    t.integer "Provisiones_Bon",                limit: 1
    t.integer "Provisiones_Reg",                limit: 1
    t.varchar "Prov_CuentaGastoVac",            limit: 20
    t.varchar "Prov_CuentaGastoBon",            limit: 20
    t.varchar "Prov_CuentaGastoReg",            limit: 20
    t.char    "Vac_FormaCalcPrest",             limit: 1
    t.char    "Vac_FormaCalcVac",               limit: 1
    t.char    "BVac_FormaCalcPrest",            limit: 1
    t.char    "BVac_FormaCalcVac",              limit: 1
    t.varchar "NoDocDespNomina",                limit: 30
    t.varchar "Cliente",                        limit: 100
    t.varchar "FormaConsDiasLab",               limit: 50
    t.integer "TransferirCont",                 limit: 1
    t.integer "Bonif_FormaCalcEmpAno",          limit: 1
    t.integer "GenerarComprobDisco",            limit: 1
    t.varchar "RutaGenerarComprobPago",         limit: 200
    t.varchar "Banco_NoCuenta",                 limit: 20
    t.varchar "Banco_Sucursal",                 limit: 20
    t.varchar "Orden_Nomina",                   limit: 100
    t.integer "Nomina_IncEmpCero",              limit: 1
    t.float   "Infotep_PorcComp"
    t.float   "Infotep_PorcEmp"
    t.money   "Infotep_SalTope",                            precision: 19, scale: 4
    t.integer "Nomina_Transferencia",           limit: 4
    t.integer "DesconISRCompUnic",              limit: 4
    t.integer "CodCompaniaISR",                 limit: 4
    t.integer "FormatoCompPago",                limit: 1
    t.float   "Provisiones_Porc"
    t.integer "Provisiones_Nomina",             limit: 4
    t.integer "Provisiones_CalcOtras",          limit: 1
    t.integer "Vacaciones_PagoMesVac",          limit: 1
    t.integer "Vacaciones_PeriodoPago",         limit: 1
    t.integer "IniciarNomEmpApe",               limit: 1
    t.integer "PermitirNomEmpMay",              limit: 1
    t.integer "Nom_ISR_IngAcumulados",          limit: 1
    t.varchar "Ruta_ArcUsuarios",               limit: 255
    t.money   "SalarioMinCotizTSS",                         precision: 19, scale: 4
    t.varchar "Observac_DGT2",                  limit: 500
    t.decimal "CantHorasSem",                               precision: 18, scale: 0
    t.decimal "DiasLaborMes",                               precision: 18, scale: 2
    t.integer "Vacaciones_Avance_AutomSinRRHH", limit: 1
    t.integer "Liq_Ces_SalHoraActual",          limit: 1
    t.integer "Liq_Prea_SalHoraActual",         limit: 1
    t.integer "Regalia_Salario_BaseAno",        limit: 1
    t.integer "SubAgruparEmpNomina",            limit: 1
  end

  create_table "Configuracion_ArchAsist", primary_key: "CodCompania", force: :cascade do |t|
    t.varchar "NombreArchivo",       limit: 100, null: false
    t.varchar "RutaArchivo",         limit: 200, null: false
    t.integer "PosicionCodEmp",      limit: 2,   null: false
    t.integer "LongCodEmp",          limit: 2,   null: false
    t.integer "PosicionFecha",       limit: 2,   null: false
    t.integer "LongFecha",           limit: 2,   null: false
    t.integer "PosicionHoraEnt",     limit: 2,   null: false
    t.integer "LongHoraEnt",         limit: 2,   null: false
    t.integer "PosicionHoraSal",     limit: 2,   null: false
    t.integer "LongHoraSal",         limit: 2,   null: false
    t.varchar "FormatoFec",          limit: 50
    t.varchar "ExtensionArchivo",    limit: 5
    t.varchar "TipoDB",              limit: 20
    t.integer "GenerarHorasEmpLic",  limit: 1
    t.integer "GenerarAsisSinReloj", limit: 1
  end

  create_table "Configuracion_Eval", id: false, force: :cascade do |t|
    t.integer "Cod_Compania",      limit: 4,   null: false
    t.varchar "URL_PagFormEval",   limit: 255, null: false
    t.integer "CodUsu_Evaluador",  limit: 4
    t.char    "AsignarPuntuacion", limit: 1
  end

  create_table "Configuracion_Grid", id: false, force: :cascade do |t|
    t.varchar "Pantalla",         limit: 100, null: false
    t.varchar "Nombre_Grid",      limit: 100, null: false
    t.float   "Margen_Izquierdo"
    t.float   "Margen_Derecho"
    t.float   "Margen_Superior"
    t.float   "Margen_Inferior"
    t.integer "Orientacion",      limit: 1
    t.varchar "Tipo_Hoja",        limit: 50
  end

  create_table "Configuracion_Lc", id: false, force: :cascade do |t|
    t.varchar "CantLic", limit: 30, null: false
    t.char    "Modulo",  limit: 3
  end

  create_table "Configuracion_MLn", id: false, force: :cascade do |t|
    t.varchar  "UserId",      limit: 50, null: false
    t.varchar  "Nom_Maquina", limit: 50, null: false
    t.datetime "Fecha_LogOn",            null: false
    t.char     "Modulo",      limit: 3
  end

  create_table "Configuracion_PersRecl", id: false, force: :cascade do |t|
    t.integer "CodCompania", limit: 4, null: false
    t.integer "CodEmpleado", limit: 4, null: false
  end

  create_table "Configuracion_Personal", primary_key: "Codigo_Compania", force: :cascade do |t|
    t.integer    "Forma_Codigo_Empleado",   limit: 1,                      null: false
    t.integer    "Eliminar_Solicitud",      limit: 1
    t.varchar    "Ruta_DB",                 limit: 100
    t.varchar    "Servidor",                limit: 100
    t.varchar    "Nombre_DB",               limit: 100
    t.varchar    "Ruta_Fotos",              limit: 100
    t.integer    "Email_Accion",            limit: 1
    t.integer    "Cod_CargoAutAcc",         limit: 4,          default: 0
    t.integer    "Cod_EncNom",              limit: 4,          default: 0
    t.integer    "Email_SolAccion",         limit: 1
    t.integer    "Alerta_EmpPrueba",        limit: 1
    t.integer    "DiasEmpPrueba",           limit: 2
    t.integer    "Alerta_EmpTemCont",       limit: 1
    t.integer    "DiasEmpTemCont",          limit: 2
    t.integer    "EmailTemCont",            limit: 1
    t.integer    "PersonaEmailTemCont",     limit: 4
    t.text_basic "MensTermCont",            limit: 2147483647
    t.text_basic "MensEmpCump",             limit: 2147483647
    t.text_basic "MensCumpDia",             limit: 2147483647
    t.integer    "Desestimar_SolEmpVenc",   limit: 1
    t.integer    "Desestimar_MesesDesp",    limit: 2
    t.integer    "Cod_ClasifRRHH",          limit: 4
    t.integer    "Cod_CompaniaReclut",      limit: 4
    t.varchar    "URL_PagSolicEmp",         limit: 255
    t.varchar    "URL_Autoservicio",        limit: 255
    t.varchar    "URL_Reclutamiento",       limit: 255
    t.integer    "PermitirNomEmpMay",       limit: 1
    t.integer    "IniciarNomEmpApe",        limit: 1
    t.integer    "NotificarSalidaEmp",      limit: 1
    t.integer    "NotificarEntradaEmp",     limit: 1
    t.integer    "NotificarEntSalEmpRedes", limit: 1
    t.varchar    "NotificarMensajeSalida",  limit: 255
    t.varchar    "NotificarMensajeEntrada", limit: 255
    t.integer    "PermitirModDatosEmp",     limit: 1
    t.integer    "CodCargo_EncRRHH",        limit: 4
    t.integer    "CodCargo_AsisRRHH",       limit: 1
    t.integer    "CodCargo_SecRRHH",        limit: 1
    t.varchar    "URL_Evaluaciones",        limit: 255
    t.string     "ImagenLogoAccion",        limit: 4000
    t.string     "Logo",                    limit: 4000
  end

  create_table "Configuracion_RutasArchivos", id: false, force: :cascade do |t|
    t.integer "CodCompania",       limit: 4,   null: false
    t.varchar "RutaAplicacion",    limit: 200, null: false
    t.varchar "NombreArchivoLogo", limit: 100, null: false
  end

  create_table "Constraint_EstCiv", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Desc_EstCiv", limit: 50, null: false
  end

  create_table "Constraint_Estatus", id: false, force: :cascade do |t|
    t.char    "Codigo",       limit: 1,  null: false
    t.varchar "Desc_Estatus", limit: 50, null: false
  end

  create_table "Constraint_Sexo", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Desc_Sexo", limit: 50, null: false
  end

  create_table "Constraint_TipoEmp", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Desc_TipoEmp", limit: 50, null: false
  end

  create_table "Control_InasistAutorizar", primary_key: "Codigo", force: :cascade do |t|
    t.varchar  "Concepto",        limit: 1,   null: false
    t.integer  "ci_CodCompania",  limit: 4
    t.integer  "Codigo_Empleado", limit: 4,   null: false
    t.integer  "Codigo_Accion",   limit: 4
    t.integer  "Codigo_Motivo",   limit: 4,   null: false
    t.datetime "Fecha_Desde"
    t.varchar  "Hora_Desde",      limit: 12
    t.datetime "Fecha_Hasta"
    t.varchar  "Hora_Hasta",      limit: 12
    t.integer  "Dias",            limit: 4
    t.integer  "Horas",           limit: 4
    t.integer  "Minutos",         limit: 1
    t.varchar  "Observacion",     limit: 255
    t.integer  "Disfrute_Sueldo", limit: 1
    t.varchar  "Usuario",         limit: 30,  null: false
    t.integer  "Autorizada",      limit: 1
    t.integer  "Procesada",       limit: 1
  end

  create_table "Control_Inasistencias", primary_key: "Codigo", force: :cascade do |t|
    t.varchar  "Concepto",              limit: 1,                           null: false
    t.integer  "ci_CodCompania",        limit: 4
    t.integer  "Codigo_Empleado",       limit: 4,                           null: false
    t.integer  "Codigo_Accion",         limit: 4
    t.integer  "Codigo_Motivo",         limit: 4,                           null: false
    t.datetime "Fecha_Desde"
    t.varchar  "Hora_Desde",            limit: 12
    t.datetime "Fecha_Hasta"
    t.varchar  "Hora_Hasta",            limit: 12
    t.integer  "Dias",                  limit: 4
    t.integer  "Horas",                 limit: 4
    t.integer  "Minutos",               limit: 1
    t.varchar  "Observacion",           limit: 255
    t.integer  "Disfrute_Sueldo",       limit: 1
    t.varchar  "Usuario",               limit: 30,                          null: false
    t.float    "DiasInasis"
    t.float    "HorasInasis"
    t.float    "MinutosInasis"
    t.datetime "Fecha_DesdeCal"
    t.varchar  "Hora_DesdeCal",         limit: 12
    t.datetime "Fecha_HastaCal"
    t.varchar  "Hora_HastaCal",         limit: 12
    t.integer  "CausaJustificada",      limit: 1
    t.integer  "ReduceDiasDisf",        limit: 1
    t.char     "FormaPagoDiasLic",      limit: 1
    t.decimal  "PorcDiasPagoLic",                   precision: 6, scale: 2
    t.integer  "GeneralIngresoPago",    limit: 4
    t.integer  "CodIngresoPagoLic",     limit: 4
    t.integer  "GeneralIngNegLinSDisf", limit: 1
  end

  create_table "Cualidades_Posiciones_Clasificacion", primary_key: "Codigo_Cargo", force: :cascade do |t|
    t.integer "Numero_Compania",      limit: 4, null: false
    t.integer "Codigo_Cualidad",      limit: 4, null: false
    t.integer "Codigo_Nivel",         limit: 4, null: false
    t.integer "Codigo_Clasificacion", limit: 4, null: false
    t.integer "Codigo_Posicion",      limit: 4, null: false
  end

  add_index "Cualidades_Posiciones_Clasificacion", ["Numero_Compania", "Codigo_Cargo", "Codigo_Cualidad"], name: "Personal_Nomina_AltCumb_dbo_Cualidades_Posiciones_Clasificacion idx_Cualidades_Posicion", unique: true

  create_table "Cualidades_Tecnicas_Intelectuales", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",           limit: 50,  null: false
    t.varchar "Descripcion_Detallada", limit: 500
    t.integer "Cod_ClasifComp",        limit: 4
    t.integer "ctCodCompania",         limit: 4
  end

  create_table "Cuentas", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",       limit: 100
    t.varchar "Numero_Cuenta",     limit: 30
    t.varchar "Origen",            limit: 1,   null: false
    t.integer "Centro_Costo",      limit: 4
    t.integer "Cod_Empleado",      limit: 4
    t.integer "Cod_Compania",      limit: 4
    t.varchar "Tipo_Movimiento",   limit: 1
    t.integer "Codigo_Movimiento", limit: 4
  end

  add_index "Cuentas", ["Numero_Cuenta"], name: "Personal_Nomina_AltCumb_dbo_Cuentas Numero_Cuenta"

  create_table "CuentasImportarMercurySolaya", id: false, force: :cascade do |t|
    t.float  "grupo"
    t.float  "cuenta"
    t.string "novedad",        limit: 255
    t.float  "ingreso"
    t.string "hora",           limit: 255
    t.string "descuentos",     limit: 255
    t.float  "Codigo novedad"
    t.string "F8",             limit: 255
  end

  create_table "CuentasMovimientosPeriodos", id: false, force: :cascade do |t|
    t.integer  "AnoNomina",   limit: 4,                           null: false
    t.integer  "MesNomina",   limit: 1,                           null: false
    t.integer  "CodSubGrupo", limit: 4,                           null: false
    t.varchar  "Num_Cuenta",  limit: 20,                          null: false
    t.char     "Tipo_Mov",    limit: 1
    t.money    "ValPeriodo1",            precision: 19, scale: 4
    t.money    "ValPeriodo2",            precision: 19, scale: 4
    t.money    "ValPeriodo3",            precision: 19, scale: 4
    t.money    "ValPeriodo4",            precision: 19, scale: 4
    t.money    "ValPeriodo5",            precision: 19, scale: 4
    t.datetime "FecPeriodo1"
    t.datetime "FecPeriodo2"
    t.datetime "FecPeriodo3"
    t.datetime "FecPeriodo4"
    t.datetime "FecPeriodo5"
  end

  create_table "CuentasSAP", id: false, force: :cascade do |t|
    t.string  "CuentaSYS",        limit: 255
    t.string  "NombreCuenta",     limit: 255
    t.varchar "CuentaFormateada", limit: 20
  end

  create_table "CuentasTipoTrans", id: false, force: :cascade do |t|
    t.integer "Codigo",      limit: 4
    t.varchar "Descripcion", limit: 100
    t.varchar "Origen",      limit: 1
  end

  create_table "Cuentas_Patrono", primary_key: "CodCompania", force: :cascade do |t|
    t.varchar "CuentaAFP",     limit: 18, null: false
    t.varchar "CuentaSFS",     limit: 18, null: false
    t.varchar "CuentaRiesgo",  limit: 18, null: false
    t.varchar "CuentaISR",     limit: 18, null: false
    t.varchar "CuentaInfotep", limit: 18, null: false
  end

  create_table "Cuentas_SubGrupos", primary_key: "Cod_Cuenta", force: :cascade do |t|
    t.integer "Orden",             limit: 4, null: false
    t.varchar "Tipo_Movimiento",   limit: 1
    t.integer "Codigo_Movimiento", limit: 4
  end

  create_table "Cuotas_Descuentos", id: false, force: :cascade do |t|
    t.integer "Codigo_Descuento",  limit: 4,                          null: false
    t.integer "Codigo_Empleado",   limit: 4,                          null: false
    t.varchar "Descontar_Por",     limit: 1,                          null: false
    t.integer "Codigo_Nomina",     limit: 4,                          null: false
    t.integer "Ano_Nomina",        limit: 4
    t.integer "Mes_Nomina",        limit: 1
    t.integer "Periodo_Nomina",    limit: 1
    t.money   "Valor_Cuota",                 precision: 19, scale: 4, null: false
    t.integer "Descontado",        limit: 1
    t.money   "Capital",                     precision: 19, scale: 4
    t.money   "Interes",                     precision: 19, scale: 4
    t.money   "Balance_Interes",             precision: 19, scale: 4
    t.money   "Balance_Capital",             precision: 19, scale: 4
    t.money   "Capital_Acumulado",           precision: 19, scale: 4
    t.money   "Interes_Acumulado",           precision: 19, scale: 4
  end

  add_index "Cuotas_Descuentos", ["Codigo_Descuento", "Codigo_Empleado"], name: "Personal_Nomina_AltCumb_dbo_Cuotas_Descuentos idx_Cuota_Desc_Emp"

  create_table "Cursos_Carreras", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",        limit: 100,                          null: false
    t.integer "Codigo_Institucion", limit: 4,                            null: false
    t.integer "Horas",              limit: 4
    t.money   "Costo_Curso",                    precision: 19, scale: 4
    t.integer "Cod_Grado",          limit: 4
  end

  create_table "Dependientes_Seguros_Inclucion_Exclucion", id: false, force: :cascade do |t|
    t.integer  "Codigo_Seguro",      limit: 4,                                        null: false
    t.integer  "Codigo_Dependiente", limit: 4,                                        null: false
    t.datetime "Fecha_Inclucion"
    t.datetime "Fecha_Exclucion"
    t.varchar  "Tarifa",             limit: 1,                                        null: false
    t.varchar  "Estatus",            limit: 1,                                        null: false
    t.money    "Deduccion",                    precision: 19, scale: 4
    t.money    "Deduccion_Comp",               precision: 19, scale: 4, default: 0.0
    t.integer  "Orden",              limit: 1
  end

  add_index "Dependientes_Seguros_Inclucion_Exclucion", ["Codigo_Dependiente"], name: "Personal_Nomina_AltCumb_dbo_Dependientes_Seguros_Inclucion_Exclucion Codigo_Dependiente"
  add_index "Dependientes_Seguros_Inclucion_Exclucion", ["Codigo_Seguro"], name: "Personal_Nomina_AltCumb_dbo_Dependientes_Seguros_Inclucion_Exclucion Codigo_Seguro"

  create_table "Descuentos", primary_key: "Codigo_Descuento", force: :cascade do |t|
    t.integer  "Codigo_Tipo_Descuento", limit: 4,                           null: false
    t.integer  "Codigo_Empleado",       limit: 4,                           null: false
    t.integer  "Compania",              limit: 4,                           null: false
    t.varchar  "Descontar_Por",         limit: 1,                           null: false
    t.integer  "Cuotas_Fijas",          limit: 1
    t.datetime "Fecha"
    t.money    "Valor",                            precision: 19, scale: 4, null: false
    t.money    "Deduccion",                        precision: 19, scale: 4, null: false
    t.money    "Valor_Cuota",                      precision: 19, scale: 4, null: false
    t.real     "Tasa_interes"
    t.integer  "Numero_Cuotas",         limit: 2
    t.integer  "Cuotas_Pagadas",        limit: 2
    t.money    "Monto_Adeudado",                   precision: 19, scale: 4
    t.money    "Monto_Ahorrado",                   precision: 19, scale: 4
    t.integer  "Periodo_descuento",     limit: 1
    t.integer  "Descuento_fijo",        limit: 1,                           null: false
    t.varchar  "Concepto",              limit: 1,                           null: false
    t.integer  "Nomina_Descontar",      limit: 4,                           null: false
    t.varchar  "Usuario",               limit: 30,                          null: false
    t.char     "ModOrigen",             limit: 3
    t.varchar  "Referencia",            limit: 30
    t.varchar  "deMoneda",              limit: 5
  end

  add_index "Descuentos", ["Codigo_Descuento", "Compania"], name: "IX_Descuentos"

  create_table "Descuentos_Abonos", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "CodDescuento", limit: 4,                            null: false
    t.datetime "Fecha",                                             null: false
    t.varchar  "Comentarios",  limit: 255,                          null: false
    t.money    "Valor",                    precision: 19, scale: 4, null: false
  end

  create_table "Descuentos_Importar", id: false, force: :cascade do |t|
    t.datetime "fec_desc"
    t.integer  "di_CodCompania", limit: 4
    t.varchar  "cod_empleado",   limit: 255
    t.float    "val_desc"
    t.integer  "Tipo_Desc",      limit: 4
    t.varchar  "CedulaEmp",      limit: 15
    t.decimal  "TotalDescuento",             precision: 18, scale: 2
    t.decimal  "BalanceDesc",                precision: 18, scale: 2
    t.integer  "PeriodoDesc",    limit: 1
  end

  create_table "Descuentos_Nomina_Empleados", primary_key: "Codigo_nomina", force: :cascade do |t|
    t.integer "id",               limit: 4,                          null: false
    t.integer "Codigo_Descuento", limit: 4
    t.integer "dne_CodCompania",  limit: 4,                          null: false
    t.integer "Codigo_empleado",  limit: 4,                          null: false
    t.integer "Tipo_Descuento",   limit: 4,                          null: false
    t.money   "Valor",                      precision: 19, scale: 4
    t.integer "Descontado",       limit: 1,                          null: false
    t.money   "Balance",                    precision: 19, scale: 4
    t.varchar "deMoneda",         limit: 5
  end

  add_index "Descuentos_Nomina_Empleados", ["dne_CodCompania", "Codigo_nomina", "Codigo_empleado"], name: "IX_Descuentos_Nomina_Empleados"

  create_table "Descuentos_Nomina_Empleados_Temp", primary_key: "Codigo_nomina", force: :cascade do |t|
    t.integer "id",               limit: 4,                          null: false
    t.integer "dne_CodCompania",  limit: 4,                          null: false
    t.integer "Codigo_empleado",  limit: 4,                          null: false
    t.integer "Tipo_Descuento",   limit: 4
    t.money   "Valor",                      precision: 19, scale: 4
    t.integer "Descontado",       limit: 1,                          null: false
    t.integer "Codigo_Descuento", limit: 4
    t.money   "Balance",                    precision: 19, scale: 4
    t.varchar "deMoneda",         limit: 5
  end

  add_index "Descuentos_Nomina_Empleados_Temp", ["dne_CodCompania", "Codigo_nomina", "Codigo_empleado"], name: "IX_Descuentos_Nomina_Empleados_Temp"

  create_table "Detalles_Avance_Sueldo", id: false, force: :cascade do |t|
    t.integer "Codigo_Avance",   limit: 4
    t.integer "Codigo_Empleado", limit: 4
    t.money   "Valor_Avance",              precision: 19, scale: 4
  end

  create_table "Detalles_Bonificacion", id: false, force: :cascade do |t|
    t.integer "Codigo_Bonificacion", limit: 4,                          null: false
    t.integer "dbe_CodCompania",     limit: 4
    t.integer "Codigo_Empleado",     limit: 4,                          null: false
    t.varchar "Tipo_Novedad",        limit: 1,                          null: false
    t.integer "Codigo_Tipo_Novedad", limit: 4,                          null: false
    t.money   "Valor",                         precision: 19, scale: 4, null: false
  end

  add_index "Detalles_Bonificacion", ["Codigo_Bonificacion", "Codigo_Empleado"], name: "Personal_Nomina_AltCumb_dbo_Detalles_Bonificacion idx_Bonificacion_Empleados"

  create_table "Detalles_Planes_Seguro", id: false, force: :cascade do |t|
    t.integer "Codigo_Plan",              limit: 4,                           null: false
    t.varchar "Parentesco",               limit: 20,                          null: false
    t.money   "Costo_Tarifa_Dependiente",            precision: 19, scale: 4
    t.real    "Porciento_Compania"
  end

  create_table "Dias_Feriados", primary_key: "Fecha", force: :cascade do |t|
    t.varchar "Descripcion", limit: 100, null: false
  end

  create_table "Dias_Politicas_Horarios", id: false, force: :cascade do |t|
    t.integer "Codigo_Politica",   limit: 4,  null: false
    t.integer "Dia_Semana",        limit: 1,  null: false
    t.varchar "Hora_Desde",        limit: 15, null: false
    t.varchar "Descanso_Desde",    limit: 15
    t.varchar "Descanso_Hasta",    limit: 15
    t.varchar "Hora_Hasta",        limit: 15, null: false
    t.float   "Horas_Productivas",            null: false
    t.float   "Horas_Descanso"
    t.integer "Dia_Descanso",      limit: 1
  end

  create_table "Diferencia_RetenEmp_IngExternos", primary_key: "Secuencia", force: :cascade do |t|
    t.integer "CodEmpleado",  limit: 4,                           null: false
    t.integer "CodCompania",  limit: 4,                           null: false
    t.varchar "RNCEmpleador", limit: 20,                          null: false
    t.integer "MesNomina",    limit: 2,                           null: false
    t.integer "AnoNomina",    limit: 2,                           null: false
    t.money   "ValorIngreso",            precision: 19, scale: 4, null: false
  end

  add_index "Diferencia_RetenEmp_IngExternos", ["CodEmpleado", "CodCompania", "AnoNomina", "MesNomina"], name: "IX_Diferencia_RetenEmp_IngExternos"

  create_table "Diferencia_Retencion_Empleados", primary_key: "drt_CodCompania", force: :cascade do |t|
    t.integer "Codigo_Empleado",     limit: 4,                          null: false
    t.integer "Ano",                 limit: 4,                          null: false
    t.money   "ISR_Acumulado",                 precision: 19, scale: 4
    t.money   "ISR_Pendiente",                 precision: 19, scale: 4
    t.money   "Ingresos_Acumulados",           precision: 19, scale: 4
  end

  create_table "Distribucion_Personal", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Cod_Compania",          limit: 4,                          null: false
    t.float   "propor_dominicano"
    t.float   "propor_extranjero"
    t.float   "pro_sala_dominicano"
    t.float   "pro_sala_extranjero"
    t.integer "cant_trab_mujeres",     limit: 4
    t.integer "cant_trab_hombres",     limit: 4
    t.integer "cant_trab_moviles",     limit: 4
    t.money   "suma_mens_pagada",                precision: 19, scale: 4
    t.integer "cant_trab_extranjeros", limit: 4
    t.integer "cant_trab_menores",     limit: 4
  end

  create_table "Documentos_Requisitos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 100, null: false
  end

  create_table "Empleado_Dependientes", primary_key: "ID", force: :cascade do |t|
    t.integer  "edp_CodCompania",  limit: 4
    t.integer  "Codigo_Empleado",  limit: 4,  null: false
    t.varchar  "Nombre",           limit: 60, null: false
    t.datetime "Fecha_Nacimiento",            null: false
    t.varchar  "Parentesco",       limit: 20, null: false
  end

  create_table "Empleados", primary_key: "Numero_Compania", force: :cascade do |t|
    t.integer  "Numero",                   limit: 4,                            null: false
    t.varchar  "Codigo",                   limit: 10
    t.varchar  "Nombre",                   limit: 30,                           null: false
    t.varchar  "Apellido1",                limit: 30,                           null: false
    t.varchar  "Apellido2",                limit: 30
    t.varchar  "Genero",                   limit: 1,                            null: false
    t.datetime "Fecha_Nacimiento",                                              null: false
    t.varchar  "Lugar_Nacimiento",         limit: 30
    t.integer  "Nacionalidad",             limit: 4,                            null: false
    t.integer  "Lengua_Materna",           limit: 4,                            null: false
    t.varchar  "Cedula",                   limit: 13
    t.varchar  "Estado_Civil",             limit: 1,                            null: false
    t.varchar  "pasaporte",                limit: 25
    t.varchar  "Telefono1",                limit: 13
    t.varchar  "Telefono2",                limit: 13
    t.varchar  "Direccion",                limit: 100,                          null: false
    t.datetime "Fecha_Ingreso",                                                 null: false
    t.integer  "Nivel",                    limit: 4,                            null: false
    t.integer  "Clasificacion",            limit: 4,                            null: false
    t.integer  "Posicion",                 limit: 4,                            null: false
    t.money    "Salario_Base",                         precision: 19, scale: 4, null: false
    t.money    "Salario_Hora",                         precision: 19, scale: 4, null: false
    t.varchar  "Cuenta_Bancaria",          limit: 20
    t.varchar  "Cuenta_Contable",          limit: 15
    t.varchar  "Estatus",                  limit: 1,                            null: false
    t.datetime "Fecha_Estatus",                                                 null: false
    t.varchar  "Poncha",                   limit: 1,                            null: false
    t.integer  "Tipo_Empleado",            limit: 4,                            null: false
    t.varchar  "E_Mail",                   limit: 50
    t.varchar  "Nombre_emergencia",        limit: 40
    t.varchar  "Telefono_Emergencia",      limit: 13
    t.varchar  "Nombre_Doctor",            limit: 40
    t.varchar  "Telefono_Doctor",          limit: 13
    t.varchar  "Direccion_Emergencia",     limit: 60
    t.varchar  "Ciudad",                   limit: 30
    t.integer  "Numero_Solicitud",         limit: 4
    t.integer  "Nomina_Salario",           limit: 4,                            null: false
    t.integer  "Nomina_ISR_SS",            limit: 4,                            null: false
    t.char     "Descontar_SS",             limit: 1,                            null: false
    t.integer  "Grupo_Trabajo",            limit: 4,                            null: false
    t.integer  "SubGrupo_Trabajo",         limit: 4,                            null: false
    t.varchar  "Numero_Tarjeta",           limit: 15
    t.varchar  "Tipo_asalariado",          limit: 1,                            null: false
    t.varchar  "Numero_Afiliado",          limit: 15
    t.varchar  "Periodo_Pago",             limit: 1,                            null: false
    t.integer  "Titular",                  limit: 1
    t.float    "Horas_Acumuladas"
    t.money    "Valor_Horas_Acumuladas",               precision: 19, scale: 4
    t.money    "Salario_Normal_Acumulado",             precision: 19, scale: 4
    t.integer  "Horas_Semanales",          limit: 1
    t.varchar  "Tipo_Sangre",              limit: 20,                           null: false
    t.integer  "Codigo_Grado_Academico",   limit: 4,                            null: false
    t.integer  "Codigo_Politica_Horario",  limit: 4
    t.integer  "Codigo_Titular",           limit: 4
    t.integer  "Forma_Imp_Comprob",        limit: 1
    t.integer  "Secuencia_Ano",            limit: 4
    t.varchar  "Tipo_Labor",               limit: 1
    t.varchar  "Nombre_Usuario",           limit: 30,                           null: false
    t.integer  "AplicLeySeg",              limit: 1
    t.float    "Deduc_Pension"
    t.float    "Deduc_Salud"
    t.float    "Deduc_Riesgo"
    t.varchar  "NumAfi_LeySeg",            limit: 15
    t.datetime "Fecha_Reg"
    t.varchar  "Hora_Reg",                 limit: 12
    t.integer  "Cod_Cargo",                limit: 4
    t.varchar  "Email_Interno",            limit: 100
    t.datetime "Fecha_UltEval"
    t.datetime "Fecha_ProxEval"
    t.varchar  "SucursalBanco",            limit: 10
    t.integer  "Cod_Sucursal",             limit: 4
    t.datetime "Fec_FinContrato"
    t.integer  "Cod_Supervisor",           limit: 4
    t.float    "ValorUltEval"
    t.integer  "SecuenciaEmp",             limit: 4
    t.integer  "Cod_Banco",                limit: 4
    t.varchar  "emp_MonedaSalario",        limit: 5
    t.integer  "CodCompaniaTransf",        limit: 4
    t.integer  "Numero_CompaniaISR",       limit: 4
    t.integer  "Cod_Sector",               limit: 4
    t.integer  "Cod_Pais",                 limit: 4
    t.integer  "RutaFoto",                 limit: 4
    t.integer  "AplicaBonoVac",            limit: 1
    t.varchar  "TelefFlota",               limit: 15
    t.varchar  "TelefOficina",             limit: 15
    t.varchar  "ExtOficina",               limit: 6
  end

  add_index "Empleados", ["Cedula"], name: "Personal_Nomina_AltCumb_dbo_Empleados Cedula"
  add_index "Empleados", ["Codigo"], name: "Personal_Nomina_AltCumb_dbo_Empleados EmpleadosCodigo"
  add_index "Empleados", ["Nombre", "Apellido1", "Apellido2"], name: "Personal_Nomina_AltCumb_dbo_Empleados idx_Nombre_Ape"
  add_index "Empleados", ["Numero_Compania", "Nivel", "Clasificacion", "Posicion"], name: "Personal_Nomina_AltCumb_dbo_Empleados idx_Posicion_ClasiPos"
  add_index "Empleados", ["SubGrupo_Trabajo", "Grupo_Trabajo"], name: "Personal_Nomina_AltCumb_dbo_Empleados idx_SubGrupoGrupo"

  create_table "EmpleadosCargos_Borrar", id: false, force: :cascade do |t|
    t.integer "Numero",                 limit: 4
    t.string  "NombreEmpleado",         limit: 255
    t.string  "GrupoNomina",            limit: 255
    t.string  "Sub-GrupoNomina",        limit: 255
    t.string  "DepartamentoActual",     limit: 255
    t.string  "CargoActual",            limit: 255
    t.string  "DepartamentoCargoNuevo", limit: 255
    t.float   "SalarioBase"
    t.float   "SalarioHora"
    t.float   "CuentaBancaria"
    t.string  "BancoPago",              limit: 255
    t.string  "FormaPago",              limit: 255
    t.string  "NumeroLeySeguridad",     limit: 255
    t.varchar "CuentaBancaria2",        limit: 20
  end

  create_table "EmpleadosTemp", primary_key: "Numero_Compania", force: :cascade do |t|
    t.integer  "Numero",                   limit: 4,                            null: false
    t.varchar  "Codigo",                   limit: 10
    t.varchar  "Nombre",                   limit: 30,                           null: false
    t.varchar  "Apellido1",                limit: 30,                           null: false
    t.varchar  "Apellido2",                limit: 30
    t.varchar  "Genero",                   limit: 1,                            null: false
    t.datetime "Fecha_Nacimiento",                                              null: false
    t.varchar  "Lugar_Nacimiento",         limit: 30
    t.integer  "Nacionalidad",             limit: 4,                            null: false
    t.integer  "Lengua_Materna",           limit: 4,                            null: false
    t.varchar  "Cedula",                   limit: 13
    t.varchar  "Estado_Civil",             limit: 1,                            null: false
    t.varchar  "pasaporte",                limit: 25
    t.varchar  "Telefono1",                limit: 13
    t.varchar  "Telefono2",                limit: 13
    t.varchar  "Direccion",                limit: 100,                          null: false
    t.datetime "Fecha_Ingreso",                                                 null: false
    t.integer  "Nivel",                    limit: 4,                            null: false
    t.integer  "Clasificacion",            limit: 4,                            null: false
    t.integer  "Posicion",                 limit: 4,                            null: false
    t.money    "Salario_Base",                         precision: 19, scale: 4, null: false
    t.money    "Salario_Hora",                         precision: 19, scale: 4, null: false
    t.varchar  "Cuenta_Bancaria",          limit: 20
    t.varchar  "Cuenta_Contable",          limit: 15
    t.varchar  "Estatus",                  limit: 1,                            null: false
    t.datetime "Fecha_Estatus",                                                 null: false
    t.varchar  "Poncha",                   limit: 1,                            null: false
    t.integer  "Tipo_Empleado",            limit: 4,                            null: false
    t.varchar  "E_Mail",                   limit: 50
    t.varchar  "Nombre_emergencia",        limit: 40
    t.varchar  "Telefono_Emergencia",      limit: 13
    t.varchar  "Nombre_Doctor",            limit: 40
    t.varchar  "Telefono_Doctor",          limit: 13
    t.varchar  "Direccion_Emergencia",     limit: 60
    t.varchar  "Ciudad",                   limit: 30
    t.integer  "Numero_Solicitud",         limit: 4
    t.integer  "Nomina_Salario",           limit: 4,                            null: false
    t.integer  "Nomina_ISR_SS",            limit: 4,                            null: false
    t.char     "Descontar_SS",             limit: 1,                            null: false
    t.integer  "Grupo_Trabajo",            limit: 4,                            null: false
    t.integer  "SubGrupo_Trabajo",         limit: 4,                            null: false
    t.varchar  "Numero_Tarjeta",           limit: 15
    t.varchar  "Tipo_asalariado",          limit: 1,                            null: false
    t.varchar  "Numero_Afiliado",          limit: 15
    t.varchar  "Periodo_Pago",             limit: 1,                            null: false
    t.integer  "Titular",                  limit: 1
    t.float    "Horas_Acumuladas"
    t.money    "Valor_Horas_Acumuladas",               precision: 19, scale: 4
    t.money    "Salario_Normal_Acumulado",             precision: 19, scale: 4
    t.integer  "Horas_Semanales",          limit: 1
    t.varchar  "Tipo_Sangre",              limit: 20,                           null: false
    t.integer  "Codigo_Grado_Academico",   limit: 4,                            null: false
    t.integer  "Codigo_Politica_Horario",  limit: 4
    t.integer  "Codigo_Titular",           limit: 4
    t.integer  "Forma_Imp_Comprob",        limit: 1
    t.integer  "Secuencia_Ano",            limit: 4
    t.varchar  "Tipo_Labor",               limit: 1
    t.varchar  "Nombre_Usuario",           limit: 30,                           null: false
    t.integer  "AplicLeySeg",              limit: 1
    t.float    "Deduc_Pension"
    t.float    "Deduc_Salud"
    t.float    "Deduc_Riesgo"
    t.varchar  "NumAfi_LeySeg",            limit: 15
    t.datetime "Fecha_Reg"
    t.varchar  "Hora_Reg",                 limit: 12
    t.integer  "Cod_Cargo",                limit: 4
    t.varchar  "Email_Interno",            limit: 100
    t.datetime "Fecha_UltEval"
    t.datetime "Fecha_ProxEval"
    t.varchar  "SucursalBanco",            limit: 10
    t.integer  "Cod_Sucursal",             limit: 4
    t.datetime "Fec_FinContrato"
    t.integer  "Cod_Supervisor",           limit: 4
    t.float    "ValorUltEval"
    t.integer  "SecuenciaEmp",             limit: 4
    t.integer  "Cod_Banco",                limit: 4
    t.varchar  "emp_MonedaSalario",        limit: 5
    t.integer  "CodCompaniaTransf",        limit: 4
    t.integer  "Numero_CompaniaISR",       limit: 4
    t.integer  "Cod_Sector",               limit: 4
    t.integer  "Cod_Pais",                 limit: 4
    t.integer  "RutaFoto",                 limit: 4
    t.integer  "AplicaBonoVac",            limit: 1
  end

  create_table "Empleados_AccesoAutoServ", primary_key: "Secuencia", force: :cascade do |t|
    t.integer "Cod_Empleado",    limit: 4,              null: false
    t.integer "Numero_Compania", limit: 4,              null: false
    t.varchar "Usuario",         limit: 30,             null: false
    t.varchar "Clave",           limit: 30,             null: false
    t.integer "CambiarClave",    limit: 1,  default: 1, null: false
    t.varchar "ClaveDesencryp",  limit: 30
  end

  create_table "Empleados_ActivosPeriodo_Temp", id: false, force: :cascade do |t|
    t.integer  "Cod_Compania", limit: 4, null: false
    t.integer  "Cod_Empleado", limit: 4, null: false
    t.datetime "Fecha_Desde",            null: false
    t.datetime "Fecha_Hasta",            null: false
  end

  create_table "Empleados_Amonestaciones", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Tipo_Amonestacion", limit: 4,                            null: false
    t.integer  "eam_CodCompania",   limit: 4
    t.integer  "Codigo_Empleado",   limit: 4,                            null: false
    t.datetime "Fecha",                                                  null: false
    t.varchar  "Comentarios",       limit: 255,                          null: false
    t.integer  "Orden",             limit: 4,                            null: false
    t.varchar  "Usuario",           limit: 30,                           null: false
    t.money    "FechaReg",                      precision: 19, scale: 4
  end

  create_table "Empleados_AmonestacionesDocs", primary_key: "CodAmonestacion", force: :cascade do |t|
    t.integer "Orden",     limit: 2,   null: false
    t.varchar "Documento", limit: 300, null: false
  end

  create_table "Empleados_AmonestacionesTemp", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Tipo_Amonestacion", limit: 4,   null: false
    t.integer  "eam_CodCompania",   limit: 4
    t.integer  "Codigo_Empleado",   limit: 4,   null: false
    t.datetime "Fecha",                         null: false
    t.varchar  "Comentarios",       limit: 255, null: false
    t.integer  "Orden",             limit: 4,   null: false
    t.varchar  "Usuario",           limit: 30,  null: false
    t.datetime "FechaReg"
  end

  create_table "Empleados_AseguradosImp", primary_key: "Secuencia", force: :cascade do |t|
    t.integer    "Cod_Compania",      limit: 4,                           null: false
    t.integer    "Tipo_Descuento",    limit: 4,                           null: false
    t.integer    "Tipo_Nomina",       limit: 4,                           null: false
    t.integer    "Periodo_Descuento", limit: 4,                           null: false
    t.varchar    "Nombres",           limit: 50,                          null: false
    t.varchar    "Apellidos",         limit: 50,                          null: false
    t.varchar    "Cod_Asegurado",     limit: 20,                          null: false
    t.integer    "Cod_Empleado",      limit: 4,                           null: false
    t.datetime   "Fecha_Nac",                                             null: false
    t.integer    "Edad",              limit: 4,                           null: false
    t.varchar    "Sexo",              limit: 1,                           null: false
    t.varchar    "Plan_Seguro",       limit: 30,                          null: false
    t.varchar    "Categoria",         limit: 50,                          null: false
    t.integer    "Dependientes",      limit: 1,                           null: false
    t.varchar    "Fecha_Fact",        limit: 10,                          null: false
    t.varchar    "Cedula",            limit: 15,                          null: false
    t.smallmoney "Total_Prima",                  precision: 10, scale: 4, null: false
    t.smallmoney "Valor_Empleado",               precision: 10, scale: 4, null: false
    t.smallmoney "Valor_DescQuin",               precision: 10, scale: 4, null: false
    t.smallmoney "Valor_Compania",               precision: 10, scale: 4, null: false
    t.integer    "EsDependiente",     limit: 1
  end

  add_index "Empleados_AseguradosImp", ["Cod_Compania", "Cod_Empleado"], name: "IX_Empleados_AseguradosImp"
  add_index "Empleados_AseguradosImp", ["Nombres", "Apellidos"], name: "IX_Empleados_AseguradosImp_1"

  create_table "Empleados_AsistImportar", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "Cod_Compania", limit: 4, null: false
    t.integer  "Cod_Empleado", limit: 4, null: false
    t.datetime "FechaEnt",               null: false
    t.datetime "FechaSal",               null: false
    t.integer  "CodHorario",   limit: 4
    t.integer  "TienePonche",  limit: 1
    t.integer  "CodLote",      limit: 4
  end

  create_table "Empleados_Asistencia", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "Cod_Compania",       limit: 4,                            null: false
    t.integer  "Cod_Empleado",       limit: 4,                            null: false
    t.integer  "Cod_Horario",        limit: 4,                            null: false
    t.datetime "FechaEnt1",                                               null: false
    t.datetime "FechaSal1"
    t.datetime "FechaEnt2"
    t.datetime "FechaSal2"
    t.datetime "FechaEnt3"
    t.datetime "FechaSal3"
    t.datetime "FechaSal"
    t.decimal  "HorasDia",                       precision: 18, scale: 2, null: false
    t.decimal  "HorasLab",                       precision: 18, scale: 2, null: false
    t.decimal  "HorasNoLab",                     precision: 18, scale: 2, null: false
    t.varchar  "Observacion",        limit: 255,                          null: false
    t.integer  "TienePonche",        limit: 1,                            null: false
    t.integer  "CodUsuario",         limit: 4,                            null: false
    t.integer  "PagarHoras",         limit: 1
    t.varchar  "Estado",             limit: 2
    t.integer  "CodInasistencia",    limit: 4
    t.decimal  "HorasDescLaboradas",             precision: 18, scale: 2
  end

  create_table "Empleados_AsistenciaTemp", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "Cod_Compania",       limit: 4,                            null: false
    t.integer  "Cod_Empleado",       limit: 4,                            null: false
    t.integer  "Cod_Horario",        limit: 4,                            null: false
    t.datetime "FechaEnt1"
    t.datetime "FechaSal1"
    t.datetime "FechaEnt2"
    t.datetime "FechaSal2"
    t.datetime "FechaEnt3"
    t.datetime "FechaSal3"
    t.datetime "FechaSal"
    t.decimal  "HorasDia",                       precision: 18, scale: 2, null: false
    t.decimal  "HorasLab",                       precision: 18, scale: 2, null: false
    t.decimal  "HorasNoLab",                     precision: 18, scale: 2, null: false
    t.varchar  "Observacion",        limit: 255,                          null: false
    t.integer  "TienePonche",        limit: 1,                            null: false
    t.integer  "CodUsuario",         limit: 4,                            null: false
    t.integer  "PagarHoras",         limit: 1
    t.varchar  "Estado",             limit: 2
    t.integer  "CodInasistencia",    limit: 4
    t.decimal  "HorasDescLaboradas",             precision: 18, scale: 2
  end

  create_table "Empleados_Beneficios", id: false, force: :cascade do |t|
    t.integer "Numero_Compania",  limit: 4,                          null: false
    t.integer "Codigo_Empleado",  limit: 4,                          null: false
    t.integer "Codigo_Beneficio", limit: 4,                          null: false
    t.money   "Valor_Beneficio",            precision: 19, scale: 4
  end

  add_index "Empleados_Beneficios", ["Numero_Compania", "Codigo_Empleado", "Codigo_Beneficio"], name: "IX_Empleados_Beneficios"

  create_table "Empleados_Comprobantes", primary_key: "Secuencia", force: :cascade do |t|
    t.integer "Cod_Empleado",      limit: 4,    null: false
    t.integer "Numero_Compania",   limit: 4,    null: false
    t.integer "Ano_Nomina",        limit: 4,    null: false
    t.integer "Mes_Nomina",        limit: 2,    null: false
    t.integer "Periodo_Nomina",    limit: 1,    null: false
    t.integer "Tipo_Nomina",       limit: 4,    null: false
    t.string  "Contenido_Comprob", limit: 4000, null: false
  end

  create_table "Empleados_Cualidades", id: false, force: :cascade do |t|
    t.integer "ecu_CodCompania", limit: 4
    t.integer "Codigo_Empleado", limit: 4, null: false
    t.integer "Codigo_Cualidad", limit: 4, null: false
    t.integer "Grado",           limit: 1, null: false
  end

  create_table "Empleados_Cursos", id: false, force: :cascade do |t|
    t.integer "Numero_Compania", limit: 4, null: false
    t.integer "Cod_Empleado",    limit: 4, null: false
    t.integer "Orden",           limit: 2
    t.integer "Cod_Curso",       limit: 4, null: false
    t.integer "Estatus_Curso",   limit: 1
  end

  create_table "Empleados_DistCC", id: false, force: :cascade do |t|
    t.integer "Cod_Compania",  limit: 4, null: false
    t.integer "Cod_Empleado",  limit: 4, null: false
    t.integer "Cod_SubGrupo",  limit: 4, null: false
    t.integer "PorcientoAsig", limit: 4, null: false
  end

  create_table "Empleados_Documentos", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer "Cod_Empleado",  limit: 4, null: false
    t.integer "Cod_Documento", limit: 4, null: false
    t.integer "Orden",         limit: 2, null: false
    t.char    "EstatusDoc",    limit: 1
  end

  create_table "Empleados_EquivComp", id: false, force: :cascade do |t|
    t.integer "Numero_Compania",       limit: 4, null: false
    t.integer "Codigo_Empleado",       limit: 4, null: false
    t.integer "Compania_Equiv",        limit: 4, null: false
    t.integer "Codigo_Empleado_Equiv", limit: 4, null: false
  end

  create_table "Empleados_Estudios", primary_key: "Codigo", force: :cascade do |t|
    t.integer    "ees_CodCompania", limit: 4
    t.integer    "Codigo_Empleado", limit: 4,                                   null: false
    t.integer    "Estudio_Interno", limit: 1
    t.datetime   "Fecha_Desde"
    t.datetime   "Fecha_Hasta"
    t.integer    "Horas",           limit: 4
    t.money      "Costo_Curso",                        precision: 19, scale: 4
    t.integer    "Codigo_Curso",    limit: 4,                                   null: false
    t.text_basic "Comentarios",     limit: 2147483647
    t.varchar    "Usuario",         limit: 30,                                  null: false
  end

  create_table "Empleados_Experiencia", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "eex_CodCompania", limit: 4
    t.integer  "Codigo_Empleado", limit: 4,   null: false
    t.varchar  "Institucion",     limit: 100, null: false
    t.varchar  "Ubicacion",       limit: 100
    t.varchar  "Telefono",        limit: 13
    t.varchar  "Puesto",          limit: 40
    t.datetime "Fecha_Desde"
    t.datetime "Fecha_Hasta"
    t.varchar  "Funcion",         limit: 100
    t.varchar  "Motivo_Retiro",   limit: 50
    t.varchar  "Usuario",         limit: 30
  end

  create_table "Empleados_Habilidades", primary_key: "ehb_CodCompania", force: :cascade do |t|
    t.integer "Codigo_Empleado",  limit: 4, null: false
    t.integer "Codigo_Habilidad", limit: 4, null: false
    t.integer "Grado",            limit: 1
  end

  create_table "Empleados_Idiomas", primary_key: "eid_CodCompania", force: :cascade do |t|
    t.integer "Numero_Empleado", limit: 4, null: false
    t.integer "Idioma",          limit: 4, null: false
    t.varchar "Lee",             limit: 1
    t.varchar "Escribe",         limit: 1
    t.varchar "Habla",           limit: 1
    t.varchar "Comprende",       limit: 1
  end

  create_table "Empleados_LabRefeImportados", id: false, force: :cascade do |t|
    t.float    "Numero_Compania"
    t.float    "Numero"
    t.string   "Codigo",                   limit: 255
    t.string   "Nombre",                   limit: 255
    t.string   "Apellido1",                limit: 255
    t.string   "Apellido2",                limit: 255
    t.float    "Genero"
    t.datetime "Fecha_Nacimiento"
    t.string   "Lugar_Nacimiento",         limit: 255
    t.float    "Nacionalidad"
    t.float    "Lengua_Materna"
    t.float    "Cedula"
    t.float    "Estado_Civil"
    t.string   "pasaporte",                limit: 255
    t.string   "Telefono1",                limit: 255
    t.datetime "Telefono2"
    t.string   "Direccion",                limit: 255
    t.datetime "Fecha_Ingreso"
    t.float    "Nivel"
    t.float    "Clasificacion"
    t.float    "Posicion"
    t.float    "Salario_Base"
    t.string   "Salario_Hora",             limit: 255
    t.float    "Cuenta_Bancaria"
    t.string   "Cuenta_Contable",          limit: 255
    t.string   "Estatus",                  limit: 255
    t.datetime "Fecha_Estatus"
    t.float    "Poncha"
    t.float    "Tipo_Empleado"
    t.string   "E_Mail",                   limit: 255
    t.string   "Nombre_emergencia",        limit: 255
    t.string   "Telefono_Emergencia",      limit: 255
    t.string   "Nombre_Doctor",            limit: 255
    t.string   "Telefono_Doctor",          limit: 255
    t.datetime "Direccion_Emergencia"
    t.string   "Ciudad",                   limit: 255
    t.float    "Numero_Solicitud"
    t.float    "Nomina_Salario"
    t.float    "Nomina_ISR_SS"
    t.float    "Descontar_SS"
    t.string   "Grupo_Trabajo",            limit: 255
    t.string   "SubGrupo Trabajo",         limit: 255
    t.string   "Numero_Tarjeta",           limit: 255
    t.string   "Tipo_asalariado",          limit: 255
    t.string   "Numero_Afiliado",          limit: 255
    t.string   "Forma Pago",               limit: 255
    t.float    "Titular"
    t.float    "Horas_Acumuladas"
    t.float    "Valor_Horas_Acumuladas"
    t.float    "Salario_Normal_Acumulado"
    t.float    "Horas_Semanales"
    t.string   "Tipo_Sangre",              limit: 255
    t.float    "Codigo_Grado_Academico"
    t.float    "Codigo_Politica_Horario"
    t.float    "Codigo_Titular"
    t.float    "Forma_Imp_Comprob"
    t.float    "Secuencia_Ano"
    t.string   "Tipo_Labor",               limit: 255
    t.string   "Nombre_Usuario",           limit: 255
    t.float    "AplicLeySeg"
    t.float    "Deduc_Pension"
    t.float    "Deduc_Salud"
    t.float    "Deduc_Riesgo"
    t.string   "NumAfi_LeySeg",            limit: 255
    t.datetime "Fecha_Reg"
    t.float    "Hora_Reg"
    t.float    "Cod_Cargo"
    t.string   "Email_Interno",            limit: 255
    t.datetime "Fecha_UltEval"
    t.datetime "Fecha_ProxEval"
    t.string   "SucursalBanco",            limit: 255
    t.string   "Cod_Sucursal",             limit: 255
    t.datetime "Fec_FinContrato"
    t.datetime "Cod_Supervisor"
    t.float    "ValorUltEval"
    t.float    "SecuenciaEmp"
    t.datetime "Cod_Banco"
    t.string   "emp_MonedaSalario",        limit: 255
    t.float    "CodCompaniaTransf"
    t.float    "Numero_CompaniaISR"
    t.float    "Cod_Sector"
    t.float    "Cod_Pais"
    t.string   "RutaFoto",                 limit: 255
    t.float    "AplicaBonoVac"
  end

  create_table "Empleados_Modif_Nomina", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "Codigo_Nomina",   limit: 4,  null: false
    t.integer  "emn_CodCompania", limit: 4
    t.integer  "Codigo_Empleado", limit: 4,  null: false
    t.varchar  "Usuario",         limit: 50
    t.datetime "Fecha"
  end

  create_table "Empleados_Modif_NominaNov", id: false, force: :cascade do |t|
    t.integer "Secuencia",      limit: 4
    t.varchar "Tipo_Novedad",   limit: 1
    t.integer "Cod_Novedad",    limit: 4
    t.float   "Cant_Original"
    t.money   "Monto_Original",           precision: 19, scale: 4
    t.integer "Cant_Actual",    limit: 4
    t.money   "Monto_Actual",             precision: 19, scale: 4
  end

  create_table "Empleados_Objetivos", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Numero_Compania", limit: 4, null: false
    t.integer  "Cod_Supervisor",  limit: 4, null: false
    t.integer  "Cod_Empleado",    limit: 4, null: false
    t.integer  "Ano",             limit: 4, null: false
    t.integer  "Orden_Ano",       limit: 2, null: false
    t.datetime "Fecha_Desde",               null: false
    t.datetime "Fecha_Hasta",               null: false
  end

  add_index "Empleados_Objetivos", ["Numero_Compania", "Cod_Supervisor", "Ano", "Orden_Ano"], name: "IX_Empleados_Objetivos"

  create_table "Empleados_ObjetivosDet", primary_key: "Numero_Compania", force: :cascade do |t|
    t.integer  "Codigo",       limit: 4,                            null: false
    t.integer  "Cod_Empleado", limit: 4,                            null: false
    t.integer  "Cod_Objetivo", limit: 4,                            null: false
    t.varchar  "ObjetivoEmp",  limit: 250,                          null: false
    t.decimal  "MetaEmp",                  precision: 12, scale: 2, null: false
    t.decimal  "PrioridadEmp",             precision: 10, scale: 2, null: false
    t.datetime "Fecha_Asig",                                        null: false
  end

  add_index "Empleados_ObjetivosDet", ["Numero_Compania", "Cod_Empleado", "Cod_Objetivo", "ObjetivoEmp"], name: "IX_Empleados_ObjetivosDet"

  create_table "Empleados_OtrosDatos", id: false, force: :cascade do |t|
    t.integer "odt_CodCompania",    limit: 4,                           null: false
    t.integer "Cod_Empleado",       limit: 4,                           null: false
    t.varchar "Codigo_CxC",         limit: 15
    t.integer "Hijos",              limit: 4
    t.integer "Campo1",             limit: 4
    t.varchar "Campo2",             limit: 50
    t.money   "Campo3",                        precision: 19, scale: 4
    t.money   "Salario_Nominal",               precision: 19, scale: 4
    t.char    "Pago_Efectivo",      limit: 2
    t.money   "IncentivoCantHoras",            precision: 19, scale: 4
  end

  create_table "Empleados_PlanifHorario", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "CodCompania", limit: 4, null: false
    t.integer  "CodEmpleado", limit: 4, null: false
    t.datetime "Fecha",                 null: false
    t.integer  "Horario",     limit: 4, null: false
    t.integer  "Libre",       limit: 1, null: false
    t.char     "Estatus",     limit: 1
    t.integer  "DiaSemana",   limit: 1
  end

  add_index "Empleados_PlanifHorario", ["CodCompania", "CodEmpleado", "Fecha", "Horario"], name: "IX_Empleados_PlanifHorario", unique: true

  create_table "Empleados_Procesados_Nomina", primary_key: "Codigo_Nomina", force: :cascade do |t|
    t.integer "Tipo_Nomina",      limit: 4,                          null: false
    t.integer "Ano_Nomina",       limit: 4,                          null: false
    t.integer "Mes_Nomina",       limit: 1,                          null: false
    t.integer "Periodo_Nomina",   limit: 1,                          null: false
    t.integer "epn_CodCompania",  limit: 4,                          null: false
    t.integer "Codigo_Empleado",  limit: 4,                          null: false
    t.money   "Total_Ingresos",             precision: 19, scale: 4
    t.money   "Total_Descuentos",           precision: 19, scale: 4
    t.money   "Neto_Pagado",                precision: 19, scale: 4
    t.integer "Grupo_Emp",        limit: 4
    t.integer "SubGrupo_Emp",     limit: 4
    t.integer "Posicion_Emp",     limit: 4
    t.integer "Orden_GS",         limit: 4
    t.money   "Sal_Base",                   precision: 19, scale: 4
    t.varchar "epMoneda",         limit: 5
  end

  add_index "Empleados_Procesados_Nomina", ["epn_CodCompania", "Ano_Nomina", "Mes_Nomina", "Periodo_Nomina", "Tipo_Nomina", "Codigo_Empleado"], name: "Personal_Nomina_AltCumb_dbo_Empleados_Procesados_Nomina idx_Tipo_Ano_Mes", unique: true

  create_table "Empleados_Procesados_Nomina_Temp", primary_key: "Codigo_Nomina", force: :cascade do |t|
    t.integer "Tipo_Nomina",      limit: 4
    t.integer "Ano_Nomina",       limit: 4
    t.integer "Mes_Nomina",       limit: 1
    t.integer "Periodo_Nomina",   limit: 1
    t.integer "epn_CodCompania",  limit: 4,                          null: false
    t.integer "Codigo_Empleado",  limit: 4,                          null: false
    t.money   "Total_Ingresos",             precision: 19, scale: 4
    t.money   "Total_Descuentos",           precision: 19, scale: 4
    t.money   "Neto_Pagado",                precision: 19, scale: 4
    t.integer "Grupo_Emp",        limit: 4
    t.integer "SubGrupo_Emp",     limit: 4
    t.integer "Posicion_Emp",     limit: 4
    t.integer "Orden_GS",         limit: 4
    t.money   "Sal_Base",                   precision: 19, scale: 4
    t.varchar "epMoneda",         limit: 5
  end

  add_index "Empleados_Procesados_Nomina_Temp", ["epn_CodCompania", "Ano_Nomina", "Mes_Nomina", "Periodo_Nomina", "Tipo_Nomina", "Codigo_Empleado"], name: "IX_Empleados_Procesados_Nomina_Temp", unique: true

  create_table "Empleados_Split_tmp", id: false, force: :cascade do |t|
    t.integer "esp_CodCompania", limit: 4
    t.integer "Numero1",         limit: 4,    null: false
    t.integer "Anos1",           limit: 4
    t.integer "Meses1",          limit: 4
    t.integer "Dias1",           limit: 4
    t.integer "Numero2",         limit: 4,    null: false
    t.integer "Anos2",           limit: 4
    t.integer "Meses2",          limit: 4
    t.integer "Dias2",           limit: 4
    t.string  "Imagen1",         limit: 4000
    t.string  "Imagen2",         limit: 4000
  end

  add_index "Empleados_Split_tmp", ["Numero1"], name: "Personal_Nomina_AltCumb_dbo_Empleados_Split_tmp Numero1"
  add_index "Empleados_Split_tmp", ["Numero2"], name: "Personal_Nomina_AltCumb_dbo_Empleados_Split_tmp Numero2"

  create_table "Empleados_SubGruposAsignar_Borrar", id: false, force: :cascade do |t|
    t.integer "Numero",             limit: 4,   null: false
    t.varchar "Nombre",             limit: 60,  null: false
    t.varchar "GrupoActual",        limit: 100
    t.varchar "SubGrupoActual",     limit: 100
    t.varchar "GrupoSubGrupoNuevo", limit: 200
  end

  create_table "Equipos", primary_key: "CodCompania", force: :cascade do |t|
    t.integer  "Codigo",           limit: 4,                                           null: false
    t.integer  "CodCategoria",     limit: 4,                                           null: false
    t.varchar  "NombreEquipo",     limit: 100,                                         null: false
    t.varchar  "Descripcion",      limit: 1000,                                        null: false
    t.varchar  "Alias",            limit: 5,                                           null: false
    t.varchar  "NoIdentificacion", limit: 30,                                          null: false
    t.decimal  "Existencia",                    precision: 18, scale: 2,               null: false
    t.datetime "FechaReg",                                                             null: false
    t.integer  "CodUsuario",       limit: 4,                                           null: false
    t.char     "Estatus",          limit: 1,                                           null: false
    t.decimal  "CostoAdquisicion",              precision: 18, scale: 2
    t.decimal  "PrecioVenta",                   precision: 18, scale: 2
    t.varchar  "Origen",           limit: 2
    t.integer  "CodOrigen",        limit: 4
    t.decimal  "CantAsignada",                  precision: 18, scale: 2, default: 0.0
  end

  create_table "EquiposAsignacionEmp", primary_key: "CodCompania", force: :cascade do |t|
    t.integer  "CodAsignacion",    limit: 4,                            null: false
    t.integer  "CodLoteAsig",      limit: 4,                            null: false
    t.integer  "CodEmpleado",      limit: 4,                            null: false
    t.integer  "CodEquipo",        limit: 4,                            null: false
    t.varchar  "NoIdentificacion", limit: 30,                           null: false
    t.varchar  "Comentarios",      limit: 500,                          null: false
    t.datetime "FechaAsig",                                             null: false
    t.datetime "FechaReg",                                              null: false
    t.decimal  "ExistenciaAct",                precision: 18, scale: 2, null: false
    t.decimal  "CantidadAsig",                 precision: 18, scale: 2, null: false
    t.decimal  "CantidadDesc",                 precision: 18, scale: 2, null: false
    t.decimal  "CantAsigAct",                  precision: 19, scale: 2
    t.integer  "CodUsuario",       limit: 4,                            null: false
    t.decimal  "CantAsigOrig",                 precision: 18, scale: 2
  end

  create_table "EquiposCategorias", primary_key: "Codigo", force: :cascade do |t|
    t.integer "CodCompania", limit: 4,   null: false
    t.varchar "Descripcion", limit: 100, null: false
    t.char    "Estatus",     limit: 1,   null: false
  end

  create_table "EquiposConsumos", primary_key: "CodCompania", force: :cascade do |t|
    t.integer  "CodConsumo",     limit: 4,                            null: false
    t.integer  "CodLote",        limit: 4,                            null: false
    t.integer  "CodEmpleado",    limit: 4,                            null: false
    t.integer  "CodEquipo",      limit: 4,                            null: false
    t.varchar  "Comentarios",    limit: 500,                          null: false
    t.datetime "FechaInic",                                           null: false
    t.datetime "FechaFin",                                            null: false
    t.datetime "FechaReg",                                            null: false
    t.decimal  "Cantidad",                   precision: 18, scale: 2, null: false
    t.integer  "CodUsuario",     limit: 4,                            null: false
    t.integer  "Validado",       limit: 1
    t.integer  "MovInvenTransf", limit: 1
    t.integer  "CodLoteTransf",  limit: 4
  end

  create_table "EquiposDescargosEmp", primary_key: "CodCompania", force: :cascade do |t|
    t.integer  "CodDescargo",   limit: 4,                            null: false
    t.integer  "CodLoteDesc",   limit: 4,                            null: false
    t.integer  "CodAsignacion", limit: 4,                            null: false
    t.integer  "CodEmpleado",   limit: 4,                            null: false
    t.integer  "CodEquipo",     limit: 4,                            null: false
    t.varchar  "Comentarios",   limit: 500,                          null: false
    t.datetime "FechaDesc",                                          null: false
    t.datetime "FechaReg",                                           null: false
    t.decimal  "ExistenciaAct",             precision: 18, scale: 2, null: false
    t.decimal  "CantidadDesc",              precision: 18, scale: 2, null: false
    t.decimal  "CantAsigAct",               precision: 18, scale: 0, null: false
    t.integer  "CodUsuario",    limit: 4,                            null: false
  end

  create_table "EquiposEntSal", primary_key: "CodCompania", force: :cascade do |t|
    t.integer  "Codigo",       limit: 4,   null: false
    t.varchar  "Comentarios",  limit: 500, null: false
    t.varchar  "NoReferencia", limit: 30
    t.datetime "FechaMov",                 null: false
    t.datetime "FechaReg",                 null: false
    t.char     "Estatus",      limit: 1,   null: false
    t.integer  "CodUsuario",   limit: 4,   null: false
    t.char     "TipoMov",      limit: 1
  end

  create_table "EquiposEntSalDet", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "CodMovimiento", limit: 4,                          null: false
    t.integer "Orden",         limit: 4,                          null: false
    t.integer "CodEquipo",     limit: 4,                          null: false
    t.decimal "ExistenciaAct",           precision: 18, scale: 2, null: false
    t.decimal "CantidadMov",             precision: 18, scale: 2, null: false
    t.char    "Tipo",          limit: 1,                          null: false
  end

  create_table "EscalasEval_Categorias", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 100, null: false
    t.integer "CodCompania", limit: 4
  end

  create_table "Escalas_Entrevistas", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 50, null: false
    t.char    "Condicion",   limit: 1
  end

  create_table "Escalas_Evaluaciones", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Grado",          limit: 25
    t.varchar "Siglas",         limit: 5
    t.float   "Puntuacion"
    t.varchar "Interpretacion", limit: 255
    t.integer "Cod_CatEscala",  limit: 4
    t.integer "NoAplicaPunt",   limit: 1
    t.char    "CampoElegir",    limit: 1
    t.varchar "Usuario",        limit: 30,  null: false
    t.integer "CodCompania",    limit: 4
  end

  create_table "Escalas_EvaluacionesCol", primary_key: "Cod_Categoria", force: :cascade do |t|
    t.varchar "Sigla1",  limit: 5, null: false
    t.varchar "Sigla2",  limit: 5, null: false
    t.varchar "Sigla3",  limit: 5, null: false
    t.varchar "Sigla4",  limit: 5, null: false
    t.varchar "Sigla5",  limit: 5, null: false
    t.varchar "Sigla6",  limit: 5, null: false
    t.varchar "Sigla7",  limit: 5, null: false
    t.varchar "Sigla8",  limit: 5, null: false
    t.varchar "Sigla9",  limit: 5, null: false
    t.varchar "Sigla10", limit: 5, null: false
  end

  create_table "Escalas_EvaluacionesEncab", primary_key: "Cod_Categoria", force: :cascade do |t|
    t.varchar "Encab1",  limit: 5, null: false
    t.varchar "Encab2",  limit: 5, null: false
    t.varchar "Encab3",  limit: 5, null: false
    t.varchar "Encab4",  limit: 5, null: false
    t.varchar "Encab5",  limit: 5, null: false
    t.varchar "Encab6",  limit: 5, null: false
    t.varchar "Encab7",  limit: 5, null: false
    t.varchar "Encab8",  limit: 5, null: false
    t.varchar "Encab9",  limit: 5, null: false
    t.varchar "Encab10", limit: 5, null: false
  end

  create_table "Escuelas", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 50, null: false
  end

  create_table "Estatus_Nomina", id: false, force: :cascade do |t|
    t.varchar "Estatus",     limit: 1, null: false
    t.integer "Tipo_Nomina", limit: 4, null: false
  end

  create_table "Evaluacion_PuntosMax", id: false, force: :cascade do |t|
    t.float   "PuntuacionDesde",           null: false
    t.float   "PuntuacionHasta",           null: false
    t.float   "Porcentaje",                null: false
    t.integer "CodFormEval",     limit: 4
    t.integer "CodTipoEval",     limit: 4
    t.integer "CodCompania",     limit: 4
    t.integer "Secuencia",       limit: 4
  end

  create_table "Evaluacion_PuntosRedon", id: false, force: :cascade do |t|
    t.float   "PuntuacionDesde",           null: false
    t.float   "PuntuacionHasta",           null: false
    t.float   "PuntuacionRedon",           null: false
    t.integer "CodFormEval",     limit: 4
    t.integer "CodTipoEval",     limit: 4
    t.integer "CodCompania",     limit: 4
    t.integer "Secuencia",       limit: 4
  end

  create_table "Evaluaciones", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Cod_Compania",         limit: 4
    t.integer  "Cod_TipoEval",         limit: 4,                             null: false
    t.varchar  "Descripcion_Eval",     limit: 100,                           null: false
    t.integer  "Cod_PeriodoEval",      limit: 4,                             null: false
    t.datetime "Fecha_Reg"
    t.varchar  "ComentarioEnc",        limit: 1000
    t.varchar  "ComentarioPie",        limit: 1000
    t.integer  "Cod_CatEscala",        limit: 4
    t.varchar  "Usuario",              limit: 30,                            null: false
    t.float    "Porc_Objetivos"
    t.float    "Porc_Competencias"
    t.integer  "FijarPuntosComp",      limit: 1
    t.integer  "FijarMetasObj",        limit: 1
    t.integer  "FijarPriorObj",        limit: 1
    t.integer  "EvaluarDesempeno",     limit: 1
    t.integer  "EvaluarObjetivos",     limit: 1
    t.integer  "DesplegarPuntosCompe", limit: 1
    t.varchar  "InstruccionLlenado",   limit: 255
    t.integer  "FormaTotalizarResult", limit: 1
    t.decimal  "MinutosLimite",                     precision: 18, scale: 2
  end

  create_table "Evaluaciones_Acciones", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 100, null: false
  end

  create_table "Evaluaciones_AsigEmp", primary_key: "Cod_Asignacion", force: :cascade do |t|
    t.char    "Cod_Empleado", limit: 10,             null: false
    t.integer "Evaluado",     limit: 1,  default: 0
  end

  create_table "Evaluaciones_AsigObjEmp", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer  "Codigo",         limit: 4,                            null: false
    t.integer  "Cod_Supervisor", limit: 4,                            null: false
    t.integer  "Cod_Empleado",   limit: 4,                            null: false
    t.varchar  "Objetivo",       limit: 250,                          null: false
    t.decimal  "Meta",                       precision: 12, scale: 2, null: false
    t.decimal  "Peso",                       precision: 5,  scale: 2
    t.decimal  "Meta_Alcanzada",             precision: 12, scale: 2, null: false
    t.datetime "Fecha_Desde",                                         null: false
    t.datetime "Fecha_Hasta",                                         null: false
    t.varchar  "Usuario",        limit: 30,                           null: false
  end

  add_index "Evaluaciones_AsigObjEmp", ["Cod_Compania", "Cod_Empleado"], name: "IX_Evaluaciones_AsigObjEmp_1"
  add_index "Evaluaciones_AsigObjEmp", ["Cod_Compania", "Cod_Supervisor"], name: "IX_Evaluaciones_AsigObjEmp"

  create_table "Evaluaciones_Asignaciones", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "eas_CodCompania",       limit: 4,   null: false
    t.integer  "Cod_FormEval",          limit: 4,   null: false
    t.integer  "CodPeriodoEval",        limit: 4,   null: false
    t.datetime "Fecha",                             null: false
    t.datetime "Fecha_Registro",                    null: false
    t.varchar  "Usuario",               limit: 30,  null: false
    t.varchar  "UserID",                limit: 30,  null: false
    t.float    "ClaveAcceso",                       null: false
    t.varchar  "ObservacEvaluador",     limit: 255
    t.varchar  "ObservacJefeEvaluador", limit: 255
    t.char     "Cod_QuienEvalua",       limit: 1
    t.char     "Cod_AQuienEvaluar",     limit: 1
    t.datetime "FechaIniAcceso"
    t.datetime "FechFinAccesso"
  end

  create_table "Evaluaciones_Avance", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 100, null: false
  end

  create_table "Evaluaciones_Cargos", primary_key: "CodCompania", force: :cascade do |t|
    t.varchar "Codigo",      limit: 10,  null: false
    t.varchar "Descripcion", limit: 100, null: false
    t.char    "Estatus",     limit: 1,   null: false
  end

  create_table "Evaluaciones_ClasifObjetivos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 100, null: false
  end

  create_table "Evaluaciones_CursosRecom", id: false, force: :cascade do |t|
    t.integer "Cod_Compania",     limit: 4, null: false
    t.integer "Cod_Asignacion",   limit: 4, null: false
    t.integer "Cod_Empleado",     limit: 4, null: false
    t.integer "Cod_Curso",        limit: 4, null: false
    t.integer "Orden",            limit: 2, null: false
    t.integer "SecuenEvalCurRec", limit: 4
    t.integer "Cod_Factor",       limit: 4
  end

  create_table "Evaluaciones_Departamentos", primary_key: "CodCompania", force: :cascade do |t|
    t.varchar "Codigo",      limit: 10,  null: false
    t.varchar "Descripcion", limit: 100, null: false
    t.char    "Estatus",     limit: 1
  end

  create_table "Evaluaciones_EmpRespEval", primary_key: "Cod_Asignacion", force: :cascade do |t|
    t.integer "Cod_Competencia", limit: 4, null: false
    t.integer "No_Pregunta",     limit: 4, null: false
    t.integer "Cod_Respuesta",   limit: 4
  end

  create_table "Evaluaciones_Empleados", primary_key: "Cod_Asignacion", force: :cascade do |t|
    t.integer    "eve_CodCompania",       limit: 4
    t.integer    "Orden",                 limit: 4,                      null: false
    t.integer    "Cod_Evaluador",         limit: 4,                      null: false
    t.integer    "Cod_Evaluado",          limit: 4,                      null: false
    t.integer    "Evaluado",              limit: 1,          default: 0
    t.char       "TipoEvaluado",          limit: 1
    t.datetime   "Fecha_Evaluado"
    t.datetime   "Fecha_ProxEval"
    t.text_basic "Observaciones",         limit: 2147483647
    t.float      "Puntos_Objetivos"
    t.float      "Puntos_Compet"
    t.float      "Puntos_Final"
    t.char       "TipoEvaluador",         limit: 1
    t.integer    "Fecha_Asignado",        limit: 4
    t.integer    "SecuenciaEval",         limit: 4
    t.varchar    "Observacion_Evaluado",  limit: 1000
    t.integer    "EvaluadoAcuerdoResult", limit: 1
    t.integer    "MantenerloCargo",       limit: 1
    t.integer    "Reubicarlo",            limit: 1
    t.varchar    "ReubicarloDonde",       limit: 100
    t.integer    "Promoverlo",            limit: 1
    t.varchar    "PromoverloDonde",       limit: 100
    t.integer    "Premiarlo",             limit: 1
    t.varchar    "PremiarloComo",         limit: 100
    t.integer    "Adistrarlo",            limit: 1
    t.varchar    "AdiestrarloEnQue",      limit: 100
    t.integer    "EvalImpresa",           limit: 1
    t.float      "Puntos_CompetCalc"
    t.float      "Puntos_ObjetCalc"
    t.integer    "CodEntidad",            limit: 4
  end

  add_index "Evaluaciones_Empleados", ["Cod_Asignacion"], name: "IX_Evaluaciones_Empleados"

  create_table "Evaluaciones_Entidades", primary_key: "CodCompania", force: :cascade do |t|
    t.varchar  "CodEmpleado",      limit: 15, null: false
    t.char     "TipoEvaluado",     limit: 1,  null: false
    t.varchar  "Nombres",          limit: 50
    t.varchar  "Apellidos",        limit: 50
    t.integer  "CodSucursal",      limit: 4
    t.varchar  "CodDepartamento",  limit: 50, null: false
    t.varchar  "CodCargo",         limit: 50, null: false
    t.varchar  "CodSupervisor",    limit: 15, null: false
    t.datetime "FechaIngreso"
    t.char     "Estatus",          limit: 1,  null: false
    t.varchar  "CorreoInterno",    limit: 60
    t.varchar  "CorreoExterno",    limit: 60
    t.datetime "Fecha_Nacimiento"
    t.char     "Genero",           limit: 1
    t.varchar  "cedula",           limit: 13
    t.integer  "SecuenciaEnt",     limit: 4
  end

  add_index "Evaluaciones_Entidades", ["CodCompania", "CodDepartamento"], name: "IX_Evaluaciones_Entidades_1"
  add_index "Evaluaciones_Entidades", ["CodCompania", "CodSupervisor"], name: "IX_Evaluaciones_Entidades_2"
  add_index "Evaluaciones_Entidades", ["CodCompania", "Nombres", "Apellidos"], name: "IX_Evaluaciones_Entidades"

  create_table "Evaluaciones_EscalasVertTemp", id: false, force: :cascade do |t|
    t.integer "Cod_Categoria", limit: 4,  null: false
    t.varchar "Sigla1",        limit: 50, null: false
    t.varchar "Encab1",        limit: 50, null: false
    t.varchar "Sigla2",        limit: 50, null: false
    t.varchar "Encab2",        limit: 50, null: false
    t.varchar "Sigla3",        limit: 50, null: false
    t.varchar "Encab3",        limit: 50, null: false
    t.varchar "Sigla4",        limit: 50, null: false
    t.varchar "Encab4",        limit: 50, null: false
    t.varchar "Sigla5",        limit: 50, null: false
    t.varchar "Encab5",        limit: 50, null: false
    t.varchar "Sigla6",        limit: 50, null: false
    t.varchar "Encab6",        limit: 50, null: false
    t.varchar "Sigla7",        limit: 50, null: false
    t.varchar "Encab7",        limit: 50, null: false
    t.varchar "Sigla8",        limit: 50, null: false
    t.varchar "Encab8",        limit: 50, null: false
    t.varchar "Sigla9",        limit: 50, null: false
    t.varchar "Encab9",        limit: 50, null: false
    t.varchar "Sigla10",       limit: 50, null: false
    t.varchar "Encab10",       limit: 50, null: false
  end

  create_table "Evaluaciones_EscalasVertTempDist", id: false, force: :cascade do |t|
    t.integer "Cod_Categoria", limit: 4,  null: false
    t.varchar "Sigla1",        limit: 50, null: false
    t.varchar "Encab1",        limit: 50, null: false
    t.varchar "Sigla2",        limit: 50, null: false
    t.varchar "Encab2",        limit: 50, null: false
    t.varchar "Sigla3",        limit: 50, null: false
    t.varchar "Encab3",        limit: 50, null: false
    t.varchar "Sigla4",        limit: 50, null: false
    t.varchar "Encab4",        limit: 50, null: false
    t.varchar "Sigla5",        limit: 50, null: false
    t.varchar "Encab5",        limit: 50, null: false
    t.varchar "Sigla6",        limit: 50, null: false
    t.varchar "Encab6",        limit: 50, null: false
    t.varchar "Sigla7",        limit: 50, null: false
    t.varchar "Encab7",        limit: 50, null: false
    t.varchar "Sigla8",        limit: 50, null: false
    t.varchar "Encab8",        limit: 50, null: false
    t.varchar "Sigla9",        limit: 50, null: false
    t.varchar "Encab9",        limit: 50, null: false
    t.varchar "Sigla10",       limit: 50, null: false
    t.varchar "Encab10",       limit: 50, null: false
  end

  create_table "Evaluaciones_EvaluadosTemp", id: false, force: :cascade do |t|
    t.integer "Numero_Compania", limit: 4, null: false
    t.integer "Cod_Evaluado",    limit: 4, null: false
    t.char    "Tipo_Evaluado",   limit: 1, null: false
  end

  create_table "Evaluaciones_FactoresRep", id: false, force: :cascade do |t|
    t.integer "Cod_Compania",    limit: 4,   null: false
    t.integer "Cod_Asignacion",  limit: 4,   null: false
    t.integer "Cod_Empleado",    limit: 4,   null: false
    t.varchar "FactorEvaluado1", limit: 255, null: false
    t.varchar "FactorEvaluado2", limit: 255, null: false
    t.varchar "FactorEvaluado3", limit: 255, null: false
    t.varchar "FactorEvaluado4", limit: 255, null: false
    t.varchar "FactorEvaluado5", limit: 255, null: false
    t.varchar "FactorEvaluado6", limit: 255, null: false
    t.varchar "FactorEvaluado7", limit: 255, null: false
    t.varchar "FactorEvaluado8", limit: 255, null: false
    t.varchar "Puntuacion1",     limit: 20
    t.varchar "Puntuacion2",     limit: 20
    t.varchar "Puntuacion3",     limit: 20
    t.varchar "Puntuacion4",     limit: 20
    t.varchar "Puntuacion5",     limit: 20
    t.varchar "Puntuacion6",     limit: 20
    t.varchar "Puntuacion7",     limit: 20
    t.varchar "Puntuacion8",     limit: 20
  end

  add_index "Evaluaciones_FactoresRep", ["Cod_Compania", "Cod_Asignacion", "Cod_Empleado"], name: "IX_Evaluaciones_FactoresRep"

  create_table "Evaluaciones_FormInstrucLlenado", primary_key: "Cod_FormEval", force: :cascade do |t|
    t.integer "Orden",       limit: 4,    null: false
    t.varchar "Instruccion", limit: 1000, null: false
  end

  create_table "Evaluaciones_FormInterpret", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer    "Cod_Form",        limit: 4,          null: false
    t.integer    "Cod_Grado",       limit: 4,          null: false
    t.integer    "Cod_Competencia", limit: 4,          null: false
    t.char       "Tipo_Compet",     limit: 1,          null: false
    t.varchar    "Interpretacion",  limit: 1000,       null: false
    t.text_basic "Indicadores",     limit: 2147483647
    t.integer    "Orden",           limit: 2
  end

  create_table "Evaluaciones_FormObjetivos", id: false, force: :cascade do |t|
    t.integer "Cod_FormEval",     limit: 4,                            null: false
    t.integer "No_Pregunta",      limit: 2,                            null: false
    t.varchar "Objetivo_Evaluar", limit: 255,                          null: false
    t.decimal "Meta_ObjForm",                 precision: 12, scale: 2
    t.decimal "Peso_ObjForm",                 precision: 6,  scale: 2
  end

  create_table "Evaluaciones_FormulariosRep", id: false, force: :cascade do |t|
    t.varchar "NombreFormulario", limit: 100, null: false
    t.varchar "NombreReporte",    limit: 100, null: false
  end

  create_table "Evaluaciones_GradosFormTemp", id: false, force: :cascade do |t|
    t.integer "Cod_Formulario",   limit: 4,   null: false
    t.integer "Cod_Competencia",  limit: 4,   null: false
    t.varchar "Grado1",           limit: 50,  null: false
    t.varchar "InterpretGrado1",  limit: 500, null: false
    t.varchar "Grado2",           limit: 50,  null: false
    t.varchar "InterpretGrado2",  limit: 500, null: false
    t.varchar "Grado3",           limit: 50,  null: false
    t.varchar "InterpretGrado3",  limit: 500, null: false
    t.varchar "Grado4",           limit: 50,  null: false
    t.varchar "InterpretGrado4",  limit: 500, null: false
    t.varchar "Grado5",           limit: 50,  null: false
    t.varchar "InterpretGrado5",  limit: 500, null: false
    t.varchar "Grado6",           limit: 50,  null: false
    t.varchar "InterpretGrado6",  limit: 500, null: false
    t.varchar "Grado7",           limit: 50,  null: false
    t.varchar "InterpretGrado7",  limit: 500, null: false
    t.varchar "Grado8",           limit: 50,  null: false
    t.varchar "InterpretGrado8",  limit: 500, null: false
    t.varchar "Grado9",           limit: 50
    t.varchar "InterpretGrado9",  limit: 500
    t.varchar "Grado10",          limit: 50
    t.varchar "InterpretGrado10", limit: 500
  end

  add_index "Evaluaciones_GradosFormTemp", ["Cod_Formulario", "Cod_Competencia"], name: "IX_Evaluaciones_GradosFormTemp"

  create_table "Evaluaciones_Lineas", primary_key: "Cod_FormEval", force: :cascade do |t|
    t.integer "Cod_Competencia",  limit: 4,                          null: false
    t.integer "Orden",            limit: 2,                          null: false
    t.integer "No_Pregunta",      limit: 4,                          null: false
    t.char    "Tipo_Competencia", limit: 1
    t.integer "Cod_EscalaPunt",   limit: 4
    t.integer "OrdenCompetencia", limit: 2
    t.decimal "MinutosLimComp",             precision: 18, scale: 0
    t.integer "DebeDigitarSol",   limit: 1
    t.integer "SecuenciaLin",     limit: 4
  end

  create_table "Evaluaciones_LineasSol", primary_key: "Secuencia", force: :cascade do |t|
    t.integer "Cod_FormEval",    limit: 4,                            null: false
    t.integer "Orden",           limit: 2,                            null: false
    t.varchar "Descripcion",     limit: 500
    t.varchar "Siglas",          limit: 5,                            null: false
    t.decimal "Puntuacion",                  precision: 12, scale: 2, null: false
    t.varchar "Interpretacion",  limit: 255
    t.integer "Cod_CatEscala",   limit: 4
    t.integer "EsSolucCorrecta", limit: 1
  end

  create_table "Evaluaciones_Objetivos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",     limit: 250,                          null: false
    t.integer "Cod_ClasifObj",   limit: 4,                            null: false
    t.decimal "Meta",                        precision: 12, scale: 2, null: false
    t.decimal "Prioridad",                   precision: 5,  scale: 2, null: false
    t.integer "Estatus",         limit: 1,                            null: false
    t.integer "CodDepartamento", limit: 4
    t.integer "CodPeriodo",      limit: 4
    t.integer "CodCompania",     limit: 4
  end

  create_table "Evaluaciones_ObjetivosDet", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "CodObjetivo",    limit: 20,                           null: false
    t.varchar "Descripcion",    limit: 250,                          null: false
    t.varchar "CodObjetPadre",  limit: 20,                           null: false
    t.decimal "Meta",                       precision: 18, scale: 0, null: false
    t.integer "Codigo_Usuario", limit: 4
  end

  create_table "Evaluaciones_RegCompet", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer "Cod_Asignacion", limit: 4,   null: false
    t.integer "Cod_Empleado",   limit: 4,   null: false
    t.integer "Cod_Factor",     limit: 4,   null: false
    t.float   "Respuesta",                  null: false
    t.varchar "Observacion",    limit: 255, null: false
    t.float   "Puntos_Compet"
    t.integer "No_Pregunta",    limit: 2
    t.integer "Orden",          limit: 2
    t.integer "Elegir",         limit: 1
    t.integer "SecuenEvalComp", limit: 4
  end

  create_table "Evaluaciones_RegObj", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer "Cod_Asignacion", limit: 4,   null: false
    t.integer "Cod_Empleado",   limit: 4,   null: false
    t.integer "Orden",          limit: 2,   null: false
    t.varchar "Objetivo",       limit: 255, null: false
    t.varchar "Meta",           limit: 255, null: false
    t.float   "Cumplimiento",               null: false
    t.float   "Peso",                       null: false
    t.float   "Valor",                      null: false
    t.float   "PesoValor",                  null: false
    t.float   "ValorMeta"
    t.varchar "Observacion",    limit: 255, null: false
    t.integer "SecuenEvalObj",  limit: 4
  end

  create_table "Evaluaciones_RegRecom", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer "Cod_Asignacion",    limit: 4, null: false
    t.integer "Cod_Empleado",      limit: 4, null: false
    t.integer "Cod_Factor",        limit: 4, null: false
    t.integer "Accion",            limit: 2
    t.integer "Avance",            limit: 2
    t.integer "Orden",             limit: 2
    t.integer "SecuenEvalRecom",   limit: 4
    t.float   "ObservacionRecom"
    t.integer "TiempoLogroAccion", limit: 4
  end

  create_table "Evaluaciones_SolicModEval", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "CodCompania",       limit: 4,                            null: false
    t.integer  "Codigo_Empleado",   limit: 4,                            null: false
    t.integer  "CodAsignacionEval", limit: 4,                            null: false
    t.datetime "Fecha",                                                  null: false
    t.varchar  "Comentarios",       limit: 500,                          null: false
    t.decimal  "ResultActComp",                 precision: 18, scale: 2, null: false
    t.decimal  "ResultActObj",                  precision: 18, scale: 2, null: false
    t.integer  "CodUsuario",        limit: 4,                            null: false
  end

  add_index "Evaluaciones_SolicModEval", ["CodAsignacionEval"], name: "IX_Evaluaciones_SolicModEval"

  create_table "Evaluaciones_TipoEvaluados", id: false, force: :cascade do |t|
    t.char    "Tipo",          limit: 1,  null: false
    t.integer "Codigo",        limit: 1,  null: false
    t.varchar "Descripcion",   limit: 50, null: false
    t.integer "Evaluador",     limit: 1
    t.integer "Evaluado",      limit: 1
    t.integer "Reclutamiento", limit: 1
    t.integer "Empleados",     limit: 1
  end

  create_table "Exclusiones_Seguro", id: false, force: :cascade do |t|
    t.integer  "Codigo_Seguro",      limit: 4,                                        null: false
    t.integer  "Codigo_Dependiente", limit: 4,                                        null: false
    t.datetime "Fecha_Inclucion"
    t.datetime "Fecha_Exclucion"
    t.varchar  "Tarifa",             limit: 1,                                        null: false
    t.varchar  "Estatus",            limit: 1,                                        null: false
    t.money    "Deduccion",                    precision: 19, scale: 4
    t.money    "Deduccion_Comp",               precision: 19, scale: 4, default: 0.0
    t.integer  "Orden",              limit: 1
  end

  create_table "Fecha_Actual", id: false, force: :cascade do |t|
    t.datetime "Fecha"
  end

  create_table "Fecha_Vacaciones_Empleados", id: false, force: :cascade do |t|
    t.integer  "Codigo_Vacaciones", limit: 4, null: false
    t.datetime "Fecha_Desde",                 null: false
    t.datetime "Fecha_Hasta",                 null: false
    t.float    "Dias"
    t.float    "Dias_Pendientes"
  end

  create_table "Fecha_Vacaciones_Empleados_Personal", id: false, force: :cascade do |t|
    t.integer  "Codigo_Vacaciones", limit: 4, null: false
    t.datetime "Fecha_Desde",                 null: false
    t.datetime "Fecha_Hasta",                 null: false
    t.float    "Dias"
    t.float    "Dias_Pendientes"
    t.integer  "Disfrutadas",       limit: 1
    t.integer  "SecFechaVac",       limit: 4
    t.integer  "CodAccion",         limit: 4
  end

  create_table "Fecha_Vacaciones_Empleados_Temp", id: false, force: :cascade do |t|
    t.integer  "Codigo_Vacaciones", limit: 4, null: false
    t.datetime "Fecha_Desde",                 null: false
    t.datetime "Fecha_Hasta",                 null: false
    t.float    "Dias"
    t.float    "Dias_Pendientes"
  end

  create_table "Form_DGT3_tmp", id: false, force: :cascade do |t|
    t.integer  "No_Linea",     limit: 4
    t.integer  "Cod_Compania", limit: 4
    t.varchar  "Nombre_Ape",   limit: 60
    t.varchar  "Cedula",       limit: 13
    t.datetime "Fec_Nac"
    t.varchar  "Sexo",         limit: 1,                            null: false
    t.varchar  "Nacionalidad", limit: 50,                           null: false
    t.datetime "Fec_Ing",                                           null: false
    t.varchar  "Ocupacion",    limit: 100
    t.money    "Sal_Mensual",              precision: 19, scale: 4
    t.varchar  "Tipo_Sal",     limit: 3,                            null: false
    t.integer  "Turno",        limit: 4
    t.varchar  "Vac_Ini",      limit: 10
    t.varchar  "Vac_Fin",      limit: 10
    t.integer  "Numero_Emp",   limit: 4
    t.integer  "No_Pagina",    limit: 4
    t.varchar  "Ano_Mes",      limit: 50
    t.varchar  "No_IDSS",      limit: 15
  end

  create_table "Form_DTG4_tmp", id: false, force: :cascade do |t|
    t.integer "No_Linea",     limit: 4
    t.integer "Cod_Compania", limit: 4
    t.varchar "Nombres",      limit: 60
    t.varchar "Apellidos",    limit: 35
    t.varchar "Cedula",       limit: 13
    t.varchar "Sexo",         limit: 1
    t.varchar "Nacionalidad", limit: 50
    t.varchar "Dia_Cambio",   limit: 10
    t.varchar "Ocupacion",    limit: 50
    t.varchar "Entrada",      limit: 1
    t.money   "Sal_Ent",                 precision: 19, scale: 4
    t.varchar "Tipo_SalEnt",  limit: 3
    t.varchar "Salida",       limit: 1
    t.money   "Sal_Salida",              precision: 19, scale: 4
    t.varchar "Tipo_SalSal",  limit: 10
    t.varchar "Sueldo",       limit: 1
    t.money   "Sal_Mensual",             precision: 19, scale: 4
    t.varchar "Tipo_SalMen",  limit: 3
    t.integer "Turno",        limit: 4
    t.integer "Numero_Emp",   limit: 4
    t.integer "No_Hijos",     limit: 4
    t.varchar "Est_Civil",    limit: 15
    t.varchar "NO_SS",        limit: 15
    t.integer "No_Pagina",    limit: 4
    t.varchar "Ano_Mes",      limit: 50
  end

  create_table "Form_DTG5_tmp", id: false, force: :cascade do |t|
    t.integer  "No_Linea",     limit: 4,                           null: false
    t.integer  "Cod_Compania", limit: 4,                           null: false
    t.varchar  "Nombres",      limit: 60,                          null: false
    t.varchar  "Cedula",       limit: 13,                          null: false
    t.datetime "Fecha_Nac",                                        null: false
    t.varchar  "NO_SS",        limit: 15,                          null: false
    t.varchar  "Sexo",         limit: 1,                           null: false
    t.varchar  "Nacionalidad", limit: 50,                          null: false
    t.varchar  "Ocupacion",    limit: 50,                          null: false
    t.datetime "Entrada",                                          null: false
    t.integer  "Turno",        limit: 4,                           null: false
    t.integer  "Dias_Trab",    limit: 1,                           null: false
    t.money    "Salario",                 precision: 19, scale: 4, null: false
    t.integer  "No_Pagina",    limit: 4,                           null: false
    t.integer  "Cod_Empleado", limit: 4
    t.integer  "Ano",          limit: 4
    t.integer  "Mes",          limit: 1
  end

  create_table "Form_T60", id: false, force: :cascade do |t|
    t.integer  "No_Linea",        limit: 4
    t.integer  "Cod_Compania",    limit: 4
    t.datetime "Fec_Nac"
    t.varchar  "No_Afiliado",     limit: 15
    t.varchar  "Apellidos",       limit: 30,                           null: false
    t.varchar  "Nombres",         limit: 30,                           null: false
    t.varchar  "Cedula",          limit: 15
    t.varchar  "Sexo",            limit: 1,                            null: false
    t.varchar  "Ocupacion",       limit: 100,                          null: false
    t.money    "Sal_Nominal",                 precision: 19, scale: 4, null: false
    t.varchar  "TipoSal",         limit: 5,                            null: false
    t.money    "Otros_Ing",                   precision: 19, scale: 4, null: false
    t.money    "Sal_Percibido",               precision: 19, scale: 4, null: false
    t.money    "Sal_SujCont",                 precision: 19, scale: 4, null: false
    t.money    "Sal_PromSem",                 precision: 19, scale: 4, null: false
    t.integer  "SemTrab",         limit: 2,                            null: false
    t.varchar  "Fec_Ent",         limit: 10,                           null: false
    t.varchar  "Fec_Sal",         limit: 10,                           null: false
    t.integer  "Camb_Sal",        limit: 1,                            null: false
    t.varchar  "Per_NoTrab_Des",  limit: 10,                           null: false
    t.varchar  "Per_NoTrab_Has",  limit: 10,                           null: false
    t.varchar  "Razon_PerNoTrab", limit: 1,                            null: false
    t.varchar  "Ano_Mes",         limit: 50,                           null: false
    t.integer  "No_Pagina",       limit: 2
  end

  create_table "FotoImpresionCurr", id: false, force: :cascade do |t|
    t.integer "NoSolicitud", limit: 4,    null: false
    t.string  "Foto",        limit: 4000
  end

  create_table "Generador_Alias_Tablas", id: false, force: :cascade do |t|
    t.varchar "Nombre_Tabla", limit: 100, null: false
    t.varchar "Alias",        limit: 100, null: false
  end

  create_table "Generador_Reportes", id: false, force: :cascade do |t|
    t.varchar "Nombre_Reporte",     limit: 100, null: false
    t.varchar "Tabla",              limit: 100, null: false
    t.varchar "Campo_Grupo",        limit: 100
    t.varchar "Campo_SubGrupo",     limit: 100
    t.integer "Incluir_Totales",    limit: 1
    t.integer "Incluir_SubTotales", limit: 1
    t.varchar "Usuario",            limit: 50
  end

  create_table "Generador_Reportes_Campos", id: false, force: :cascade do |t|
    t.varchar "Nombre_Reporte", limit: 100, null: false
    t.varchar "Nombre_Campo",   limit: 100, null: false
  end

  create_table "Generador_Reportes_Orden", id: false, force: :cascade do |t|
    t.varchar "Nombre_Reporte", limit: 100, null: false
    t.varchar "Nombre_Campo",   limit: 100, null: false
  end

  create_table "Generador_Reportes_Seleccion", id: false, force: :cascade do |t|
    t.varchar "Nombre_Reporte",  limit: 100, null: false
    t.varchar "Campo_Seleccion", limit: 100, null: false
    t.varchar "Operador",        limit: 50,  null: false
    t.varchar "Criterio",        limit: 50,  null: false
  end

  create_table "Generador_Tablas", primary_key: "Nombre_Tabla", force: :cascade do |t|
    t.varchar "Nombre_Campo",      limit: 100, null: false
    t.varchar "Alias_Campo",       limit: 100
    t.varchar "Descripcion",       limit: 100
    t.integer "Orden",             limit: 2
    t.varchar "Tipo_Campo",        limit: 100
    t.integer "Longitud_Campo",    limit: 1
    t.varchar "Tabla_Relacionada", limit: 100
    t.varchar "Campo_Relacionado", limit: 100
    t.varchar "Campo_Referencia",  limit: 100
    t.integer "Campo_Validado",    limit: 1
    t.varchar "Nombre_Reporteg",   limit: 100
  end

  create_table "Generador_Tablas2", id: false, force: :cascade do |t|
    t.varchar "Nombre_Tabla",      limit: 100, null: false
    t.varchar "Nombre_Campo",      limit: 100, null: false
    t.varchar "Alias_Campo",       limit: 100
    t.varchar "Descripcion",       limit: 100
    t.integer "Orden",             limit: 2
    t.varchar "Tipo_Campo",        limit: 100
    t.integer "Longitud_Campo",    limit: 1
    t.varchar "Tabla_Relacionada", limit: 100
    t.varchar "Campo_Relacionado", limit: 100
    t.varchar "Campo_Referencia",  limit: 100
    t.integer "Campo_Validado",    limit: 1
  end

  create_table "Generador_Tablas_Rel", id: false, force: :cascade do |t|
    t.varchar "Nombre_Tabla",      limit: 100, null: false
    t.varchar "Nombre_Campo",      limit: 100, null: false
    t.varchar "Campo_Desplegar",   limit: 100, null: false
    t.varchar "Campo_Referencia",  limit: 100
    t.varchar "Tipo_Campo",        limit: 30,  null: false
    t.integer "Longitud_Campo",    limit: 1
    t.integer "Orden",             limit: 1
    t.varchar "Tabla_Descripcion", limit: 100
    t.varchar "Campo_Codigo",      limit: 100
    t.varchar "Campo_Descripcion", limit: 100
  end

  create_table "Generador_Validacion_Campos", id: false, force: :cascade do |t|
    t.varchar "Nombre_Tabla",           limit: 100, null: false
    t.varchar "Nombre_Campo",           limit: 100, null: false
    t.varchar "Valor_Campo",            limit: 50,  null: false
    t.varchar "Cadena_Correspondiente", limit: 100, null: false
  end

  create_table "Grados", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 80, default: "NA", null: false
  end

  create_table "Grados_Academicos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",  limit: 50, null: false
    t.integer "OrdenGrado",   limit: 2
    t.integer "Cod_Compania", limit: 4
  end

  create_table "GridAnchoColumnas", id: false, force: :cascade do |t|
    t.varchar "Pantalla",     limit: 60
    t.varchar "Grid",         limit: 60
    t.varchar "Columna",      limit: 60
    t.varchar "AnchoColumna", limit: 15
  end

  create_table "Grupos_Companias", primary_key: "Codigo", force: :cascade do |t|
    t.varchar  "Descripcion", limit: 100, null: false
    t.datetime "FechaReg",                null: false
    t.integer  "CodUsuario",  limit: 4,   null: false
  end

  create_table "Grupos_Descuentos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 50, null: false
  end

  create_table "Grupos_Empleados", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Nomina_Grupo", limit: 4,   null: false
    t.varchar "Descripcion",  limit: 100, null: false
    t.integer "Compania",     limit: 4,   null: false
    t.integer "OrdenGrupo",   limit: 2
  end

  create_table "Habilidades", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",           limit: 50,   null: false
    t.varchar "Descripcion_Detallada", limit: 1000, null: false
    t.integer "Cod_ClasifComp",        limit: 4
    t.integer "hCodCompania",          limit: 4
    t.char    "AplicarA",              limit: 1
  end

  create_table "Habilidades_AccionEval", primary_key: "Cod_Habilidad", force: :cascade do |t|
    t.integer "Cod_Accion",  limit: 4,                           null: false
    t.nchar   "Orden",       limit: 10,                          null: false
    t.decimal "GradoInicio",            precision: 12, scale: 2, null: false
    t.decimal "GradoFin",               precision: 12, scale: 2, null: false
    t.integer "Cod_Cargo",   limit: 4
  end

  create_table "Habilidades_GradoDesem", primary_key: "Cod_Habilidad", force: :cascade do |t|
    t.char    "Tipo",      limit: 1,                          null: false
    t.integer "Cod_Cargo", limit: 4,                          null: false
    t.decimal "Grado_Req",           precision: 18, scale: 2, null: false
  end

  create_table "Habilidades_Posiciones_Clasificacion", primary_key: "Codigo_Cargo", force: :cascade do |t|
    t.integer "Numero_Compania",      limit: 4, null: false
    t.integer "Codigo_Habilidad",     limit: 4, null: false
    t.integer "Codigo_Nivel",         limit: 4, null: false
    t.integer "Codigo_Clasificacion", limit: 4, null: false
    t.integer "Codigo_Posicion",      limit: 4, null: false
  end

  add_index "Habilidades_Posiciones_Clasificacion", ["Numero_Compania", "Codigo_Nivel", "Codigo_Clasificacion", "Codigo_Posicion", "Codigo_Habilidad"], name: "Personal_Nomina_AltCumb_dbo_Habilidades_Posiciones_Clasificacion idx_Habilidades_Pos", unique: true

  create_table "Historico_Horas_Calendario", id: false, force: :cascade do |t|
    t.integer "Codigo_Empleado", limit: 4
    t.integer "Tipo_Hora",       limit: 4,                          null: false
    t.integer "Escuela",         limit: 4
    t.integer "Horario",         limit: 4,                          null: false
    t.real    "Lunes"
    t.real    "Martes"
    t.real    "Miercoles"
    t.real    "Jueves"
    t.real    "Viernes"
    t.real    "Sabado"
    t.money   "Valor",                     precision: 19, scale: 4
    t.integer "Codigo_Nomina",   limit: 4
  end

  create_table "Hoja", id: false, force: :cascade do |t|
    t.string "Numero", limit: 255
    t.string "F2",     limit: 255
    t.string "F3",     limit: 255
    t.string "F4",     limit: 255
  end

  create_table "Horarios", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Codigo_Escuela", limit: 4
    t.varchar "Descripcion",    limit: 50
    t.integer "Dias",           limit: 1
    t.real    "Horas"
    t.integer "Lunes",          limit: 1
    t.integer "Martes",         limit: 1
    t.integer "Miercoles",      limit: 1
    t.integer "Jueves",         limit: 1
    t.integer "Viernes",        limit: 1
    t.integer "Sabado",         limit: 1
    t.integer "Domingo",        limit: 1
    t.integer "Semanal",        limit: 1
  end

  create_table "HorasTrab_FechaImpRutas", id: false, force: :cascade do |t|
    t.datetime "Fecha"
    t.integer  "CodSucursal", limit: 4
  end

  create_table "HorasTrab_FechasWeb", primary_key: "Codigo", force: :cascade do |t|
    t.datetime "FechaInic",             null: false
    t.datetime "FechaFin",              null: false
    t.integer  "CodSucursal", limit: 4, null: false
    t.char     "Estatus",     limit: 1, null: false
    t.integer  "CodCompania", limit: 4, null: false
  end

  create_table "Horas_Autorizaciones", primary_key: "CodCompania", force: :cascade do |t|
    t.integer  "Codigo",         limit: 4,                          null: false
    t.integer  "CodEmpleado",    limit: 4,                          null: false
    t.datetime "Fecha",                                             null: false
    t.datetime "FechaReg",                                          null: false
    t.decimal  "HorasMaxDia",              precision: 12, scale: 2, null: false
    t.decimal  "HorasAutorizar",           precision: 12, scale: 2, null: false
    t.integer  "CodUsuario",     limit: 4,                          null: false
    t.integer  "CodLocalidad",   limit: 4,                          null: false
  end

  add_index "Horas_Autorizaciones", ["CodCompania", "CodEmpleado"], name: "IX_Horas_Autorizaciones"

  create_table "Horas_Calendario", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Codigo_Empleado", limit: 4
    t.integer "Tipo_Hora",       limit: 4,                          null: false
    t.integer "Escuela",         limit: 4
    t.integer "Horario",         limit: 4,                          null: false
    t.real    "Lunes"
    t.real    "Martes"
    t.real    "Miercoles"
    t.real    "Jueves"
    t.real    "Viernes"
    t.real    "Sabado"
    t.money   "Valor",                     precision: 19, scale: 4
  end

  create_table "Horas_FacturasSAP", primary_key: "CodLocalidad", force: :cascade do |t|
    t.varchar  "CodCteSAP",        limit: 10,                          null: false
    t.varchar  "CodPuestoSAP",     limit: 15
    t.integer  "CodZona",          limit: 4,                           null: false
    t.integer  "CodSucursal",      limit: 4,                           null: false
    t.integer  "CodCompania",      limit: 4
    t.datetime "FechaInic",                                            null: false
    t.datetime "FechaFin",                                             null: false
    t.integer  "AnoNomina",        limit: 4
    t.integer  "MesNomina",        limit: 4
    t.integer  "PeriodoNomina",    limit: 4
    t.decimal  "CantHorasFactSAP",            precision: 12, scale: 2
    t.decimal  "CantHorasContSAP",            precision: 12, scale: 2
    t.decimal  "CantHorasMercury",            precision: 12, scale: 2
    t.decimal  "CantHorasFer",                precision: 12, scale: 2
  end

  create_table "Horas_Importar", id: false, force: :cascade do |t|
    t.integer  "him_CodCompania",    limit: 4
    t.integer  "Cod_Empleado",       limit: 4
    t.real     "Lunes"
    t.real     "Martes"
    t.real     "Miercoles"
    t.real     "Jueves"
    t.real     "Viernes"
    t.real     "Sabado"
    t.real     "Domingo"
    t.float    "Cant_Horas"
    t.datetime "Fec_Labor"
    t.integer  "TipoHora",           limit: 4
    t.varchar  "Dia",                limit: 50
    t.datetime "FecHoraEntrada"
    t.datetime "FecHoraSalida"
    t.integer  "Codigo_PoliticaDia", limit: 4
    t.varchar  "Comentario",         limit: 255
    t.float    "HorasDescLaboradas"
  end

  create_table "Horas_ImportarWeb", primary_key: "CodCompania", force: :cascade do |t|
    t.integer  "Codigo",             limit: 4,   null: false
    t.integer  "Cod_Empleado",       limit: 4,   null: false
    t.datetime "FechaReg",                       null: false
    t.float    "Cant_Horas",                     null: false
    t.integer  "TipoHora",           limit: 4,   null: false
    t.datetime "FecHoraEntrada",                 null: false
    t.datetime "FecHoraSalida",                  null: false
    t.integer  "Codigo_PoliticaDia", limit: 4,   null: false
    t.integer  "CodUsuario",         limit: 4,   null: false
    t.integer  "CodLocalidad",       limit: 4,   null: false
    t.varchar  "Comentario",         limit: 255
    t.integer  "BloquearMod",        limit: 1
  end

  add_index "Horas_ImportarWeb", ["CodCompania", "Cod_Empleado"], name: "IX_Horas_ImportarWeb"

  create_table "Horas_TrabActividades", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",  limit: 100, null: false
    t.varchar "Alias",        limit: 10
    t.varchar "Cod_Proyecto", limit: 15
  end

  create_table "Horas_TrabAreasLocalid", primary_key: "Codigo", force: :cascade do |t|
    t.integer "CodCompania", limit: 4,   null: false
    t.varchar "Alias",       limit: 15,  null: false
    t.integer "CodCliente",  limit: 4,   null: false
    t.varchar "Descripcion", limit: 100, null: false
    t.char    "Estatus",     limit: 1,   null: false
    t.varchar "Ubicacion",   limit: 100
  end

  create_table "Horas_TrabCompanias", id: false, force: :cascade do |t|
    t.integer "Codigo",      limit: 4,   null: false
    t.varchar "Descripcion", limit: 100, null: false
    t.float   "Horas"
  end

  create_table "Horas_TrabDiarias", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "htb_CodCompania",    limit: 4
    t.integer  "Cod_Empleado",       limit: 4
    t.datetime "Fecha_Desde",                                             null: false
    t.varchar  "Hora_Desde",         limit: 12,                           null: false
    t.datetime "Fecha_Hasta",                                             null: false
    t.varchar  "Hora_Hasta",         limit: 12
    t.datetime "Hora_Registro",                                           null: false
    t.money    "Salario_Hora",                   precision: 19, scale: 4
    t.varchar  "Observacion",        limit: 200
    t.integer  "Cod_Usuario",        limit: 4,                            null: false
    t.varchar  "Localidad",          limit: 100
    t.integer  "FijarHorasD",        limit: 1
    t.integer  "Horario_Corrido",    limit: 1
    t.integer  "Codigo_PoliticaDia", limit: 4
    t.integer  "CodLocalidad",       limit: 4
    t.integer  "HorasDiaFeriado",    limit: 1
    t.integer  "CodLote",            limit: 4
    t.varchar  "hdMoneda",           limit: 5
  end

  add_index "Horas_TrabDiarias", ["htb_CodCompania", "Cod_Empleado"], name: "IX_Horas_TrabDiarias"

  create_table "Horas_TrabDiariasDet", id: false, force: :cascade do |t|
    t.integer "Cod_RegHora",     limit: 4,                           null: false
    t.integer "htd_CodCompania", limit: 4
    t.integer "Cod_Empleado",    limit: 4,                           null: false
    t.integer "Tipo_Hora",       limit: 4,                           null: false
    t.integer "Codigo_Nomina",   limit: 4,                           null: false
    t.integer "Periodo_Pago",    limit: 4,                           null: false
    t.float   "Cantidad"
    t.money   "Valor_Unitario",             precision: 19, scale: 4
    t.money   "Valor",                      precision: 19, scale: 4
    t.integer "Ano",             limit: 4
    t.integer "Mes",             limit: 1
    t.varchar "Cod_ActividadD",  limit: 10
    t.varchar "Cod_LocalidadD",  limit: 10
  end

  add_index "Horas_TrabDiariasDet", ["htd_CodCompania", "Cod_Empleado"], name: "IX_Horas_TrabDiariasDet"

  create_table "Horas_TrabDiariasDistProy", primary_key: "htd_CodCompania", force: :cascade do |t|
    t.integer "Cod_RegHora",    limit: 4,                           null: false
    t.integer "Orden",          limit: 2,                           null: false
    t.integer "Tipo_Hora",      limit: 4,                           null: false
    t.float   "Cantidad"
    t.money   "Valor_Unitario",            precision: 19, scale: 4
    t.varchar "Cod_ActividadD", limit: 10
    t.varchar "Cod_LocalidadD", limit: 10
  end

  create_table "Horas_TrabEncabRepHoras", id: false, force: :cascade do |t|
    t.integer "CodCompania", limit: 4,  null: false
    t.integer "Secuencia",   limit: 4,  null: false
    t.integer "CodUsuario",  limit: 4,  null: false
    t.varchar "Encab1",      limit: 20, null: false
    t.varchar "Encab2",      limit: 20, null: false
    t.varchar "Encab3",      limit: 20, null: false
    t.varchar "Encab4",      limit: 20, null: false
    t.varchar "Encab5",      limit: 20, null: false
    t.varchar "Encab6",      limit: 20, null: false
    t.varchar "Encab7",      limit: 20, null: false
    t.varchar "Encab8",      limit: 20, null: false
    t.varchar "Encab9",      limit: 20, null: false
    t.varchar "Encab10",     limit: 20, null: false
    t.varchar "Encab11",     limit: 20, null: false
    t.varchar "Encab12",     limit: 20, null: false
    t.varchar "Encab13",     limit: 20, null: false
    t.varchar "Encab14",     limit: 20, null: false
    t.varchar "Encab15",     limit: 20, null: false
    t.varchar "Encab16",     limit: 20, null: false
  end

  create_table "Horas_TrabLabels", id: false, force: :cascade do |t|
    t.varchar "LabelLocalidad", limit: 100, null: false
    t.varchar "LabelActividad", limit: 100, null: false
  end

  create_table "Horas_TrabLocalidEmp", primary_key: "Codigo", force: :cascade do |t|
    t.integer "CodCompania",  limit: 4,                           null: false
    t.integer "CodLocalidad", limit: 4,                           null: false
    t.integer "CodEmpleado",  limit: 4,                           null: false
    t.integer "DiaSemana",    limit: 1,                           null: false
    t.varchar "HoraInicio",   limit: 12,                          null: false
    t.varchar "HoraFin",      limit: 12,                          null: false
    t.decimal "CantHoras",               precision: 10, scale: 2, null: false
    t.integer "CodUsuario",   limit: 4,                           null: false
  end

  create_table "Horas_TrabLocalidades", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Cod_CompLabor",  limit: 4
    t.varchar  "Descripcion",    limit: 100,                          null: false
    t.float    "Horas"
    t.integer  "Dias_Mes",       limit: 2
    t.varchar  "Alias",          limit: 20
    t.integer  "Cod_Sucursal",   limit: 4
    t.integer  "CodZona",        limit: 4
    t.integer  "CodCompania",    limit: 4
    t.decimal  "HorasLun",                   precision: 12, scale: 2
    t.decimal  "HorasMar",                   precision: 12, scale: 2
    t.decimal  "HorasMie",                   precision: 12, scale: 2
    t.decimal  "HorasJue",                   precision: 12, scale: 2
    t.decimal  "HorasVie",                   precision: 12, scale: 2
    t.decimal  "HorasSab",                   precision: 12, scale: 2
    t.decimal  "HorasDom",                   precision: 12, scale: 2
    t.decimal  "ValIncentHora",              precision: 12, scale: 2
    t.decimal  "ValAlmuerzoDia",             precision: 12, scale: 2
    t.decimal  "HorasFer",                   precision: 12, scale: 2
    t.char     "EstatusLoc",     limit: 1
    t.datetime "FecInicio"
    t.datetime "FecFin"
    t.integer  "CodAreaLoc",     limit: 4
    t.integer  "FijarPuesto",    limit: 1
  end

  create_table "Horas_TrabRepHorasDiariasWeb", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "CodCompania",  limit: 4,                          null: false
    t.integer  "CodEmpleado",  limit: 4,                          null: false
    t.integer  "CodCliente",   limit: 4,                          null: false
    t.integer  "CodLocalidad", limit: 4,                          null: false
    t.integer  "CodUsuario",   limit: 4,                          null: false
    t.datetime "FecDesde",                                        null: false
    t.datetime "FecHasta",                                        null: false
    t.decimal  "CantHoras1",             precision: 18, scale: 2, null: false
    t.decimal  "CantHoras2",             precision: 18, scale: 2, null: false
    t.decimal  "CantHoras3",             precision: 18, scale: 2, null: false
    t.decimal  "CantHoras4",             precision: 18, scale: 2, null: false
    t.decimal  "CantHoras5",             precision: 18, scale: 2, null: false
    t.decimal  "CantHoras6",             precision: 18, scale: 2, null: false
    t.decimal  "CantHoras7",             precision: 18, scale: 2, null: false
    t.decimal  "CantHoras8",             precision: 18, scale: 2, null: false
    t.decimal  "CantHoras9",             precision: 18, scale: 2, null: false
    t.decimal  "CantHoras10",            precision: 18, scale: 2, null: false
    t.decimal  "CantHoras11",            precision: 18, scale: 2, null: false
    t.decimal  "CantHoras12",            precision: 18, scale: 2, null: false
    t.decimal  "CantHoras13",            precision: 18, scale: 2, null: false
    t.decimal  "CantHoras14",            precision: 18, scale: 2, null: false
    t.decimal  "CantHoras15",            precision: 18, scale: 2, null: false
    t.decimal  "CantHoras16",            precision: 18, scale: 2, null: false
  end

  create_table "Horas_Trabajadas", primary_key: "Codigo", force: :cascade do |t|
    t.integer "ht_CodCompania",  limit: 4
    t.integer "Codigo_Empleado", limit: 4,                           null: false
    t.integer "Tipo_Hora",       limit: 4,                           null: false
    t.integer "Codigo_Nomina",   limit: 4,                           null: false
    t.integer "Periodo_Pago",    limit: 4,                           null: false
    t.float   "Cantidad"
    t.money   "Valor_Unitario",             precision: 19, scale: 4
    t.money   "Valor",                      precision: 19, scale: 4
    t.varchar "Usuario",         limit: 30,                          null: false
    t.integer "FijarHoras",      limit: 1
    t.varchar "Cod_LocalidadH",  limit: 10
    t.varchar "Cod_ActividadH",  limit: 10
  end

  create_table "Horas_Trabajadas_Nomina", primary_key: "Codigo_nomina", force: :cascade do |t|
    t.integer "id",              limit: 4,                           null: false
    t.integer "htn_CodCompania", limit: 4,                           null: false
    t.integer "Codigo_empleado", limit: 4,                           null: false
    t.integer "Tipo_Hora",       limit: 4,                           null: false
    t.money   "Valor",                      precision: 19, scale: 4, null: false
    t.float   "Cantidad",                                            null: false
    t.integer "Codigo_Hora",     limit: 4
    t.varchar "Cod_ActividadN",  limit: 10
    t.varchar "Cod_LocalidadN",  limit: 10
    t.varchar "htMoneda",        limit: 5
  end

  add_index "Horas_Trabajadas_Nomina", ["htn_CodCompania", "Codigo_nomina", "Codigo_empleado"], name: "Personal_Nomina_AltCumb_dbo_Horas_Trabajadas_Nomina Codigo_empleado"

  create_table "Horas_Trabajadas_Nomina_Temp", primary_key: "Codigo_nomina", force: :cascade do |t|
    t.integer "id",              limit: 4,                           null: false
    t.integer "htn_CodCompania", limit: 4
    t.integer "Codigo_empleado", limit: 4
    t.integer "Tipo_Hora",       limit: 4
    t.money   "Valor",                      precision: 19, scale: 4
    t.float   "Cantidad"
    t.integer "Codigo_Hora",     limit: 4
    t.varchar "Cod_ActividadT",  limit: 10
    t.varchar "Cod_LocalidadT",  limit: 10
    t.varchar "htMoneda",        limit: 5
  end

  add_index "Horas_Trabajadas_Nomina_Temp", ["htn_CodCompania", "Codigo_empleado"], name: "IX_Horas_Trabajadas_Nomina_Temp"

  create_table "Horas_Zonas", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "Codigo",        limit: 4,   null: false
    t.varchar "Descripcion",   limit: 100, null: false
    t.char    "Estatus",       limit: 1,   null: false
    t.integer "CodSucursal",   limit: 4
    t.varchar "AliasZona",     limit: 20
    t.integer "CodSupervisor", limit: 4
  end

  create_table "ISR", force: :cascade do |t|
    t.integer "Ano",               limit: 4,                          null: false
    t.money   "Limite_inferior",             precision: 19, scale: 4
    t.money   "Limite_superior",             precision: 19, scale: 4, null: false
    t.money   "Deduccion",                   precision: 19, scale: 4
    t.float   "Tasa_excedente",                                       null: false
    t.integer "Periodo_descuento", limit: 1
  end

  create_table "ISR_SS_Modificados", primary_key: "Codigo_Empleado", force: :cascade do |t|
    t.integer "ism_CodCompania", limit: 4
    t.integer "Tipo_Nomina",     limit: 4,                          null: false
    t.integer "Mes_Nomina",      limit: 1
    t.money   "Valor_ISR",                 precision: 19, scale: 4
    t.money   "Valor_SS",                  precision: 19, scale: 4
  end

  create_table "Idiomas", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 30, null: false
  end

  add_index "Idiomas", ["Descripcion"], name: "IX_Idiomas", unique: true

  create_table "Ingresos_Importar", id: false, force: :cascade do |t|
    t.datetime "fec_labor"
    t.integer  "iim_CodCompania", limit: 4
    t.varchar  "cod_empleado",    limit: 255
    t.money    "val_incentivo",               precision: 19, scale: 4
    t.integer  "Tipo_Ing",        limit: 4
    t.varchar  "CedulaEmp",       limit: 15
  end

  create_table "Ingresos_Nomina_Empleados", primary_key: "Codigo_nomina", force: :cascade do |t|
    t.integer "id",              limit: 4,                          null: false
    t.integer "ine_CodCompania", limit: 4,                          null: false
    t.integer "Codigo_Empleado", limit: 4,                          null: false
    t.integer "Tipo_ingreso",    limit: 4,                          null: false
    t.integer "Codigo_ingreso",  limit: 4
    t.money   "Valor",                     precision: 19, scale: 4, null: false
    t.float   "Cantidad"
    t.varchar "inMoneda",        limit: 5
  end

  add_index "Ingresos_Nomina_Empleados", ["ine_CodCompania", "Codigo_nomina", "Codigo_Empleado"], name: "IX_Ingresos_Nomina_Empleados"

  create_table "Ingresos_Nomina_Empleados_Temp", primary_key: "Codigo_nomina", force: :cascade do |t|
    t.integer "id",              limit: 4,                          null: false
    t.integer "ine_CodCompania", limit: 4,                          null: false
    t.integer "Codigo_empleado", limit: 4
    t.integer "Tipo_ingreso",    limit: 4
    t.integer "Codigo_ingreso",  limit: 4
    t.money   "Valor",                     precision: 19, scale: 4
    t.float   "Cantidad"
    t.varchar "inMoneda",        limit: 5
  end

  add_index "Ingresos_Nomina_Empleados_Temp", ["ine_CodCompania", "Codigo_nomina", "Codigo_empleado"], name: "IX_Ingresos_Nomina_Empleados_Temp"

  create_table "Instituciones_Academicas", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 100, null: false
    t.varchar "Ubicacion",   limit: 200
    t.varchar "Alias",       limit: 10
  end

  add_index "Instituciones_Academicas", ["Descripcion"], name: "IX_Instituciones_Academicas", unique: true

  create_table "LenguaMaterna", id: false, force: :cascade do |t|
    t.float  "Codigo"
    t.string "Nombre", limit: 255
  end

  create_table "Ley_Seguridad_Empleados", primary_key: "Codigo", force: :cascade do |t|
    t.char     "TipoReg",       limit: 1,                           default: "D"
    t.varchar  "ClaveNom",      limit: 20
    t.char     "TipoDoc",       limit: 1
    t.varchar  "NumDoc",        limit: 15
    t.varchar  "Nombre",        limit: 50
    t.varchar  "Apellido1",     limit: 20
    t.varchar  "Apellido2",     limit: 20
    t.char     "Sexo",          limit: 1
    t.datetime "FechaNac"
    t.money    "Salarioss",                precision: 19, scale: 4
    t.money    "AporteVol",                precision: 19, scale: 4
    t.money    "SalarioISR",               precision: 19, scale: 4
    t.money    "OtrasREM",                 precision: 19, scale: 4
    t.varchar  "RNCAgenRET",    limit: 20
    t.money    "REMOtrosAgen",             precision: 19, scale: 4
    t.money    "IngExentos",               precision: 19, scale: 4
    t.money    "SaldoFav",                 precision: 19, scale: 4
    t.decimal  "CodEmpleado",              precision: 18, scale: 0
    t.integer  "AnoNomina",     limit: 4
    t.integer  "PeriodoNomina", limit: 4
    t.integer  "MesNomina",     limit: 4
    t.money    "ISR_Liquidado",            precision: 19, scale: 4
  end

  create_table "Liquidacion", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Cod_Compania",        limit: 4
    t.integer  "Codigo_Empleado",     limit: 4
    t.datetime "Fecha_Ingreso"
    t.datetime "Fecha_Salida"
    t.datetime "Fecha_Liquidacion"
    t.money    "Salario_Diario",                 precision: 19, scale: 4
    t.money    "Salario_Base",                   precision: 19, scale: 4
    t.integer  "Desactivar_Empleado", limit: 1
    t.integer  "Anos",                limit: 2
    t.integer  "Meses",               limit: 1
    t.integer  "Dias",                limit: 1
    t.integer  "Dias_Cesantia",       limit: 2
    t.integer  "Dias_Preaviso",       limit: 2
    t.integer  "Dias_Vacaciones",     limit: 2
    t.integer  "Dias_BVacaciones",    limit: 2
    t.integer  "Dias_Bonificacion",   limit: 2
    t.integer  "Meses_Regalia",       limit: 1
    t.integer  "Dias_SalPend",        limit: 2
    t.money    "Valor_Cesantia",                 precision: 19, scale: 4
    t.money    "Valor_Preaviso",                 precision: 19, scale: 4
    t.money    "Valor_Vacaciones",               precision: 19, scale: 4
    t.money    "Valor_BVacaciones",              precision: 19, scale: 4
    t.money    "Valor_Regalia",                  precision: 19, scale: 4
    t.money    "Valor_Bonificacion",             precision: 19, scale: 4
    t.money    "Valor_SalPend",                  precision: 19, scale: 4
    t.money    "Valor_OtrosIng",                 precision: 19, scale: 4
    t.money    "Valor_DeudasPend",               precision: 19, scale: 4
    t.money    "Valor_AFP",                      precision: 19, scale: 4
    t.money    "Valor_ISR",                      precision: 19, scale: 4
    t.money    "Neto_Pagado",                    precision: 19, scale: 4
    t.money    "Salario_DiarioPreav",            precision: 19, scale: 4
    t.money    "Salario_DiarioCes",              precision: 19, scale: 4
    t.money    "Salario_DiarioVac",              precision: 19, scale: 4
    t.money    "Salario_DiarioBVac",             precision: 19, scale: 4
    t.money    "TotIng_Regalia",                 precision: 19, scale: 4
    t.money    "Salario_DiarioBon",              precision: 19, scale: 4
    t.money    "IncluirBonSalBase",              precision: 19, scale: 4
    t.datetime "FecUltNom"
    t.varchar  "TipoSalida",          limit: 20
    t.varchar  "Usuario",             limit: 30
    t.money    "Valor_ARS",                      precision: 19, scale: 4
    t.money    "AFPSujeto",                      precision: 19, scale: 4
    t.money    "ARSSujeto",                      precision: 19, scale: 4
    t.money    "TotIngSujetoISR",                precision: 19, scale: 4
    t.money    "IngSalSujISR",                   precision: 19, scale: 4
    t.money    "IngOtrosSujISR",                 precision: 19, scale: 4
    t.datetime "FechaCalcISR"
    t.money    "IngresosExentosISR",             precision: 19, scale: 4
    t.money    "ISR_Compensado",                 precision: 19, scale: 4
  end

  add_index "Liquidacion", ["Cod_Compania", "Codigo_Empleado"], name: "IX_Liquidacion"

  create_table "Liquidacion_Firmas", id: false, force: :cascade do |t|
    t.integer "Numero_Compania",     limit: 4,   null: false
    t.varchar "CargoPreparadoPor",   limit: 100, null: false
    t.varchar "CargoRevisadoPor",    limit: 100, null: false
    t.varchar "CargoRecibidoPor",    limit: 100, null: false
    t.varchar "CargoAutorizadoPor1", limit: 100, null: false
    t.varchar "CargoAutorizadoPor2", limit: 100, null: false
  end

  create_table "Liquidacion_Ingresos", id: false, force: :cascade do |t|
    t.integer "Cod_Liquidacion", limit: 4,                          null: false
    t.integer "Cod_TipoIngreso", limit: 4,                          null: false
    t.money   "Valor_Ingreso",             precision: 19, scale: 4, null: false
  end

  create_table "Liquidacion_Temp", id: false, force: :cascade do |t|
    t.integer  "Codigo",                    limit: 4,                           null: false
    t.integer  "Codigo_Empleado",           limit: 4,                           null: false
    t.datetime "Fecha_Ingreso"
    t.datetime "Fecha_Salida"
    t.datetime "Fecha_Liquidacion"
    t.money    "Salario_Diario",                       precision: 19, scale: 4
    t.integer  "Desactivar_Empleado",       limit: 1
    t.integer  "Anos",                      limit: 2
    t.integer  "Meses",                     limit: 1
    t.integer  "Dias",                      limit: 1
    t.integer  "Dias_Cesantia",             limit: 2
    t.integer  "Dias_Preaviso",             limit: 2
    t.integer  "Dias_Vacaciones",           limit: 2
    t.integer  "Meses_Regalia",             limit: 1
    t.integer  "Meses_Bonificacion",        limit: 1
    t.money    "Valor_Cesantia",                       precision: 19, scale: 4
    t.money    "Valor_Preaviso",                       precision: 19, scale: 4
    t.money    "Valor_Vacaciones",                     precision: 19, scale: 4
    t.money    "Valor_Regalia",                        precision: 19, scale: 4
    t.money    "Valor_Bonificacion",                   precision: 19, scale: 4
    t.money    "Valor_Salario_Pendiente",              precision: 19, scale: 4
    t.money    "Valor_Deudas_Pendientes",              precision: 19, scale: 4
    t.money    "Neto_Pagado",                          precision: 19, scale: 4
    t.money    "Salario_Diario_Preaviso",              precision: 19, scale: 4
    t.money    "Salario_Diario_Cesantia",              precision: 19, scale: 4
    t.money    "Salario_Diario_Vacaciones",            precision: 19, scale: 4
    t.datetime "FecUlt_Vac"
    t.money    "IngUltAno",                            precision: 19, scale: 4
    t.money    "SalPromUltAno",                        precision: 19, scale: 4
    t.varchar  "Usuario",                   limit: 30
  end

  add_index "Liquidacion_Temp", ["Codigo_Empleado"], name: "Personal_Nomina_AltCumb_dbo_Liquidacion_Temp Codigo_Empleado"

  create_table "Maestra", id: false, force: :cascade do |t|
    t.string   "CODIGO",     limit: 255
    t.string   "CEDULA",     limit: 255
    t.string   "NSS",        limit: 255
    t.string   "NOMBRES",    limit: 255
    t.string   "APELLIDOS",  limit: 255
    t.datetime "FECHA_NACI"
    t.string   "FECHA_NTM9", limit: 255
    t.string   "ESTADO_CIV", limit: 255
    t.string   "SEXO",       limit: 255
    t.string   "POSICION",   limit: 255
    t.float    "SALARIO"
    t.string   "NOMINA",     limit: 255
    t.string   "AJUSTERO",   limit: 255
    t.string   "STATUS",     limit: 255
    t.string   "TIPO_EMPLE", limit: 255
    t.string   "NACIONALID", limit: 255
    t.string   "AFP",        limit: 255
    t.string   "ARS",        limit: 255
    t.string   "ARL",        limit: 255
    t.string   "TIPO_DOCUM", limit: 255
    t.string   "CALLE",      limit: 255
    t.string   "SECTOR",     limit: 255
    t.string   "CASANO",     limit: 255
    t.string   "TELEFONO",   limit: 255
    t.string   "CELULAR",    limit: 255
    t.datetime "FECHA_PROC"
    t.string   "FECHA_PTM9", limit: 255
    t.datetime "FECHA_CONT"
    t.string   "FECHA_CTM9", limit: 255
    t.datetime "FECHA_SALI"
    t.string   "FECHA_STM9", limit: 255
    t.string   "FECHA_SUSP", limit: 255
    t.string   "FECHA_2TM9", limit: 255
    t.string   "FECHA_REIN", limit: 255
    t.string   "FECHA_RTM9", limit: 255
    t.datetime "FECHA_RECO"
    t.string   "FECHA_3TM9", limit: 255
    t.string   "USUARIO",    limit: 255
    t.string   "CAUSA_SALI", limit: 255
    t.string   "DEPARTAMEN", limit: 255
    t.string   "ULTIMA_VAC", limit: 255
    t.float    "DIAS_PEND_"
    t.string   "COMPANIA",   limit: 255
    t.float    "TRANSID"
    t.string   "CC",         limit: 255
    t.string   "IDSS",       limit: 255
    t.string   "ULTIMO_ANA", limit: 255
    t.string   "ULTIMO_TM9", limit: 255
    t.string   "SUPERVISOR", limit: 255
    t.string   "NOMBRE1",    limit: 255
    t.string   "NOMBRE2",    limit: 255
    t.string   "APELLIDO1",  limit: 255
    t.string   "APELLIDO2",  limit: 255
    t.string   "FACTOR_RH",  limit: 255
    t.string   "CIUDAD",     limit: 255
    t.string   "EMAIL",      limit: 255
    t.string   "PROPINA",    limit: 255
    t.string   "FICHA",      limit: 255
    t.string   "FORMA_PAGO", limit: 255
    t.string   "CUENTA_BAN", limit: 255
    t.string   "CARNET_SEG", limit: 255
    t.string   "OBSERVACIO", limit: 255
    t.string   "PERTENENCI", limit: 255
    t.string   "CODIGO_REL", limit: 255
    t.float    "HORARIO"
    t.string   "STATUS_ARS", limit: 255
    t.datetime "FECHA_AFIL"
    t.string   "FECHA_ATM9", limit: 255
    t.string   "COMP_COMID", limit: 255
    t.float    "COMP_TRANS"
    t.string   "COMP_OTRA",  limit: 255
    t.string   "COMP_VEHIC", limit: 255
    t.string   "COMBUSTIBL", limit: 255
    t.string   "CONFIDENCI", limit: 255
    t.float    "ANOS_EMPLE"
    t.float    "MESES_EMPL"
    t.float    "DIAS_EMPLE"
    t.string   "STATUS_FOT", limit: 255
    t.string   "FORMACION_", limit: 255
    t.float    "MONTO_PRES"
    t.string   "CORTE_NOMI", limit: 255
    t.string   "REQUISICIO", limit: 255
    t.string   "FLAG_RECON", limit: 255
    t.string   "FLAG_SUSTI", limit: 255
    t.string   "FLAG_SUPER", limit: 255
    t.string   "TSS_ADICIO", limit: 255
    t.string   "ID_PONCHE",  limit: 255
    t.string   "COLOR_PASE", limit: 255
    t.float    "SEC_PASE"
    t.string   "PONCHA",     limit: 255
  end

  create_table "Motivos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 50, null: false
  end

  add_index "Motivos", ["Descripcion"], name: "IX_Motivos", unique: true

  create_table "MovimientosCuentasPeriodos", id: false, force: :cascade do |t|
    t.integer  "AnoNomina",     limit: 4,                           null: false
    t.integer  "MesNomina",     limit: 1
    t.integer  "CodSubGrupo",   limit: 4
    t.varchar  "Numero_Cuenta", limit: 20
    t.money    "ValPeriodo1",              precision: 19, scale: 4
    t.money    "ValPeriodo2",              precision: 19, scale: 4
    t.money    "ValPeriodo3",              precision: 19, scale: 4
    t.money    "ValPeriodo4",              precision: 19, scale: 4
    t.money    "ValPeriodo5",              precision: 19, scale: 4
    t.datetime "FecPeriodo1"
    t.datetime "FecPeriodo2"
    t.datetime "FecPeriodo3"
    t.datetime "FecPeriodo4"
    t.datetime "FecPeriodo5"
  end

  create_table "Municipios", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion_Municipio", limit: 50, null: false
    t.integer "Codigo_Provincia",      limit: 4,  null: false
  end

  add_index "Municipios", ["Codigo_Provincia", "Descripcion_Municipio"], name: "IX_Municipios", unique: true

  create_table "Nacionalidades", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",         limit: 50,  null: false
    t.integer "Nacionalidad_Local",  limit: 1
    t.varchar "Pais_Nacionalidad",   limit: 100
    t.integer "SET_CodNacionalidad", limit: 4
  end

  add_index "Nacionalidades", ["Descripcion"], name: "IX_Nacionalidades", unique: true

  create_table "Neto_Empleados_Nomina_Vieja", primary_key: "Tipo_Nomina", force: :cascade do |t|
    t.integer "Codigo_Empleado", limit: 4,                          null: false
    t.money   "Valor",                     precision: 19, scale: 4, null: false
  end

  create_table "Niveles", primary_key: "Codigo_Compania", force: :cascade do |t|
    t.integer "Codigo",      limit: 4,  null: false
    t.varchar "Descripcion", limit: 50, null: false
  end

  add_index "Niveles", ["Descripcion", "Codigo_Compania"], name: "IX_Niveles", unique: true

  create_table "Nomina_Anexos", primary_key: "Secuencia", force: :cascade do |t|
    t.integer "CodNomina",   limit: 4,   null: false
    t.integer "CodCompania", limit: 4,   null: false
    t.integer "CodEmpleado", limit: 4,   null: false
    t.varchar "TipoNota",    limit: 2,   null: false
    t.varchar "Notas",       limit: 300, null: false
  end

  add_index "Nomina_Anexos", ["CodCompania", "CodNomina", "CodEmpleado"], name: "IX_Nomina_Anexos"

  create_table "Nomina_ComprobantesImp", primary_key: "Cod_Compania", force: :cascade do |t|
    t.integer "Cod_Empleado",           limit: 4,   null: false
    t.float   "Dias_Laborados"
    t.integer "Nomina_ComprobantesImp", limit: 4
    t.integer "orden",                  limit: 4
    t.varchar "NominasImprimir",        limit: 200
  end

  create_table "Nomina_DescMod", id: false, force: :cascade do |t|
    t.integer  "Codigo_Descuento",      limit: 4,                            null: false
    t.integer  "Codigo_Tipo_Descuento", limit: 4,                            null: false
    t.integer  "Codigo_Empleado",       limit: 4,                            null: false
    t.integer  "Compania",              limit: 4,                            null: false
    t.varchar  "Descontar_Por",         limit: 255,                          null: false
    t.integer  "Cuotas_Fijas",          limit: 1
    t.datetime "Fecha"
    t.money    "Valor",                             precision: 19, scale: 4, null: false
    t.money    "Deduccion",                         precision: 19, scale: 4, null: false
    t.money    "Valor_Cuota",                       precision: 19, scale: 4, null: false
    t.real     "Tasa_interes"
    t.integer  "Numero_Cuotas",         limit: 2
    t.integer  "Cuotas_Pagadas",        limit: 2
    t.money    "Monto_Adeudado",                    precision: 19, scale: 4
    t.money    "Monto_Ahorrado",                    precision: 19, scale: 4
    t.integer  "Periodo_descuento",     limit: 1
    t.integer  "Descuento_fijo",        limit: 1,                            null: false
    t.varchar  "Concepto",              limit: 255,                          null: false
    t.integer  "Nomina_Descontar",      limit: 4,                            null: false
    t.varchar  "Usuario",               limit: 30
    t.integer  "Cod_Nomina",            limit: 4
  end

  create_table "Nomina_EmpInclExcl", primary_key: "Tipo_Nomina", force: :cascade do |t|
    t.integer  "Ano_Nomina",      limit: 4,  null: false
    t.integer  "Mes_Nomina",      limit: 1,  null: false
    t.integer  "Periodo_Nomina",  limit: 1,  null: false
    t.integer  "Cod_Empleado",    limit: 4,  null: false
    t.integer  "nex_CodCompania", limit: 4
    t.datetime "Fec_Ingreso"
    t.varchar  "Usuario",         limit: 50
  end

  create_table "Nomina_FechaCorte", primary_key: "Tipo_Nomina", force: :cascade do |t|
    t.integer  "Ano_Nomina",      limit: 4,  null: false
    t.integer  "Mes_Nomina",      limit: 1,  null: false
    t.integer  "Periodo_Nomina",  limit: 1,  null: false
    t.datetime "Fecha_Corte",                null: false
    t.datetime "Fecha_Pago",                 null: false
    t.varchar  "Usuario",         limit: 50, null: false
    t.datetime "Fecha_InicFijos"
    t.datetime "Fecha_FinFijos"
    t.datetime "Fecha_InicHora"
    t.datetime "Fecha_FinHora"
  end

  create_table "Nomina_FormaPago", primary_key: "Codigo_Nomina", force: :cascade do |t|
    t.integer "Cod_Empleado", limit: 4, null: false
    t.char    "Forma_Pago",   limit: 1, null: false
    t.char    "Concepto",     limit: 1
  end

  create_table "Nomina_General", primary_key: "Codigo_Nomina", force: :cascade do |t|
    t.integer  "Tipo_Nomina",         limit: 4,                                       null: false
    t.integer  "Compania",            limit: 4,                                       null: false
    t.datetime "Fecha_Desde",                                                         null: false
    t.datetime "Fecha_Hasta",                                                         null: false
    t.integer  "Mes_correspondiente", limit: 1,                                       null: false
    t.integer  "Periodo",             limit: 1,                                       null: false
    t.varchar  "Usuario",             limit: 30,                                      null: false
    t.integer  "Ano_Correspondiente", limit: 4,                                       null: false
    t.datetime "Fecha_Posteo",                                                        null: false
    t.money    "Tot_Ingresos",                   precision: 19, scale: 4
    t.money    "Tot_Horas",                      precision: 19, scale: 4
    t.money    "Tot_Descuentos",                 precision: 19, scale: 4
    t.integer  "Orden_Ano",           limit: 1
    t.money    "Tot_Neto",                       precision: 19, scale: 4
    t.integer  "Ano_Cont",            limit: 4
    t.integer  "Periodo_Cont",        limit: 1
    t.integer  "Transferida",         limit: 1,                           default: 0
    t.integer  "NoTransfMod",         limit: 4,                           default: 0
    t.integer  "NoAsientoCG",         limit: 4,                           default: 0
  end

  add_index "Nomina_General", ["Fecha_Desde"], name: "Personal_Nomina_AltCumb_dbo_Nomina_General Fecha_Desde"
  add_index "Nomina_General", ["Fecha_Hasta"], name: "Personal_Nomina_AltCumb_dbo_Nomina_General Fecha_Hasta"
  add_index "Nomina_General", ["Tipo_Nomina", "Ano_Correspondiente", "Mes_correspondiente", "Periodo"], name: "Personal_Nomina_AltCumb_dbo_Nomina_General idx_Ano_Correspondiente", unique: true

  create_table "Nomina_HorMod", id: false, force: :cascade do |t|
    t.integer "Codigo",          limit: 4,                           null: false
    t.integer "Codigo_Empleado", limit: 4,                           null: false
    t.integer "Tipo_Hora",       limit: 4,                           null: false
    t.integer "Codigo_Nomina",   limit: 4,                           null: false
    t.integer "Periodo_Pago",    limit: 4,                           null: false
    t.float   "Cantidad"
    t.money   "Valor_Unitario",             precision: 19, scale: 4
    t.money   "Valor",                      precision: 19, scale: 4
    t.varchar "Usuario",         limit: 30
    t.integer "Cod_Nomina",      limit: 4
  end

  create_table "Nomina_ISRCompensado", primary_key: "Codigo_Nomina", force: :cascade do |t|
    t.integer "Cod_Empleado",    limit: 4,                          null: false
    t.integer "nic_CodCompania", limit: 4
    t.money   "ValISRPeriodo",             precision: 19, scale: 4
    t.money   "ValISRComp",                precision: 19, scale: 4
  end

  create_table "Nomina_ISROtrasComp", id: false, force: :cascade do |t|
    t.integer "Cod_Compania", limit: 4,                          null: false
    t.integer "Ano",          limit: 4,                          null: false
    t.integer "Mes",          limit: 1,                          null: false
    t.integer "Cod_Empleado", limit: 4,                          null: false
    t.money   "ValorIngSuj",            precision: 19, scale: 4, null: false
    t.money   "ValorISRDesc",           precision: 19, scale: 4, null: false
    t.money   "ValorAFPARS",            precision: 19, scale: 4, null: false
  end

  create_table "Nomina_IngDescComp", id: false, force: :cascade do |t|
    t.integer "Numero_Compania",   limit: 4,                           null: false
    t.integer "Ano",               limit: 4,                           null: false
    t.integer "Mes",               limit: 1,                           null: false
    t.integer "Cod_Empleado",      limit: 4,                           null: false
    t.money   "Ing_CompISR",                  precision: 19, scale: 4
    t.money   "Ing_CompAFP",                  precision: 19, scale: 4
    t.money   "Ing_CompSalud",                precision: 19, scale: 4
    t.money   "Ing_CompRiesgo",               precision: 19, scale: 4
    t.money   "Desc_ISR",                     precision: 19, scale: 4
    t.money   "Desc_AFP",                     precision: 19, scale: 4
    t.money   "Desc_Salud",                   precision: 19, scale: 4
    t.money   "Desc_Riesgo",                  precision: 19, scale: 4
    t.money   "Desc_AFPCompa",                precision: 19, scale: 4
    t.money   "Desc_SaludCompa",              precision: 19, scale: 4
    t.money   "Desc_RiesgoCompa",             precision: 19, scale: 4
    t.integer "TieneHoras",        limit: 1
    t.integer "TieneIngresos",     limit: 1
    t.integer "TieneDesc",         limit: 1
    t.money   "Desc_InfotepCompa",            precision: 19, scale: 4
    t.money   "Ing_CompInfotep",              precision: 19, scale: 4
    t.varchar "CedulaEmp",         limit: 15
    t.money   "Desc_SFSAdic",                 precision: 19, scale: 4
  end

  add_index "Nomina_IngDescComp", ["Numero_Compania", "Ano", "Mes", "Cod_Empleado"], name: "IX_Nomina_IngDescComp"

  create_table "Nomina_IngDescMes_tmp", id: false, force: :cascade do |t|
    t.integer "Cod_Compania",    limit: 4,                          null: false
    t.integer "Cod_Registro",    limit: 4,                          null: false
    t.integer "Cod_Empleado",    limit: 4,                          null: false
    t.money   "Desc_Pension",              precision: 19, scale: 4
    t.money   "Desc_Salud",                precision: 19, scale: 4
    t.money   "Desc_PensCnia",             precision: 19, scale: 4
    t.money   "Desc_SaludCnia",            precision: 19, scale: 4
    t.money   "Desc_RiesgoCnia",           precision: 19, scale: 4
    t.money   "Desc_ISR",                  precision: 19, scale: 4
    t.money   "Ing_CompISR",               precision: 19, scale: 4
    t.money   "Ing_SujPens",               precision: 19, scale: 4
    t.money   "Ing_SujSalud",              precision: 19, scale: 4
    t.money   "Ing_SujRiesgo",             precision: 19, scale: 4
  end

  create_table "Nomina_IngMod", id: false, force: :cascade do |t|
    t.integer  "Codigo_Ingreso",      limit: 4,                            null: false
    t.integer  "Codigo_Tipo_ingreso", limit: 4,                            null: false
    t.integer  "Codigo_empleado",     limit: 4,                            null: false
    t.datetime "Fecha",                                                    null: false
    t.varchar  "Descripcion",         limit: 50
    t.money    "Valor_Unitario",                  precision: 19, scale: 4
    t.real     "Cantidad"
    t.money    "Valor",                           precision: 19, scale: 4, null: false
    t.varchar  "Pagar_Por",           limit: 255,                          null: false
    t.integer  "Nomina",              limit: 4,                            null: false
    t.integer  "Periodo_pago",        limit: 1,                            null: false
    t.integer  "Ingreso_fijo",        limit: 1,                            null: false
    t.integer  "Pendiente",           limit: 1
    t.integer  "Mes_Nomina",          limit: 1
    t.varchar  "Usuario",             limit: 30,                           null: false
    t.integer  "Cod_Nomina",          limit: 4
  end

  create_table "Nomina_LeySegSoc", id: false, force: :cascade do |t|
    t.integer "Codigo_Nomina",    limit: 4,                          null: false
    t.integer "nds_CodCompania",  limit: 4
    t.integer "Cod_Empleado",     limit: 4,                          null: false
    t.money   "Tot_Ingresos",               precision: 19, scale: 4
    t.money   "Val_ISR_Calc",               precision: 19, scale: 4
    t.money   "Val_SS_Calc",                precision: 19, scale: 4
    t.money   "Val_ISR_Desc",               precision: 19, scale: 4
    t.money   "Val_SS_Desc",                precision: 19, scale: 4
    t.money   "Val_AFP_Emp",                precision: 19, scale: 4
    t.money   "Val_AFP_Comp",               precision: 19, scale: 4
    t.money   "Val_AFP_Suj",                precision: 19, scale: 4
    t.money   "Val_ARS_Emp",                precision: 19, scale: 4
    t.money   "Val_ARS_Comp",               precision: 19, scale: 4
    t.money   "Val_ARS_Suj",                precision: 19, scale: 4
    t.money   "Val_Ries_Emp",               precision: 19, scale: 4
    t.money   "Val_Ries_Comp",              precision: 19, scale: 4
    t.money   "Val_Ries_Suj",               precision: 19, scale: 4
    t.money   "Val_Infotep_Suj",            precision: 19, scale: 4
    t.money   "Val_Infotep_Comp",           precision: 19, scale: 4
    t.money   "Val_Infotep_Emp",            precision: 19, scale: 4
  end

  add_index "Nomina_LeySegSoc", ["nds_CodCompania", "Codigo_Nomina", "Cod_Empleado"], name: "IX_Nomina_LeySegSoc"

  create_table "Nomina_LeySegSoc_Temp", id: false, force: :cascade do |t|
    t.integer "Codigo_Nomina",    limit: 4
    t.integer "nds_CodCompania",  limit: 4
    t.integer "Cod_Empleado",     limit: 4
    t.money   "Tot_Ingresos",               precision: 19, scale: 4
    t.money   "Val_ISR_Calc",               precision: 19, scale: 4
    t.money   "Val_SS_Calc",                precision: 19, scale: 4
    t.money   "Val_ISR_Desc",               precision: 19, scale: 4
    t.money   "Val_SS_Desc",                precision: 19, scale: 4
    t.money   "Val_AFP_Emp",                precision: 19, scale: 4
    t.money   "Val_AFP_Comp",               precision: 19, scale: 4
    t.money   "Val_AFP_Suj",                precision: 19, scale: 4
    t.money   "Val_ARS_Emp",                precision: 19, scale: 4
    t.money   "Val_ARS_Comp",               precision: 19, scale: 4
    t.money   "Val_ARS_Suj",                precision: 19, scale: 4
    t.money   "Val_Ries_Emp",               precision: 19, scale: 4
    t.money   "Val_Ries_Comp",              precision: 19, scale: 4
    t.money   "Val_Ries_Suj",               precision: 19, scale: 4
    t.money   "Val_Infotep_Suj",            precision: 19, scale: 4
    t.money   "Val_Infotep_Comp",           precision: 19, scale: 4
    t.money   "Val_Infotep_Emp",            precision: 19, scale: 4
  end

  create_table "Nomina_PeriodosMes", id: false, force: :cascade do |t|
    t.integer "Mes",       limit: 1
    t.integer "Semanas",   limit: 1
    t.integer "Bisemanas", limit: 1
  end

  create_table "Nomina_Provisiones", primary_key: "Ano_Nomina", force: :cascade do |t|
    t.integer "Mes_Nomina",       limit: 4,                          null: false
    t.integer "Cod_Empleado",     limit: 4,                          null: false
    t.integer "npv_CodCompania",  limit: 4,                          null: false
    t.integer "Dias_Labor",       limit: 4
    t.money   "ValVacaciones",              precision: 19, scale: 4
    t.money   "ValCesantia",                precision: 19, scale: 4
    t.money   "ValPreaviso",                precision: 19, scale: 4
    t.money   "ValSueldoNav",               precision: 19, scale: 4
    t.money   "ValBonificacion",            precision: 19, scale: 4
    t.integer "DiasVacaciones",   limit: 4
    t.integer "DiasCesantia",     limit: 4
    t.integer "DiasPreaviso",     limit: 4
    t.money   "IngresosUltAno",             precision: 19, scale: 4
    t.integer "DiasBonificacion", limit: 4
    t.money   "Sal_BasePer",                precision: 19, scale: 4
    t.money   "OtrosIng_Per",               precision: 19, scale: 4
    t.money   "ValBVacaciones",             precision: 19, scale: 4
    t.integer "DiasBVacaciones",  limit: 4
    t.integer "Periodo_NomProv",  limit: 4
  end

  add_index "Nomina_Provisiones", ["npv_CodCompania", "Ano_Nomina", "Mes_Nomina", "Cod_Empleado"], name: "IX_Nomina_Provisiones"

  create_table "Nomina_Retenciones", id: false, force: :cascade do |t|
    t.integer "Cod_Compania",    limit: 4,                          null: false
    t.integer "Codigo_Empleado", limit: 4,                          null: false
    t.integer "Ano",             limit: 4,                          null: false
    t.integer "Mes",             limit: 1,                          null: false
    t.integer "Periodo",         limit: 1,                          null: false
    t.money   "Valor_AFP",                 precision: 19, scale: 4
    t.money   "Valor_SFS",                 precision: 19, scale: 4
    t.money   "Valor_SRL",                 precision: 19, scale: 4
    t.money   "Valor_Infotep",             precision: 19, scale: 4
    t.money   "Valor_SegMed",              precision: 19, scale: 4
    t.money   "Valor_ISR",                 precision: 19, scale: 4
    t.money   "TotIngresos",               precision: 19, scale: 4
    t.money   "Valor_AFPAdic",             precision: 19, scale: 4
  end

  add_index "Nomina_Retenciones", ["Cod_Compania", "Codigo_Empleado", "Ano", "Mes", "Periodo"], name: "IX_Nomina_Retenciones"

  create_table "Nomina_SSComp", primary_key: "Codigo_Nomina", force: :cascade do |t|
    t.integer "Cod_Empleado",    limit: 4,                          null: false
    t.integer "nss_CodCompania", limit: 4
    t.money   "ValSegSocComp",             precision: 19, scale: 4
  end

  create_table "Nomina_Tasas", id: false, force: :cascade do |t|
    t.integer "Tipo_Nomina",    limit: 4, null: false
    t.integer "Ano_Nomina",     limit: 4, null: false
    t.integer "Mes_Nomina",     limit: 4, null: false
    t.integer "Periodo_Nomina", limit: 4, null: false
    t.varchar "Cod_Moneda",     limit: 5, null: false
    t.float   "Tasa_Cambio",              null: false
  end

  create_table "Nomina_Temporal", primary_key: "Codigo_nomina", force: :cascade do |t|
    t.integer  "Tipo_nomina",         limit: 1,                                       null: false
    t.integer  "Compania",            limit: 4,                                       null: false
    t.datetime "Fecha_Desde"
    t.datetime "Fecha_Hasta"
    t.integer  "Mes_correspondiente", limit: 1,                                       null: false
    t.integer  "Periodo",             limit: 1
    t.varchar  "Usuario",             limit: 30,                                      null: false
    t.integer  "Ano_Correspondiente", limit: 4
    t.datetime "Fecha_Posteo"
    t.money    "Tot_Ingresos",                   precision: 19, scale: 4
    t.money    "Tot_Horas",                      precision: 19, scale: 4
    t.money    "Tot_Descuentos",                 precision: 19, scale: 4
    t.integer  "Orden_Ano",           limit: 1
    t.money    "Tot_Neto",                       precision: 19, scale: 4
    t.integer  "Ano_Cont",            limit: 4
    t.integer  "Periodo_Cont",        limit: 1
    t.integer  "Transferida",         limit: 1,                           default: 0
    t.integer  "NoTransfMod",         limit: 4,                           default: 0
    t.integer  "NoAsientoCG",         limit: 4,                           default: 0
  end

  add_index "Nomina_Temporal", ["Tipo_nomina", "Ano_Correspondiente", "Mes_correspondiente", "Periodo"], name: "Personal_Nomina_AltCumb_dbo_Nomina_Temporal idx_NomTempTipo", unique: true

  create_table "Nomina_Valor_Columnas", id: false, force: :cascade do |t|
    t.integer "Codigo_Nomina",   limit: 4
    t.integer "Codigo_Empleado", limit: 4
    t.money   "ValColum1",                 precision: 19, scale: 4
    t.money   "ValColum2",                 precision: 19, scale: 4
    t.money   "ValColum3",                 precision: 19, scale: 4
    t.money   "ValColum4",                 precision: 19, scale: 4
    t.money   "ValColum5",                 precision: 19, scale: 4
    t.money   "ValColum6",                 precision: 19, scale: 4
    t.money   "ValColum7",                 precision: 19, scale: 4
    t.money   "ValColum8",                 precision: 19, scale: 4
    t.money   "ValColum9",                 precision: 19, scale: 4
    t.money   "ValColum10",                precision: 19, scale: 4
    t.money   "ValColum11",                precision: 19, scale: 4
    t.money   "ValColum12",                precision: 19, scale: 4
    t.money   "ValColum13",                precision: 19, scale: 4
    t.money   "ValColum14",                precision: 19, scale: 4
    t.money   "ValColum15",                precision: 19, scale: 4
    t.money   "ValColum16",                precision: 19, scale: 4
    t.money   "ValColum17",                precision: 19, scale: 4
  end

  create_table "OJDT", primary_key: "CodCompania", force: :cascade do |t|
    t.integer  "CodLote",       limit: 4,   null: false
    t.integer  "RecordKey",     limit: 4,   null: false
    t.datetime "DueDate",                   null: false
    t.datetime "ReferenceDate",             null: false
    t.datetime "StornoDate",                null: false
    t.datetime "VatDate",                   null: false
    t.datetime "TaxDate",                   null: false
    t.varchar  "Memo",          limit: 100, null: false
    t.integer  "Transferida",   limit: 1
  end

  create_table "OJDTD", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "CodLote",     limit: 4,                           null: false
    t.integer "RecordKey",   limit: 4,                           null: false
    t.integer "LineNum",     limit: 2,                           null: false
    t.varchar "AccountCode", limit: 30,                          null: false
    t.decimal "Debit",                  precision: 18, scale: 2, null: false
    t.decimal "Credit",                 precision: 18, scale: 2, null: false
    t.varchar "ProfitCode",  limit: 20
    t.varchar "OcrCode2",    limit: 20,                          null: false
    t.varchar "OcrCode3",    limit: 20,                          null: false
    t.varchar "ShortName",   limit: 20
    t.varchar "ProjectCode", limit: 20
  end

  create_table "Opciones_Cliente", id: false, force: :cascade do |t|
    t.integer  "Incentivo_K543",           limit: 1
    t.integer  "SumarSalarioNom",          limit: 1
    t.integer  "DesplegarNomFormaPago",    limit: 1
    t.integer  "GuardarInterfaceReloj",    limit: 1
    t.integer  "Cod_Compania",             limit: 4
    t.integer  "PrestacionesDeudas",       limit: 1
    t.integer  "PrestacionesSalPend",      limit: 1
    t.integer  "PrestacionesBonif",        limit: 1
    t.integer  "PrestacionesBonVac",       limit: 1
    t.integer  "PrestIncSalPendCalc",      limit: 1
    t.integer  "CodMotivoTardAutomat",     limit: 1
    t.integer  "PagarHorasEmpLic",         limit: 1
    t.varchar  "UsuarioMercury",           limit: 30
    t.varchar  "ClaveEncripMercury",       limit: 30
    t.varchar  "RutaArchivoSapEncab",      limit: 255
    t.varchar  "RutaArchivoSapDetalle",    limit: 255
    t.integer  "UsaServiceDesk",           limit: 1
    t.integer  "DBServiceDesk",            limit: 1
    t.varchar  "TablaUsuarios",            limit: 100
    t.varchar  "CodCompaniaCoop",          limit: 20
    t.integer  "CodGrupoUsuDefecto",       limit: 4
    t.integer  "InterfaceHorasSAP",        limit: 1
    t.varchar  "ServidorSAP",              limit: 100
    t.varchar  "DBSAP",                    limit: 100
    t.integer  "ActivarLog",               limit: 1
    t.integer  "UsuarioSAActivo",          limit: 1
    t.integer  "BloquearWeb",              limit: 1
    t.datetime "BloquearFecHasta"
    t.varchar  "LabelSalarioBasComprob",   limit: 30
    t.integer  "DesplegarCHorasComPago",   limit: 1
    t.integer  "AsientoSAPBOAutomatico",   limit: 1
    t.varchar  "UserSAPBO",                limit: 30
    t.varchar  "ClaveSAPBO",               limit: 30
    t.varchar  "CompaniaSAPBO",            limit: 100
    t.varchar  "VersionSQLSAPBO",          limit: 30
    t.varchar  "UsuarioAppSAPBO",          limit: 30
    t.varchar  "ClaveAppSAPBO",            limit: 30
    t.varchar  "VersionSAPBO",             limit: 10
    t.varchar  "TransCodeSAP",             limit: 10
    t.integer  "GenerarCKAutSAP",          limit: 1
    t.integer  "PermitirCrearLocalidades", limit: 1
    t.integer  "PermitirExcederHorasLoc",  limit: 1
    t.string   "ImagenFondoCarnet",        limit: 4000
    t.integer  "MetodoImportarHorasSAPBO", limit: 1
    t.integer  "DesplegarDiasLabComprob",  limit: 4
    t.integer  "HacerInterfaceQuickBook",  limit: 1
    t.varchar  "ServerLicSAPBO",           limit: 50
    t.varchar  "DesplegarSalBaseOSalHora", limit: 1,    default: "S"
    t.varchar  "InterfaceWebOmfri",        limit: 1,    default: "N"
    t.varchar  "VerRH",                    limit: 20,   default: "3"
    t.varchar  "VerNom",                   limit: 20,   default: "1"
    t.varchar  "MonedaLocal",              limit: 5
  end

  create_table "Opciones_Web", id: false, force: :cascade do |t|
    t.integer "Codigo_RolAdm", limit: 4, null: false
    t.integer "Codigo_UsuAdm", limit: 4
  end

  create_table "Otros_Ingresos", primary_key: "Codigo_ingreso", force: :cascade do |t|
    t.integer  "Codigo_Tipo_ingreso", limit: 4,                           null: false
    t.integer  "ing_CodCompania",     limit: 4
    t.integer  "Codigo_empleado",     limit: 4,                           null: false
    t.datetime "Fecha",                                                   null: false
    t.varchar  "Descripcion",         limit: 50
    t.money    "Valor_Unitario",                 precision: 19, scale: 4
    t.real     "Cantidad"
    t.money    "Valor",                          precision: 19, scale: 4, null: false
    t.varchar  "Pagar_Por",           limit: 1,                           null: false
    t.integer  "Nomina",              limit: 4,                           null: false
    t.integer  "Periodo_pago",        limit: 1,                           null: false
    t.integer  "Ingreso_fijo",        limit: 1,                           null: false
    t.integer  "Pendiente",           limit: 1
    t.integer  "Mes_Nomina",          limit: 1
    t.varchar  "Usuario",             limit: 30,                          null: false
    t.integer  "CodGrupoNom",         limit: 4
    t.integer  "CodSubGrupoNom",      limit: 4
    t.varchar  "oiMoneda",            limit: 5
  end

  add_index "Otros_Ingresos", ["ing_CodCompania", "Codigo_empleado"], name: "IX_Otros_Ingresos"

  create_table "PaginasAccesoModWeb", primary_key: "IdPantalla", force: :cascade do |t|
    t.varchar "Pantalla",       limit: 100, null: false
    t.integer "AccesoUsuarios", limit: 1,   null: false
  end

  create_table "Paises", id: false, force: :cascade do |t|
    t.integer "Codigo",           limit: 4
    t.varchar "Descripcion_Pais", limit: 100
  end

  create_table "PantallasControles", id: false, force: :cascade do |t|
    t.varchar "Pantalla",           limit: 50
    t.varchar "Caption",            limit: 100
    t.varchar "CaptionIngles",      limit: 100
    t.varchar "Control",            limit: 50
    t.varchar "ControlTipo",        limit: 50
    t.varchar "ControlLabel",       limit: 200
    t.varchar "ControlLabelIngles", limit: 200
    t.varchar "Width",              limit: 50
    t.varchar "LongitudMaxima",     limit: 50
    t.varchar "ToolTips",           limit: 200
    t.integer "TabIndex",           limit: 2
    t.varchar "MinValue",           limit: 50
    t.varchar "MaxValue",           limit: 50
    t.varchar "LeftMargin",         limit: 50
    t.varchar "TopMargin",          limit: 50
    t.varchar "Height",             limit: 50
    t.varchar "Container",          limit: 50
    t.varchar "ItemsCombo",         limit: 2000
    t.varchar "Mascara",            limit: 50
    t.varchar "ColumnasGrid",       limit: 300
    t.varchar "LongitudCol",        limit: 200
    t.varchar "TipoCol",            limit: 300
    t.varchar "TooltipsIngles",     limit: 300
  end

  create_table "Pantallas_Nomina", primary_key: "ID_PANTALLA", force: :cascade do |t|
    t.varchar "DESCRIPCION", limit: 100, null: false
  end

  create_table "Pantallas_Personal", id: false, force: :cascade do |t|
    t.integer "ID_PANTALLA", limit: 4,   null: false
    t.varchar "DESCRIPCION", limit: 100, null: false
    t.varchar "Modulo",      limit: 3
  end

  create_table "Pantallas_Roles_Nomina", primary_key: "Codigo_Roll", force: :cascade do |t|
    t.integer "Codigo_Pantalla", limit: 4, null: false
    t.varchar "Permiso",         limit: 1, null: false
  end

  create_table "Pantallas_Roles_Personal", primary_key: "Codigo_Roll", force: :cascade do |t|
    t.integer "Codigo_Pantalla", limit: 4, null: false
    t.varchar "Permiso",         limit: 1, null: false
  end

  create_table "Parametros", force: :cascade do |t|
    t.float    "Meses_desde"
    t.float    "Meses_hasta",              null: false
    t.datetime "Fecha_desde"
    t.datetime "Fecha_hasta"
    t.float    "Dias",                     null: false
    t.integer  "Concepto",      limit: 4,  null: false
    t.integer  "Dias_Disfrute", limit: 2
    t.varchar  "MotivoParam",   limit: 30
  end

  create_table "Parametros_Reclutamiento", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Compania",            limit: 4
    t.varchar "EncargadoRRHH",       limit: 100
    t.varchar "EncargadoRRHH_Email", limit: 100
  end

  create_table "Periodo_Evaluaciones", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Numero_Compania",        limit: 4,   null: false
    t.varchar  "Codigo_Tipo_Evaluacion", limit: 255, null: false
    t.datetime "Fecha_Desde"
    t.datetime "Fecha_Hasta"
    t.varchar  "Comentarios",            limit: 255
    t.varchar  "Usuario",                limit: 30
  end

  create_table "Planes_Seguro", primary_key: "Codigo_Seguro", force: :cascade do |t|
    t.integer "Codigo_Tipo",                 limit: 4,                           null: false
    t.varchar "Descripcion",                 limit: 50,                          null: false
    t.integer "Tarifa_Familiar",             limit: 1
    t.integer "Tarifa_Personal",             limit: 1
    t.integer "Tarifa_Opcional",             limit: 1
    t.integer "Tarifa_Dependientes",         limit: 1
    t.money   "Costo_Tarifa_Familiar",                  precision: 19, scale: 4
    t.real    "Porciento_Compania_Familiar"
    t.money   "Costo_Tarifa_Personal",                  precision: 19, scale: 4
    t.real    "Porciento_Compania_Personal"
    t.money   "Costo_Tarifa_Opcional",                  precision: 19, scale: 4
    t.real    "Porciento_Compania_Opcional"
  end

  create_table "PlanifHorariosEncabRepTemp", id: false, force: :cascade do |t|
    t.integer "CodCompania", limit: 4,  null: false
    t.integer "Secuencia",   limit: 4,  null: false
    t.integer "CodUsuario",  limit: 4,  null: false
    t.varchar "Encab1",      limit: 30, null: false
    t.varchar "Encab2",      limit: 30, null: false
    t.varchar "Encab3",      limit: 30, null: false
    t.varchar "Encab4",      limit: 30, null: false
    t.varchar "Encab5",      limit: 30, null: false
    t.varchar "Encab6",      limit: 30, null: false
    t.varchar "Encab7",      limit: 30, null: false
    t.varchar "Encab8",      limit: 30, null: false
    t.varchar "Encab9",      limit: 30, null: false
    t.varchar "Encab10",     limit: 30, null: false
    t.varchar "Encab11",     limit: 30, null: false
    t.varchar "Encab12",     limit: 30, null: false
    t.varchar "Encab13",     limit: 30, null: false
    t.varchar "Encab14",     limit: 30, null: false
    t.varchar "Encab15",     limit: 30, null: false
    t.varchar "Encab16",     limit: 30, null: false
  end

  create_table "PlanifHorariosRepTemp", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "CodCompania", limit: 4,  null: false
    t.integer  "CodEmpleado", limit: 4,  null: false
    t.integer  "CodUsuario",  limit: 4,  null: false
    t.varchar  "Horario1",    limit: 20, null: false
    t.varchar  "Horario2",    limit: 20, null: false
    t.varchar  "Horario3",    limit: 20, null: false
    t.varchar  "Horario4",    limit: 20, null: false
    t.varchar  "Horario5",    limit: 20, null: false
    t.varchar  "Horario6",    limit: 20, null: false
    t.varchar  "Horario7",    limit: 20, null: false
    t.varchar  "Horario8",    limit: 20, null: false
    t.varchar  "Horario9",    limit: 20, null: false
    t.varchar  "Horario10",   limit: 20, null: false
    t.varchar  "Horario11",   limit: 20, null: false
    t.varchar  "Horario12",   limit: 20, null: false
    t.varchar  "Horario13",   limit: 20, null: false
    t.varchar  "Horario14",   limit: 20, null: false
    t.varchar  "Horario15",   limit: 20, null: false
    t.varchar  "Horario16",   limit: 20, null: false
    t.datetime "FecDesde"
    t.datetime "FecHasta"
  end

  create_table "PoliticasDisponiblesWeb", id: false, force: :cascade do |t|
    t.integer "CodHorario", limit: 4, null: false
  end

  create_table "PoliticasYProcedimientos", primary_key: "Codigo", force: :cascade do |t|
    t.integer    "CodCompania",     limit: 4,          null: false
    t.integer    "CodTipoPolitica", limit: 4,          null: false
    t.varchar    "Titulo",          limit: 200,        null: false
    t.integer    "CodUsuario",      limit: 4,          null: false
    t.text_basic "Descripcion",     limit: 2147483647, null: false
    t.text_basic "DescripcionHTML", limit: 2147483647, null: false
  end

  create_table "PoliticasYProcedimientosDetalles", primary_key: "CodPolitica", force: :cascade do |t|
    t.integer    "Orden",       limit: 4,          null: false
    t.text_basic "Descripcion", limit: 2147483647, null: false
  end

  create_table "Politicas_Horarios", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",             limit: 100,                          null: false
    t.integer "Numero_Compania",         limit: 4,                            null: false
    t.integer "Orden",                   limit: 4
    t.integer "DescontarHorasDesc",      limit: 1
    t.integer "DescMinInasist",          limit: 1
    t.integer "CantMaxMinInasist",       limit: 1
    t.integer "PagarSabFeriados",        limit: 1
    t.integer "Pagar12AMFeriadas",       limit: 1
    t.integer "PagarHorasAntesJornalF",  limit: 1
    t.integer "PagarHorasAntesJornalH",  limit: 1
    t.integer "PagarHorasNoctAntes7AM",  limit: 1
    t.integer "PagarHorasExtrasDespues", limit: 1
    t.float   "MinutosDespPagoExtra"
    t.integer "Horario_Nocturno",        limit: 1
    t.integer "Ponchar_Almuerzo",        limit: 1
    t.varchar "CodHorSuirPlus",          limit: 20
    t.decimal "CantHorasSem",                        precision: 18, scale: 0
    t.decimal "DiasLaborMes",                        precision: 18, scale: 2
    t.integer "PagarHorasNoct",          limit: 1
    t.integer "PagarHorasFer",           limit: 1
    t.decimal "HorasMaxExtras",                      precision: 12, scale: 2
    t.decimal "HorasMaxNomSal",                      precision: 12, scale: 2
    t.integer "CodNomHorasExc",          limit: 4
    t.integer "CodTipoIngHorasExc",      limit: 4
    t.integer "MaxMinAntesSalJornal",    limit: 2
    t.integer "MaxMinDespSalJornal",     limit: 2
    t.integer "PagarMinAntesSalJornal",  limit: 1
    t.integer "PagarMinDespSalJornal",   limit: 2
    t.integer "RedondearMinutos",        limit: 1
    t.integer "MinutosDespRedondear",    limit: 2
    t.integer "MaxMinutosHorasNoct",     limit: 2
    t.decimal "HorasMaxCambiarHorario",              precision: 12, scale: 2
    t.integer "CodPoliticaCambiar",      limit: 4
    t.integer "CodHorarioDiurno",        limit: 4
    t.integer "PagarHorasExtFijos",      limit: 1
    t.integer "PagarMinLabDescanso",     limit: 1
  end

  add_index "Politicas_Horarios", ["Descripcion", "Numero_Compania"], name: "IX_Politicas_Horarios", unique: true

  create_table "Politicas_Horarios_Cargos", primary_key: "Numero_Compania", force: :cascade do |t|
    t.integer "CodPolitica", limit: 4, null: false
    t.integer "CodCargo",    limit: 4, null: false
  end

  create_table "Poliza_Accidentes", id: false, force: :cascade do |t|
    t.integer "Compania",        limit: 4,                            null: false
    t.varchar "Cedula",          limit: 50
    t.varchar "Nombre_Empleado", limit: 100,                          null: false
    t.money   "Salario_Bruto",               precision: 19, scale: 4
    t.money   "Otros_Ingresos",              precision: 19, scale: 4
    t.money   "Salario_Sujeto",              precision: 19, scale: 4
    t.varchar "Mes",             limit: 50
    t.integer "Ano",             limit: 4
    t.varchar "Tipo_Empleado",   limit: 1,                            null: false
    t.varchar "Numero_Afiliado", limit: 50
    t.integer "Grupo",           limit: 4
    t.integer "SubGrupo",        limit: 4
  end

  add_index "Poliza_Accidentes", ["Cedula"], name: "Personal_Nomina_AltCumb_dbo_Poliza_Accidentes Cedula"
  add_index "Poliza_Accidentes", ["Nombre_Empleado"], name: "Personal_Nomina_AltCumb_dbo_Poliza_Accidentes Nombre_Empleado"

  create_table "Posiciones", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 50, null: false
  end

  add_index "Posiciones", ["Descripcion"], name: "IX_Posiciones", unique: true
  add_index "Posiciones", ["Descripcion"], name: "UQ__Posiciones__29572725", unique: true

  create_table "Posiciones_Clasif_Descrip", primary_key: "Numero_Compania", force: :cascade do |t|
    t.integer "CodCargo",    limit: 4,   null: false
    t.varchar "Descripcion", limit: 255, null: false
    t.integer "Orden",       limit: 2,   null: false
  end

  create_table "Posiciones_Clasificacion", primary_key: "Codigo", force: :cascade do |t|
    t.integer    "Numero_compania",            limit: 4,                                   null: false
    t.integer    "Codigo_Nivel",               limit: 4,                                   null: false
    t.integer    "Codigo_Clasificacion",       limit: 4,                                   null: false
    t.integer    "Codigo_Posicion",            limit: 4,                                   null: false
    t.varchar    "Nombre_Cargo",               limit: 100,                                 null: false
    t.text_basic "Descripcion",                limit: 2147483647
    t.money      "Salario_Desde",                                 precision: 19, scale: 4
    t.money      "Salario_Hasta",                                 precision: 19, scale: 4
    t.integer    "Plazas",                     limit: 4
    t.integer    "Codigo_Clasif_Reporta",      limit: 4
    t.integer    "Codigo_Posicion_Reporta",    limit: 4,                                   null: false
    t.integer    "Codigo_Clasificacion_Cargo", limit: 4,                                   null: false
    t.varchar    "Supervisor",                 limit: 1,                                   null: false
    t.text_basic "Descripcion_Det",            limit: 2147483647,                          null: false
    t.char       "Estatus",                    limit: 1,                                   null: false
    t.varchar    "Indice",                     limit: 20
    t.integer    "Cod_CargoRep",               limit: 4
    t.integer    "Cod_CargoRep2",              limit: 4
    t.integer    "Puntuacion",                 limit: 2
    t.varchar    "AliasCodigo",                limit: 10
    t.integer    "OrdenCargo",                 limit: 4
    t.integer    "SET_CodOcupacion",           limit: 4
    t.integer    "Cod_CargoAut",               limit: 4
  end

  add_index "Posiciones_Clasificacion", ["Codigo"], name: "IX_Posiciones_Clasificacion_1", unique: true
  add_index "Posiciones_Clasificacion", ["Nombre_Cargo"], name: "IX_Posiciones_Clasificacion_2"
  add_index "Posiciones_Clasificacion", ["Numero_compania"], name: "IX_Posiciones_Clasificacion"

  create_table "Posiciones_ClasificacionCursos", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "CodCurso",     limit: 4, null: false
    t.integer "Orden",        limit: 4, null: false
    t.integer "Recurrencia",  limit: 1, null: false
    t.integer "Tiempo",       limit: 2, null: false
    t.char    "Periodicidad", limit: 1, null: false
  end

  create_table "Presu_PresupuestoDet", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "CodPresupuesto",    limit: 4,                            null: false
    t.integer "Orden",             limit: 4,                            null: false
    t.integer "CodNovedadNom",     limit: 4,                            null: false
    t.integer "TipoNovedadNom",    limit: 4,                            null: false
    t.varchar "DescripcionNovNom", limit: 100,                          null: false
    t.decimal "IngresosDepart",                precision: 18, scale: 2, null: false
    t.decimal "GastosDepart",                  precision: 18, scale: 2, null: false
    t.decimal "IngresosSucu",                  precision: 18, scale: 2, null: false
    t.decimal "GastosSucu",                    precision: 18, scale: 2, null: false
  end

  create_table "Presup_Presupuesto", primary_key: "CodCompania", force: :cascade do |t|
    t.integer  "Codigo",             limit: 4,                          null: false
    t.integer  "Ano",                limit: 4,                          null: false
    t.integer  "Mes",                limit: 4,                          null: false
    t.integer  "SubGrupoNom",        limit: 4,                          null: false
    t.integer  "CodSucursal",        limit: 4,                          null: false
    t.datetime "FechaReg",                                              null: false
    t.integer  "CodUsuario",         limit: 4,                          null: false
    t.decimal  "PresupIngDepart",              precision: 18, scale: 2, null: false
    t.decimal  "PresupGastosDepart",           precision: 18, scale: 2, null: false
    t.decimal  "PresupIngSucu",                precision: 18, scale: 2, null: false
    t.decimal  "PresupGastosSucu",             precision: 18, scale: 2, null: false
  end

  create_table "Propinas_Configuracion", id: false, force: :cascade do |t|
    t.integer "Cod_Compania",    limit: 4, null: false
    t.integer "Cod_TipoIngreso", limit: 4, null: false
  end

  create_table "Propinas_PuntosCargos", id: false, force: :cascade do |t|
    t.integer "Cod_Compania",      limit: 4, null: false
    t.integer "Cod_Cargo",         limit: 4, null: false
    t.float   "Puntuacion",                  null: false
    t.integer "Cod_Clasificacion", limit: 4
    t.float   "Puntuacion_Clasif"
  end

  add_index "Propinas_PuntosCargos", ["Cod_Compania", "Cod_Cargo"], name: "IX_Cargos_PuntosProp"

  create_table "Propinas_PuntosHist", id: false, force: :cascade do |t|
    t.integer "Cod_Compania",      limit: 4,                          null: false
    t.integer "Cod_Cargo",         limit: 4,                          null: false
    t.integer "Tipo_Nomina",       limit: 4,                          null: false
    t.integer "Ano_Nomina",        limit: 4,                          null: false
    t.integer "Mes_Nomina",        limit: 1,                          null: false
    t.integer "Periodo_Nomina",    limit: 1,                          null: false
    t.float   "Puntuacion",                                           null: false
    t.money   "Monto_Distribuido",           precision: 19, scale: 4, null: false
    t.float   "Puntuacion_Clasif"
  end

  create_table "Provincias", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion_Provincia", limit: 100, null: false
    t.integer "Orden_Provincia",       limit: 2
    t.integer "Cod_Pais",              limit: 4
  end

  add_index "Provincias", ["Descripcion_Provincia"], name: "IX_Provincias"

  create_table "Psico_CategoriasPreg", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion_Categoria", limit: 500, null: false
  end

  create_table "Psico_EvaluacionPreg", primary_key: "Cod_FormEval", force: :cascade do |t|
    t.integer "Secuencia",           limit: 4,   null: false
    t.integer "No_Pregunta",         limit: 4,   null: false
    t.integer "Cod_Categoria",       limit: 4,   null: false
    t.varchar "Pregunta",            limit: 500, null: false
    t.varchar "RutaImagenPregunta",  limit: 200, null: false
    t.varchar "RutaImagenPregunta2", limit: 200, null: false
    t.integer "NoSolucion",          limit: 2,   null: false
  end

  add_index "Psico_EvaluacionPreg", ["Secuencia"], name: "IX_Psico_EvaluacionPreg_1", unique: true

  create_table "Psico_Evaluaciones", primary_key: "Codigo", force: :cascade do |t|
    t.varchar    "NombreEval",           limit: 100,        null: false
    t.text_basic "DescripcionEval",      limit: 2147483647, null: false
    t.varchar    "SiglasEval",           limit: 30,         null: false
    t.integer    "CodTipoEval",          limit: 4,          null: false
    t.datetime   "FechaReg",                                null: false
    t.text_basic "ComentarioInicio",     limit: 2147483647, null: false
    t.text_basic "InstruccionLlenado",   limit: 2147483647, null: false
    t.text_basic "ComentarioEjemplos",   limit: 2147483647, null: false
    t.text_basic "ComentarioFin",        limit: 2147483647, null: false
    t.char       "FormaTotalizarResult", limit: 1,          null: false
    t.integer    "Usuario",              limit: 4,          null: false
  end

  add_index "Psico_Evaluaciones", ["NombreEval"], name: "IX_Psico_Evaluaciones", unique: true

  create_table "Psico_EvaluacionesPregSoluc", primary_key: "Cod_FormEval", force: :cascade do |t|
    t.integer "Secuencia_Preg",   limit: 4,   null: false
    t.integer "NoPregunta",       limit: 4,   null: false
    t.integer "NoSolucion",       limit: 2,   null: false
    t.varchar "SiglasSolucion",   limit: 10,  null: false
    t.varchar "RutaImagen",       limit: 200, null: false
    t.varchar "DescripcionSoluc", limit: 200, null: false
  end

  create_table "Psico_TiposEval", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion_Evaluacion", limit: 100, null: false
  end

  create_table "Reporte_BalDescuentos", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "Numero_Compania", limit: 4,                            null: false
    t.integer  "Cod_Empleado",    limit: 4,                            null: false
    t.money    "ValorDescuento",              precision: 19, scale: 4, null: false
    t.money    "ValorDescNomina",             precision: 19, scale: 4
    t.integer  "Cuotas",          limit: 2
    t.integer  "CuotasPagadas",   limit: 2
    t.money    "ValorAdeudado",               precision: 19, scale: 4
    t.integer  "CodigoSubGrupo",  limit: 4,                            null: false
    t.varchar  "TipoDescuento",   limit: 100,                          null: false
    t.varchar  "NombreEmp",       limit: 60,                           null: false
    t.integer  "Cod_Sucursal",    limit: 4,                            null: false
    t.datetime "Fecha_Balan",                                          null: false
    t.integer  "Desc_Fijo",       limit: 1,                            null: false
    t.datetime "Fecha_RegDesc"
  end

  create_table "Reporte_HorasExtras_Temp", id: false, force: :cascade do |t|
    t.integer "No_Linea",     limit: 4
    t.integer "No_Pagina",    limit: 4
    t.integer "Cod_Empleado", limit: 4
  end

  create_table "Reporte_Nomina_Listado_Temp", id: false, force: :cascade do |t|
    t.integer "Codigo_Nomina",       limit: 4
    t.integer "Codigo_Empleado",     limit: 4
    t.varchar "Descripcion_Novedad", limit: 60
    t.varchar "Cuenta_Novedad",      limit: 20
    t.float   "Cantidad_Novedad"
    t.money   "Valor_Unitario",                 precision: 19, scale: 4
    t.money   "Valor_Novedad",                  precision: 19, scale: 4
  end

  create_table "RequerimientoCompet", primary_key: "CodReq", force: :cascade do |t|
    t.integer "CodCompet", limit: 4
    t.integer "CodGrado",  limit: 4
    t.integer "Orden",     limit: 4
  end

  create_table "Requerimiento_EvalAutor", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Numero_Compania",    limit: 4,    null: false
    t.integer  "Cod_Requerimiento",  limit: 4,    null: false
    t.integer  "Numero_Solicitud",   limit: 4,    null: false
    t.datetime "Fecha_Registro",                  null: false
    t.datetime "Fecha_Autorizacion",              null: false
    t.varchar  "Comentarios",        limit: 1000, null: false
    t.char     "Estatus",            limit: 1,    null: false
    t.integer  "CodUsu",             limit: 4,    null: false
    t.integer  "CodUsuAut",          limit: 4,    null: false
  end

  create_table "Requerimiento_Personal", primary_key: "ID", force: :cascade do |t|
    t.integer  "Compania",                  limit: 4,                            null: false
    t.integer  "Cod_CompaniaSolic",         limit: 4
    t.integer  "Clasificacion_Solicitante", limit: 4,                            null: false
    t.integer  "Codigo_Cargo",              limit: 4,                            null: false
    t.integer  "Solicitado_Por",            limit: 4,                            null: false
    t.datetime "Fecha"
    t.datetime "Fecha_Limite"
    t.integer  "CodCargo_Req",              limit: 4
    t.integer  "Personas",                  limit: 4
    t.varchar  "Estatus",                   limit: 1,                            null: false
    t.datetime "Fecha_InicTemp"
    t.datetime "Fecha_FinTemp"
    t.integer  "Tipo_Empleado_Req",         limit: 1
    t.varchar  "Sexo_Req",                  limit: 1
    t.integer  "EdadDesde_Req",             limit: 1
    t.integer  "EdadHasta_Req",             limit: 1
    t.integer  "Nacionalidad_Req",          limit: 4
    t.varchar  "Estado_Civil_Req",          limit: 1
    t.integer  "Tiene_LicCond_Req",         limit: 1
    t.integer  "Tiene_Vehic_Req",           limit: 1
    t.integer  "Cod_GradoAcad_Req",         limit: 4
    t.integer  "Cod_ProvResid_Req",         limit: 4
    t.integer  "Cod_MunResid_Req",          limit: 4
    t.integer  "Cod_Idioma_Req",            limit: 4
    t.char     "Nivel_ManejoIdioma_Req",    limit: 1
    t.money    "Salario_Desde_Req",                     precision: 19, scale: 4
    t.money    "Salario_Hasta_Req",                     precision: 19, scale: 4
    t.varchar  "Motivo_Requerimiento",      limit: 255
    t.varchar  "Usuario",                   limit: 30,                           null: false
    t.integer  "Cod_AreaConoc1",            limit: 4
    t.integer  "Cod_AreaConoc2",            limit: 4
    t.varchar  "PalabraClave1",             limit: 50
    t.varchar  "PalabraClave2",             limit: 50
    t.varchar  "PalabraClave3",             limit: 50
    t.integer  "AnosExperiencia",           limit: 1
  end

  add_index "Requerimiento_Personal", ["Cod_CompaniaSolic", "Clasificacion_Solicitante", "Solicitado_Por"], name: "IX_Requerimiento_Personal"

  create_table "Requerimientos_Aplicados", primary_key: "CodSolicitud", force: :cascade do |t|
    t.integer  "Usuario",    limit: 4
    t.datetime "FechaReg"
    t.integer  "CodReq",     limit: 4
    t.varchar  "Comentario", limit: 255
  end

  create_table "Requerimientos_Contratados", primary_key: "ContratacionId", force: :cascade do |t|
    t.integer  "EleccionId",      limit: 4
    t.integer  "RequerimientoId", limit: 4
    t.datetime "Fecha"
    t.varchar  "Usuario",         limit: 30
  end

  create_table "Requerimientos_DatosPublic", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "CodReq",        limit: 4, null: false
    t.integer "OrdenCriterio", limit: 4, null: false
    t.integer "Publicar",      limit: 1, null: false
  end

  create_table "Requerimientos_Elegidos", primary_key: "EleccionId", force: :cascade do |t|
    t.integer  "RequerimientoId",  limit: 4,                null: false
    t.integer  "Numero_solicitud", limit: 4,                null: false
    t.varchar  "Usuario",          limit: 30,               null: false
    t.datetime "FechaEleccion",                             null: false
    t.char     "Estatus",          limit: 1,  default: "P"
  end

  create_table "Requerimientos_EvalReq", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "CodRequerimiento", limit: 4, null: false
    t.integer "CodEvaluacion",    limit: 4, null: false
  end

  create_table "Requerimientos_ExamReq", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "CodRequerimiento", limit: 4, null: false
    t.integer "CodExamen",        limit: 4, null: false
  end

  create_table "Requerimientos_PerCursos", primary_key: "Cod_Requerimiento", force: :cascade do |t|
    t.integer "Cod_Curso",    limit: 4, null: false
    t.char    "Origen_Curso", limit: 1, null: false
    t.integer "Orden",        limit: 2, null: false
  end

  create_table "Requerimientos_PerHorarios", primary_key: "Cod_Requerimiento", force: :cascade do |t|
    t.integer "Horario_Dispon", limit: 4, null: false
    t.integer "Orden",          limit: 2, null: false
  end

  create_table "Requerimientos_PersonalBenef", id: false, force: :cascade do |t|
    t.integer "CodReq",   limit: 4
    t.integer "CodBenef", limit: 4
    t.decimal "Valor",              precision: 18, scale: 2
  end

  create_table "Requerimientos_PesoCrit", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "CodReq",        limit: 4,                         null: false
    t.integer "OrdenCriterio", limit: 4,                         null: false
    t.decimal "Peso",                    precision: 5, scale: 2, null: false
  end

  create_table "Retroactivos", id: false, force: :cascade do |t|
    t.integer "Id",              limit: 4,                 null: false
    t.integer "Codigo_Empleado", limit: 4
    t.integer "Codigo_Accion",   limit: 4
    t.integer "Periodos",        limit: 4
    t.integer "Valor_Aumento",   limit: 4
    t.boolean "Autorizado",                default: false, null: false
    t.boolean "Pagado",                    default: false, null: false
    t.integer "rta_CodCompania", limit: 4
  end

  add_index "Retroactivos", ["Codigo_Empleado"], name: "Personal_Nomina_AltCumb_dbo_Retroactivos Codigo_Empleado"

  create_table "RolesSubGrupNomAcceso", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "CodRol",         limit: 4, null: false
    t.integer "CodSubGrupoNom", limit: 4, null: false
  end

  create_table "Roles_Nomina", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion_Roll", limit: 50, null: false
    t.integer "Codigo_Compania",  limit: 4,  null: false
  end

  create_table "Roles_Personal", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion_Roll", limit: 50, null: false
    t.integer "Codigo_Compania",  limit: 4,  null: false
  end

  create_table "SET_Nacionalidades", id: false, force: :cascade do |t|
    t.integer "Codigo",      limit: 4
    t.varchar "Descripcion", limit: 100
  end

  create_table "SET_Ocupaciones", id: false, force: :cascade do |t|
    t.integer "Codigo",      limit: 4
    t.nchar   "Descripcion", limit: 200
  end

  create_table "Sectores", primary_key: "Codigo", force: :cascade do |t|
    t.string  "Descripcion_Sector", limit: 50, null: false
    t.integer "Codigo_Provincia",   limit: 4
    t.integer "Codigo_Municipio",   limit: 4,  null: false
  end

  create_table "Sectores_Economicos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",      limit: 100, null: false
    t.integer "CodAreaEconomica", limit: 4
  end

  create_table "Secuencia_Cheques", id: false, force: :cascade do |t|
    t.varchar  "Concepto",        limit: 255,                          null: false
    t.integer  "Ano",             limit: 4,                            null: false
    t.integer  "Mes",             limit: 1,                            null: false
    t.integer  "Periodo",         limit: 1,                            null: false
    t.integer  "Codigo_Empleado", limit: 4,                            null: false
    t.varchar  "Numero_Cheque",   limit: 50,                           null: false
    t.money    "Valor",                       precision: 19, scale: 4, null: false
    t.varchar  "Estatus",         limit: 1,                            null: false
    t.integer  "Tipo_Nomina",     limit: 4,                            null: false
    t.integer  "CodLote",         limit: 4
    t.integer  "CodCompania",     limit: 4
    t.datetime "FechaCheque"
    t.integer  "Transferida",     limit: 1
  end

  create_table "Seguro_Inclucion_Exclucion", primary_key: "Codigo", force: :cascade do |t|
    t.integer "sie_CodCompania",       limit: 4
    t.integer "Codigo_Empleado",       limit: 4
    t.integer "Codigo_Tipo_Seguro",    limit: 4
    t.integer "Codigo_Plan_Seguro",    limit: 4
    t.integer "Codigo_Nomina",         limit: 4
    t.integer "Codigo_Tipo_Descuento", limit: 4
    t.integer "Periodo_Descuento",     limit: 1
    t.integer "Tarifa_Familiar",       limit: 1
    t.integer "Tarifa_Personal",       limit: 1
    t.integer "Tarifa_Opcional",       limit: 1
    t.integer "Tarifa_Dependientes",   limit: 1
  end

  create_table "Seguro_Social", primary_key: "Codigo", force: :cascade do |t|
    t.money "Desde",            precision: 19, scale: 4
    t.money "Hasta",            precision: 19, scale: 4
    t.money "Semana1_Patrono",  precision: 19, scale: 4
    t.money "Semana1_Empleado", precision: 19, scale: 4
    t.money "Semana2_Patrono",  precision: 19, scale: 4
    t.money "Semana2_Empleado", precision: 19, scale: 4
    t.money "Semana3_Patrono",  precision: 19, scale: 4
    t.money "Semana3_Empleado", precision: 19, scale: 4
    t.money "Semana4_Patrono",  precision: 19, scale: 4
    t.money "Semana4_Empleado", precision: 19, scale: 4
    t.money "Semana5_Patrono",  precision: 19, scale: 4
    t.money "Semana5_Empleado", precision: 19, scale: 4
  end

  create_table "Semanas_Mes", id: false, force: :cascade do |t|
    t.integer "Mes",             limit: 1
    t.integer "Semanas",         limit: 1
    t.integer "Primer_Dia",      limit: 1
    t.integer "Ultimo_Dia",      limit: 1
    t.integer "Comp_SemLabEmpD", limit: 1
  end

  create_table "Si_ConstraintPermisos", primary_key: "Perm_Codigo", force: :cascade do |t|
    t.varchar "Perm_Descripcion", limit: 50, null: false
  end

  create_table "Si_Errores", primary_key: "err_Secuencia", force: :cascade do |t|
    t.varchar  "err_Descripcion", limit: 1000, null: false
    t.datetime "err_FechaReg",                 null: false
  end

  create_table "Si_LogTablas", primary_key: "Tabla", force: :cascade do |t|
    t.varchar "Alias",     limit: 50, null: false
    t.varchar "Campo_Cod", limit: 30, null: false
  end

  create_table "Si_LogTransacciones", id: false, force: :cascade do |t|
    t.varchar  "Log_Modulo",       limit: 3,    null: false
    t.varchar  "Log_Operacion",    limit: 30,   null: false
    t.varchar  "Log_Tabla",        limit: 100,  null: false
    t.datetime "Log_FechaHora",                 null: false
    t.varchar  "Log_Cod_Registro", limit: 100,  null: false
    t.integer  "Log_Usuario",      limit: 4,    null: false
    t.varchar  "Log_ValAnt",       limit: 2000
    t.varchar  "Log_ValAct",       limit: 2000
    t.integer  "Log_CodCompania",  limit: 4
    t.varchar  "Log_Maquina",      limit: 100
  end

  create_table "Si_Modulos", primary_key: "Mod_Codigo", force: :cascade do |t|
    t.varchar "Mod_Descripcion", limit: 100, null: false
  end

  create_table "Si_Pantallas", primary_key: "Pan_Codigo", force: :cascade do |t|
    t.varchar "Pan_Descripcion", limit: 100, null: false
    t.varchar "Pan_CodModulo",   limit: 3,   null: false
  end

  create_table "Si_Roles", primary_key: "Rol_CodCompania", force: :cascade do |t|
    t.integer "Rol_Codigo",      limit: 4,  null: false
    t.varchar "Rol_Descripcion", limit: 50, null: false
    t.integer "Rol_CodUsuario",  limit: 4,  null: false
  end

  create_table "Si_RolesPantallas", primary_key: "prol_CodCompania", force: :cascade do |t|
    t.integer "prol_CodRoll",   limit: 4, null: false
    t.varchar "prol_CodModulo", limit: 3, null: false
    t.integer "prol_CodPant",   limit: 4, null: false
    t.integer "prol_Leer",      limit: 1
    t.integer "prol_Guardar",   limit: 1
    t.integer "prol_Eliminar",  limit: 1
    t.integer "prol_Imprimir",  limit: 1
  end

  create_table "Si_Usuarios", primary_key: "Usu_Codigo", force: :cascade do |t|
    t.integer "Usu_CodCompania",  limit: 4,              null: false
    t.varchar "Usu_Nombre",       limit: 50,             null: false
    t.varchar "Usu_UserID",       limit: 30,             null: false
    t.float   "Usu_Clave"
    t.integer "Usu_Estatus",      limit: 1,              null: false
    t.integer "Usu_CambiarClave", limit: 1,  default: 1
    t.integer "Usu_Admin",        limit: 1
  end

  create_table "Si_UsuariosRoles", primary_key: "usug_CodCompania", force: :cascade do |t|
    t.integer "usug_CodUsuario", limit: 4, null: false
    t.integer "usug_CodRol",     limit: 4, null: false
  end

  create_table "Sol_ControlesInactivos", primary_key: "ControlCodigo", force: :cascade do |t|
    t.string "ControlId", limit: 50
  end

  create_table "Solic_evaluaciones", primary_key: "EvalId", force: :cascade do |t|
    t.integer  "CodReq",        limit: 4, null: false
    t.integer  "NoSolicitud",   limit: 4, null: false
    t.integer  "Cod_TipoEval",  limit: 4, null: false
    t.integer  "Codigo_Escala", limit: 4, null: false
    t.float    "Calificacion",            null: false
    t.datetime "Fecha",                   null: false
  end

  create_table "Solicitantes_Entrevista", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Numero_Compania",      limit: 4,          null: false
    t.integer  "Codigo_Requerimiento", limit: 4,          null: false
    t.integer  "Numero_Solicitud",     limit: 4
    t.integer  "Codigo_Entrevistador", limit: 4
    t.datetime "Fecha_Registro"
    t.datetime "Fecha_Entrevista"
    t.datetime "Hora_Entrevista"
    t.integer  "Codigo_Escala",        limit: 4
    t.ntext    "Comentarios",          limit: 2147483647
    t.varchar  "Usuario",              limit: 30,         null: false
  end

  add_index "Solicitantes_Entrevista", ["Numero_Compania", "Codigo_Requerimiento"], name: "IX_Solicitantes_Entrevista"

  create_table "Solicitantes_EvalTipos", primary_key: "CodEvalSolic", force: :cascade do |t|
    t.integer "Orden",         limit: 4, null: false
    t.integer "Cod_TipoEval",  limit: 4, null: false
    t.integer "Codigo_Escala", limit: 4, null: false
    t.float   "Calificacion",            null: false
  end

  create_table "Solicitantes_Evaluaciones", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Numero_Compania",     limit: 4,    null: false
    t.integer  "Cod_Requerimiento",   limit: 4,    null: false
    t.integer  "Numero_Solicitud",    limit: 4,    null: false
    t.integer  "Cod_Entrevistador",   limit: 4,    null: false
    t.datetime "Fecha_Registro",                   null: false
    t.datetime "Fecha_Entrevista",                 null: false
    t.varchar  "Hora_Entrevista",     limit: 15,   null: false
    t.varchar  "Comentarios",         limit: 1000, null: false
    t.char     "Estatus",             limit: 1,    null: false
    t.char     "Estatus_Solicitante", limit: 1,    null: false
    t.varchar  "Usuario",             limit: 30,   null: false
  end

  add_index "Solicitantes_Evaluaciones", ["Cod_Requerimiento", "Numero_Solicitud"], name: "IX_Solicitantes_Evaluaciones"

  create_table "Solicitantes_Exam_Detalle", primary_key: "Codigo_Examen", force: :cascade do |t|
    t.integer "Codigo_SolExamen", limit: 4,  null: false
    t.integer "TipoExamen",       limit: 4,  null: false
    t.varchar "ExaminadoPor",     limit: 60, null: false
    t.varchar "Estatus",          limit: 1,  null: false
  end

  create_table "Solicitantes_Examenes", primary_key: "Codigo", force: :cascade do |t|
    t.datetime "Fecha_Registro"
    t.varchar  "Hora_Registro",     limit: 10
    t.integer  "Cod_Requerimiento", limit: 4,   null: false
    t.integer  "Cod_Solicitud",     limit: 4,   null: false
    t.varchar  "Comentario",        limit: 100
    t.varchar  "Usuario",           limit: 30
    t.datetime "Fecha_Examen"
    t.char     "Estatus",           limit: 1
    t.char     "Estatus_Solic",     limit: 1
  end

  create_table "SolicitudCriteriosSeleccion", id: false, force: :cascade do |t|
    t.integer "CodUsuario",  limit: 4
    t.integer "CodCompania", limit: 4
    t.varchar "Concepto",    limit: 2
    t.varchar "ValorCrit",   limit: 30
  end

  create_table "Solicitud_Cartas", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "Cod_Compania",      limit: 4,               null: false
    t.integer  "Cod_Empleado",      limit: 4,               null: false
    t.datetime "Fecha_Registro",                            null: false
    t.varchar  "Nombre_Carta",      limit: 100
    t.varchar  "Comentario",        limit: 255
    t.integer  "Autorizada",        limit: 1,   default: 0
    t.varchar  "ComentarioRetroal", limit: 500
    t.integer  "Impresa",           limit: 1
  end

  create_table "Solicitud_CoincidBusq", primary_key: "Numero_Solicitud", force: :cascade do |t|
    t.integer "CodCompania",           limit: 4, null: false
    t.integer "Coincide_Sexo",         limit: 1, null: false
    t.integer "Coincide_Provincia",    limit: 1, null: false
    t.integer "Concide_Municipio",     limit: 1, null: false
    t.integer "Coincide_Nacionalidad", limit: 1, null: false
    t.integer "Coincide_AreaCono1",    limit: 1, null: false
    t.integer "Coincide_AreaCono2",    limit: 1, null: false
    t.integer "Coincide_EstadoCiv",    limit: 1, null: false
    t.integer "Coincide_AnosExp",      limit: 1, null: false
    t.integer "Coincide_GradoAcad",    limit: 1, null: false
    t.integer "Coincide_NivelAlcan",   limit: 1, null: false
    t.integer "Coincide_Estudio",      limit: 1, null: false
    t.integer "Concide_TieneLic",      limit: 1, null: false
    t.integer "Coincide_TieneVeh",     limit: 1, null: false
    t.float   "Ranking",                         null: false
    t.float   "RankingOtros",                    null: false
    t.integer "Coincide_Competencia",  limit: 1
    t.integer "Coincide_Cargo",        limit: 1
  end

  create_table "Solicitud_Contratacion", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "CodSolicitud",     limit: 4,                          null: false
    t.integer  "CodRequerimiento", limit: 4,                          null: false
    t.integer  "Cod_Compania",     limit: 4,                          null: false
    t.decimal  "SalarioBase",                precision: 18, scale: 2, null: false
    t.decimal  "SalarioHora",                precision: 18, scale: 2, null: false
    t.integer  "CodSucursal",      limit: 4,                          null: false
    t.integer  "CodCargo",         limit: 4,                          null: false
    t.integer  "NominaSalario",    limit: 4,                          null: false
    t.integer  "CodPoliticaHor",   limit: 4,                          null: false
    t.integer  "CodSupervisor",    limit: 4,                          null: false
    t.integer  "CodSubGrupoNom",   limit: 4,                          null: false
    t.varchar  "MonedaSalario",    limit: 5,                          null: false
    t.integer  "TipoEmpleado",     limit: 2,                          null: false
    t.char     "TipoLabor",        limit: 1,                          null: false
    t.datetime "FechaRegistro",                                       null: false
    t.datetime "FechaIngreso",                                        null: false
    t.datetime "FechaFinContrato",                                    null: false
    t.integer  "CodUsuario",       limit: 4,                          null: false
    t.integer  "CodFormContrato",  limit: 4
  end

  create_table "Solicitud_ContratoForm", primary_key: "Secuencia", force: :cascade do |t|
    t.varchar    "NombreContrato", limit: 100,        null: false
    t.integer    "Cod_Cargo",      limit: 4,          null: false
    t.text_basic "Contrato",       limit: 2147483647, null: false
    t.integer    "CodCompania",    limit: 4
  end

  create_table "Solicitud_Contratos", id: false, force: :cascade do |t|
    t.integer    "Cod_Solicitud", limit: 4,          null: false
    t.text_basic "Contrato",      limit: 2147483647, null: false
    t.string     "ContratoHTML",  limit: 4000
  end

  create_table "Solicitud_Cualidades", primary_key: "Numero_Solicitud", force: :cascade do |t|
    t.integer "Codigo_Cualidad", limit: 4, null: false
    t.integer "Grado",           limit: 1, null: false
  end

  create_table "Solicitud_Dependientes", id: false, force: :cascade do |t|
    t.integer  "ID",               limit: 4,  null: false
    t.integer  "Numero_Solicitud", limit: 4,  null: false
    t.varchar  "Nombre",           limit: 50, null: false
    t.datetime "Fecha_Nacimiento"
    t.varchar  "Parentesco",       limit: 50, null: false
  end

  create_table "Solicitud_EmpCambioEst", id: false, force: :cascade do |t|
    t.integer  "Numero_Compania",  limit: 4, null: false
    t.integer  "Numero_Solicitud", limit: 4, null: false
    t.varchar  "Estatus_SolAnt",   limit: 2, null: false
    t.varchar  "Estatus_SolAct",   limit: 2, null: false
    t.datetime "Fecha_CambEst",              null: false
  end

  create_table "Solicitud_EmpContrato", id: false, force: :cascade do |t|
    t.integer  "Codigo",            limit: 4,  null: false
    t.integer  "Cod_Compania",      limit: 4,  null: false
    t.integer  "Cod_Requerimiento", limit: 4,  null: false
    t.integer  "Numero_Solicitud",  limit: 4,  null: false
    t.datetime "Fecha_Registro",               null: false
    t.integer  "Pendiente",         limit: 1,  null: false
    t.varchar  "Usuario",           limit: 30, null: false
  end

  create_table "Solicitud_EmpDocum", primary_key: "Numero_Solicitud", force: :cascade do |t|
    t.integer "Cod_Documento", limit: 4, null: false
    t.integer "Cod_Compania",  limit: 4
    t.integer "Orden",         limit: 2
  end

  create_table "Solicitud_Empleo", primary_key: "Numero_solicitud", force: :cascade do |t|
    t.integer  "Numero_Compania",               limit: 4,                                         null: false
    t.varchar  "Nombre",                        limit: 30,                                        null: false
    t.varchar  "Apellido_Paterno",              limit: 20,                                        null: false
    t.varchar  "Apellido_Materno",              limit: 20
    t.varchar  "Direccion",                     limit: 100,                                       null: false
    t.varchar  "Telefono1",                     limit: 13
    t.varchar  "Telefono2",                     limit: 13
    t.varchar  "E_Mail",                        limit: 100
    t.datetime "Fecha_nacimiento",                                                                null: false
    t.varchar  "Lugar_Nacimiento",              limit: 50
    t.integer  "Nacionalidad",                  limit: 4,                                         null: false
    t.varchar  "Cedula",                        limit: 13
    t.varchar  "Pasaporte",                     limit: 25
    t.varchar  "Estado_Civil",                  limit: 1,                                         null: false
    t.varchar  "Sexo",                          limit: 1,                                         null: false
    t.integer  "Lengua_Materna",                limit: 4
    t.money    "Salario_Aspira",                             precision: 19, scale: 4
    t.varchar  "Dependientes",                  limit: 1,                                         null: false
    t.varchar  "Nombre_Referencia1",            limit: 40
    t.varchar  "Compania_Referencia1",          limit: 40
    t.varchar  "Telefono_Referencia1",          limit: 13
    t.varchar  "Ocupacion1",                    limit: 20
    t.varchar  "Nombre_Referencia2",            limit: 40
    t.varchar  "Compania_Referencia2",          limit: 40
    t.varchar  "Telefono_Referencia2",          limit: 13
    t.varchar  "Ocupacion2",                    limit: 20
    t.varchar  "Nombre_Referencia3",            limit: 40
    t.varchar  "Compania_Referencia3",          limit: 40
    t.varchar  "Telefono_Referencia3",          limit: 13
    t.varchar  "Ocupacion3",                    limit: 20
    t.varchar  "Familiar_Empresa",              limit: 1
    t.varchar  "Nombre_Familiar",               limit: 30
    t.varchar  "Empleado_Nuestro",              limit: 1,                                         null: false
    t.varchar  "Empleado_Anteriormente",        limit: 1,                                         null: false
    t.varchar  "Empleado_Actualmente",          limit: 1,                                         null: false
    t.varchar  "Disponible_Trabajar",           limit: 1,                                         null: false
    t.integer  "Posicion_Aspira",               limit: 4
    t.datetime "Fecha_Disponible"
    t.varchar  "Emergencias_Tipo_Sangre",       limit: 10
    t.varchar  "Emergencias_Reaccion_Alergica", limit: 30
    t.varchar  "Emergencias_pariente",          limit: 30
    t.varchar  "Emergencias_Direccion",         limit: 60
    t.varchar  "Emergencias_Telefono",          limit: 13
    t.varchar  "Emergencias_Nombre_medico",     limit: 30
    t.varchar  "Emergencias_Telefono_Medico",   limit: 13
    t.varchar  "Tipo_Licencia",                 limit: 20
    t.integer  "Codigo_Grado_Academico",        limit: 4
    t.datetime "Fecha_Solicitud"
    t.varchar  "Estatus_Solicitud",             limit: 1,                                         null: false
    t.integer  "Cod_Sector",                    limit: 4
    t.varchar  "Usuario",                       limit: 30,                                        null: false
    t.varchar  "NombreConyugue",                limit: 50
    t.integer  "OtroCargoAspira",               limit: 4
    t.varchar  "ParentescoFamiTrab",            limit: 20
    t.datetime "Fecha_UltEval"
    t.integer  "Estatura_Pies",                 limit: 1
    t.integer  "Estatura_Pulg",                 limit: 1
    t.integer  "Tiene_Vehic",                   limit: 1
    t.integer  "Tiene_LicCond",                 limit: 1
    t.varchar  "Email2",                        limit: 100
    t.varchar  "Foto",                          limit: 255
    t.integer  "Cod_AreaConoc1",                limit: 4
    t.integer  "Cod_AreaConoc2",                limit: 4
    t.varchar  "Comentarios",                   limit: 1000
    t.datetime "Fecha_Vence"
    t.integer  "Cod_Provincia",                 limit: 4
    t.integer  "Cod_Municipio",                 limit: 4
    t.datetime "Fecha_UltAct"
    t.integer  "Descargada",                    limit: 1,                             default: 0
    t.integer  "AnosExperiencia",               limit: 4,                             default: 0
    t.float    "Peso"
    t.varchar  "NombreCargoAspira",             limit: 100
    t.varchar  "NombreOtroCargo",               limit: 100
  end

  add_index "Solicitud_Empleo", ["Apellido_Materno", "Apellido_Paterno", "Nombre"], name: "IX_Solicitud_Empleo_2"
  add_index "Solicitud_Empleo", ["Cedula"], name: "IX_Solicitud_Empleo_1"
  add_index "Solicitud_Empleo", ["Pasaporte"], name: "IX_Solicitud_Empleo"

  create_table "Solicitud_EstatusHist", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Numero_solicitud",  limit: 4
    t.varchar  "EstatusAnterior",   limit: 1
    t.datetime "FechaModificacion"
    t.varchar  "EstatusActual",     limit: 1
    t.integer  "Cod_Requerimiento", limit: 4
  end

  create_table "Solicitud_Estudios", primary_key: "ID", force: :cascade do |t|
    t.integer  "Numero_Solicitud",    limit: 4,   null: false
    t.datetime "Fecha_Desde"
    t.datetime "Fecha_Hasta"
    t.varchar  "Institucion",         limit: 100
    t.varchar  "Ubicacion",           limit: 200
    t.varchar  "Estudios_Realizados", limit: 100
    t.varchar  "Nivel_Alcanzado",     limit: 100
    t.integer  "Codigo_Curso",        limit: 4
    t.integer  "Codigo_Estudios",     limit: 4
    t.integer  "Codigo_Institucion",  limit: 4
  end

  create_table "Solicitud_Estudios_1", primary_key: "ID", force: :cascade do |t|
    t.integer  "Numero_Solicitud", limit: 4,    null: false
    t.integer  "Codigo_Curso",     limit: 4,    null: false
    t.datetime "Fecha_Desde"
    t.datetime "Fecha_Hasta"
    t.varchar  "NombreCurso",      limit: 100
    t.varchar  "Institucion",      limit: 100
    t.varchar  "Ubicacion",        limit: 100
    t.varchar  "Comentarios",      limit: 1000
  end

  create_table "Solicitud_EvalRequeridas", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "Codigo",      limit: 4, null: false
    t.integer "CodCargo",    limit: 4, null: false
    t.char    "Genero",      limit: 1, null: false
    t.integer "CodTipoEval", limit: 4, null: false
    t.integer "Orden",       limit: 4, null: false
  end

  create_table "Solicitud_ExamRequeridos", primary_key: "CodCompania", force: :cascade do |t|
    t.integer "Codigo",      limit: 4, null: false
    t.integer "CodCargo",    limit: 4, null: false
    t.char    "Genero",      limit: 1, null: false
    t.integer "CodTipoExam", limit: 4, null: false
    t.integer "Orden",       limit: 4, null: false
  end

  create_table "Solicitud_Experiencia", id: false, force: :cascade do |t|
    t.integer  "ID",               limit: 4,                            null: false
    t.integer  "Numero_Solicitud", limit: 4,                            null: false
    t.varchar  "Nombre_Empleador", limit: 50
    t.varchar  "Ubicacion",        limit: 100
    t.varchar  "Telefono",         limit: 13
    t.varchar  "Puesto",           limit: 40
    t.datetime "Fecha_Desde"
    t.datetime "Fecha_Hasta"
    t.varchar  "Funcion",          limit: 100
    t.varchar  "Motivo_Retiro",    limit: 100
    t.money    "Ultimo_Salario",               precision: 19, scale: 4
    t.integer  "CodAreaConoc",     limit: 4
  end

  create_table "Solicitud_Habilidades", id: false, force: :cascade do |t|
    t.integer "Numero_Solicitud", limit: 4
    t.integer "Codigo_Habilidad", limit: 4
    t.integer "Codigo_Grados",    limit: 4
  end

  create_table "Solicitud_HorarioDisp", id: false, force: :cascade do |t|
    t.integer "Numero_Solicitud", limit: 4, null: false
    t.varchar "Horario",          limit: 2, null: false
    t.integer "Id",               limit: 4
  end

  create_table "Solicitud_Idiomas", primary_key: "Id", force: :cascade do |t|
    t.integer "Numero_Solicitud", limit: 4, null: false
    t.integer "Codigo_Idioma",    limit: 4, null: false
    t.varchar "Lee",              limit: 1
    t.varchar "Escribe",          limit: 1
    t.varchar "Habla",            limit: 1
  end

  create_table "Solicitud_Imagen", primary_key: "Imagen_Codigo", force: :cascade do |t|
    t.integer "Numero_Usuario", limit: 4
    t.varchar "Imagen",         limit: 10
  end

  create_table "Solicitud_Posiciones", id: false, force: :cascade do |t|
    t.integer "Numero_solicitud",     limit: 4
    t.integer "Codigo_Clasificacion", limit: 4
    t.integer "Codigo_Posicion",      limit: 4
  end

  create_table "Solicitud_PrecioEvaluacion", primary_key: "Id", force: :cascade do |t|
    t.integer  "CodCompania",      limit: 4,                          null: false
    t.integer  "CodEvaluacion",    limit: 4,                          null: false
    t.decimal  "PrecioXCandidato",           precision: 18, scale: 2, null: false
    t.datetime "FechaReg",                                            null: false
    t.datetime "FechaUltAct"
  end

  create_table "Solicitud_PrecioExamen", primary_key: "Id", force: :cascade do |t|
    t.integer  "CodCompania",      limit: 4,                          null: false
    t.integer  "CodExamen",        limit: 4,                          null: false
    t.decimal  "PrecioXCandidato",           precision: 18, scale: 2, null: false
    t.datetime "FechaReg",                                            null: false
    t.datetime "FechaUltAct"
  end

  create_table "SolicitudesCriteriosPublic", primary_key: "Orden", force: :cascade do |t|
    t.varchar "DescripcionCriterio", limit: 50, null: false
    t.integer "Publicar",            limit: 1,  null: false
  end

  create_table "SolicitudesPesoCriterios", primary_key: "Orden", force: :cascade do |t|
    t.varchar "DescripcionCriterio", limit: 50,                         null: false
    t.varchar "Criterio",            limit: 50,                         null: false
    t.decimal "Peso",                           precision: 5, scale: 2, null: false
  end

  create_table "Solicitudes_Otras", primary_key: "Secuencia", force: :cascade do |t|
    t.integer  "Cod_Compania",      limit: 4,               null: false
    t.integer  "Cod_Empleado",      limit: 4,               null: false
    t.datetime "Fecha_Registro",                            null: false
    t.varchar  "Asunto",            limit: 100
    t.varchar  "Comentario",        limit: 500
    t.integer  "Autorizada",        limit: 1,   default: 0
    t.varchar  "ComentarioRetroal", limit: 500
  end

  create_table "SubGruposEmpDistG", primary_key: "Compania", force: :cascade do |t|
    t.integer "CodSubGrupo",     limit: 4,                          null: false
    t.integer "CodSubGrupoDist", limit: 4,                          null: false
    t.decimal "Porcentaje",                precision: 18, scale: 2, null: false
  end

  create_table "SubGrupos_CentroCosto_Borrar", id: false, force: :cascade do |t|
    t.integer "codigo",  limit: 4
    t.varchar "centroc", limit: 10
    t.varchar "depart",  limit: 10
  end

  create_table "SubGrupos_Empleados", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Codigo_Grupo",    limit: 4,   null: false
    t.varchar "Descripcion",     limit: 100, null: false
    t.integer "Compania",        limit: 4,   null: false
    t.varchar "Numero_Cuenta",   limit: 50
    t.integer "Orden_Nomina",    limit: 2
    t.varchar "CC_Contabilidad", limit: 20
    t.varchar "Estatus_SG",      limit: 1
    t.varchar "NoDepartamento",  limit: 20
    t.integer "Distribuir",      limit: 1
    t.varchar "ProjectCodeS",    limit: 20
    t.integer "CodNormaReparto", limit: 4
  end

  add_index "SubGrupos_Empleados", ["Codigo", "Codigo_Grupo"], name: "Personal_Nomina_AltCumb_dbo_SubGrupos_Empleados idx_Grupo_SubGrupo", unique: true
  add_index "SubGrupos_Empleados", ["Codigo", "Codigo_Grupo"], name: "Personal_Nomina_dbo_SubGrupos_Empleados idx_Grupo_SubGrupo", unique: true

  create_table "Sucursales", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",     limit: 100, null: false
    t.integer "Numero_Compania", limit: 4
    t.varchar "Direccion",       limit: 75
    t.integer "Cod_Sector",      limit: 4
    t.varchar "Telefono",        limit: 12
    t.varchar "Fax",             limit: 12
    t.varchar "Registro_NacLab", limit: 20
    t.varchar "Usuario",         limit: 30
    t.varchar "No_Sucursal",     limit: 20
    t.integer "EsPrincipal",     limit: 1
    t.varchar "CuentaBanco",     limit: 30
    t.varchar "CodSucSuirPlus",  limit: 20
  end

  create_table "Sueldo_Navidad", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "Tipo_Nomina",         limit: 4
    t.integer  "Compania",            limit: 4,                                       null: false
    t.integer  "Ano_Correspondiente", limit: 2,                                       null: false
    t.datetime "Fecha_Procesamiento",                                                 null: false
    t.money    "Total_Regalia",                  precision: 19, scale: 4
    t.money    "Total_Descuentos",               precision: 19, scale: 4
    t.money    "Total_Neto",                     precision: 19, scale: 4,             null: false
    t.integer  "Ano_Cont",            limit: 4
    t.integer  "Periodo_Cont",        limit: 1
    t.integer  "Transferida",         limit: 1,                           default: 0
    t.integer  "NoTransfMod",         limit: 4,                           default: 0
    t.integer  "NoAsientoCG",         limit: 4,                           default: 0
    t.varchar  "Usuario",             limit: 30,                                      null: false
  end

  add_index "Sueldo_Navidad", ["Compania", "Ano_Correspondiente"], name: "IX_Sueldo_Navidad"

  create_table "Sueldo_Navidad_Detalles", primary_key: "Codigo_Regalia", force: :cascade do |t|
    t.integer "snd_CodCompania",     limit: 4,                          null: false
    t.integer "Codigo_Empleado",     limit: 4,                          null: false
    t.varchar "Tipo_Novedad",        limit: 1,                          null: false
    t.integer "Codigo_Tipo_Novedad", limit: 4,                          null: false
    t.money   "Valor",                         precision: 19, scale: 4, null: false
  end

  create_table "Sueldo_Navidad_Emp", primary_key: "Codigo_Regalia", force: :cascade do |t|
    t.integer "Codigo_Empleado",   limit: 4,                          null: false
    t.integer "sne_CodCompania",   limit: 4,                          null: false
    t.integer "Cod_Posicion",      limit: 4
    t.money   "Salario_Base",                precision: 19, scale: 4, null: false
    t.money   "Acumulado_Ano",               precision: 19, scale: 4, null: false
    t.integer "Meses",             limit: 1
    t.varchar "Estatus",           limit: 1,                          null: false
    t.money   "Valor_Descuentos",            precision: 19, scale: 4
    t.money   "Valor_Regalia",               precision: 19, scale: 4, null: false
    t.money   "Regalia_Neta",                precision: 19, scale: 4
    t.money   "Ingresos_ISR",                precision: 19, scale: 4
    t.money   "ISR_PendCompensar",           precision: 19, scale: 4
    t.money   "ISR_Compensado",              precision: 19, scale: 4
    t.varchar "snMoneda",          limit: 5
  end

  create_table "Tablas", id: false, force: :cascade do |t|
    t.varchar "Nom_Tabla",       limit: 100
    t.integer "Secuencia",       limit: 4
    t.varchar "NombreTabla",     limit: 100
    t.varchar "NombrePantalla",  limit: 100
    t.varchar "DescripcionPant", limit: 1000
  end

  create_table "Tablas_Campos", id: false, force: :cascade do |t|
    t.varchar "Nom_Tabla",        limit: 100
    t.varchar "Nom_Campo",        limit: 100
    t.integer "SecuenTabla",      limit: 4
    t.varchar "NombreCampo",      limit: 100
    t.varchar "DescripcionCampo", limit: 1000
    t.varchar "TipoDato",         limit: 30
    t.integer "Longitud",         limit: 2
    t.integer "Requerido",        limit: 1
    t.varchar "NombreControl",    limit: 100
    t.varchar "TipoControl",      limit: 30
    t.varchar "NombrePantRelac",  limit: 100
  end

  create_table "Tipo_Descuentos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",         limit: 50, null: false
    t.integer "Forma_descuento",     limit: 4
    t.integer "Orden_Nomina",        limit: 1
    t.integer "ReducIngImp",         limit: 1
    t.integer "Reduce_CxC",          limit: 1
    t.integer "DespGrupoDesc",       limit: 1
    t.integer "OcultarDesc",         limit: 1
    t.char    "EstatusDesc",         limit: 1
    t.integer "OrdenCol",            limit: 2
    t.integer "EsAporteVolAFP",      limit: 1
    t.integer "NoSumarizarCompPago", limit: 1
    t.varchar "AliasDescuento",      limit: 30
  end

  add_index "Tipo_Descuentos", ["Descripcion"], name: "IX_Tipo_Descuentos", unique: true

  create_table "Tipo_Descuentos_Nomina", primary_key: "Codigo_tipo_descuento", force: :cascade do |t|
    t.integer "Tipo_nomina", limit: 4, null: false
  end

  create_table "Tipo_Evaluaciones", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion_Evaluacion", limit: 60, null: false
    t.char    "Evaluado",               limit: 1
    t.integer "Tipo_360",               limit: 1
    t.char    "Evaluador",              limit: 1
    t.integer "teCodCompania",          limit: 4
  end

  create_table "Tipo_Horas", primary_key: "Codigo", force: :cascade do |t|
    t.float   "Porciento"
    t.varchar "Descripcion",             limit: 50, null: false
    t.integer "Orden_Nomina",            limit: 1
    t.integer "Incentivo_Extra",         limit: 4
    t.integer "Costo_Fijo",              limit: 1
    t.integer "Costo_Salario",           limit: 1
    t.integer "Costo_Variable",          limit: 1
    t.float   "Costo_Hora"
    t.integer "Computable_Prestaciones", limit: 1
    t.integer "Computable_SS",           limit: 1
    t.integer "Computable_ISR",          limit: 1
    t.integer "Computable_Regalia",      limit: 1
    t.integer "Computable_Pension",      limit: 1
    t.integer "Computable_Salud",        limit: 1
    t.integer "Computable_Riesgo",       limit: 1
    t.varchar "Concepto",                limit: 1
    t.integer "Horas_SemDes",            limit: 1
    t.integer "Horas_SemHas",            limit: 1
    t.integer "Computable_Ces",          limit: 1
    t.integer "Computable_Preav",        limit: 1
    t.integer "Computable_Vac",          limit: 1
    t.integer "Computable_Bonif",        limit: 1
    t.integer "Computable_Infotep",      limit: 1
    t.varchar "AliasHora",               limit: 20
    t.integer "PagarSobreHNoct",         limit: 1
  end

  add_index "Tipo_Horas", ["Descripcion"], name: "IX_Tipo_Horas", unique: true

  create_table "Tipo_Horas_nomina", primary_key: "Codigo_tipo_horas", force: :cascade do |t|
    t.integer "Tipo_nomina", limit: 4, null: false
  end

  create_table "Tipo_Ingresos", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",             limit: 50, null: false
    t.integer "Computable_Prestaciones", limit: 1
    t.integer "Computable_SS",           limit: 1
    t.integer "Computable_ISR",          limit: 1
    t.integer "Computable_Regalia",      limit: 1
    t.integer "Computable_Pension",      limit: 1
    t.integer "Computable_Salud",        limit: 1
    t.integer "Computable_Riesgo",       limit: 1
    t.integer "Ingreso_Calculado",       limit: 1
    t.integer "Computable_Ces",          limit: 1
    t.integer "Computable_Preav",        limit: 1
    t.integer "Computable_Vac",          limit: 1
    t.integer "Computable_Bonif",        limit: 1
    t.integer "Computable_BVac",         limit: 1
    t.integer "Ingreso_Salario",         limit: 1
    t.integer "Computable_Infotep",      limit: 1
    t.char    "EstatusIng",              limit: 1
    t.varchar "AliasIngreso",            limit: 20
    t.integer "Desplegar_Negativo",      limit: 1
    t.integer "ValorUnitSalHora",        limit: 1
    t.integer "PorcientoSalHora",        limit: 1
  end

  add_index "Tipo_Ingresos", ["Descripcion"], name: "IX_Tipo_Ingresos", unique: true

  create_table "Tipo_Ingresos_Nomina", primary_key: "Codigo_tipo_ingreso", force: :cascade do |t|
    t.integer "Tipo_nomina", limit: 4, null: false
  end

  create_table "Tipo_Nominas_Empleado", primary_key: "tne_CodCompania", force: :cascade do |t|
    t.integer "Codigo_empleado", limit: 4, null: false
    t.integer "Tipo_nomina",     limit: 4, null: false
  end

  create_table "Tipos_Accion", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 50, null: false
  end

  add_index "Tipos_Accion", ["Descripcion"], name: "IX_Tipos_accion", unique: true

  create_table "Tipos_Accion_Cartas", id: false, force: :cascade do |t|
    t.integer "Cod_TipoAccion", limit: 4,   null: false
    t.varchar "Nombre_Carta",   limit: 100, null: false
  end

  create_table "Tipos_Accion_DatoMod", id: false, force: :cascade do |t|
    t.integer "Cod_TipoAccion", limit: 4,   null: false
    t.varchar "Tipo_Cambio",    limit: 50,  null: false
    t.varchar "Valor",          limit: 100
  end

  create_table "Tipos_Amonestaciones", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion_Amonestacion", limit: 1000
    t.integer "Grado_Amonestacion",       limit: 1
    t.integer "Analizar_AmonestInasist",  limit: 1
    t.integer "AplicarA_Tardanza",        limit: 1
    t.integer "AplicarA_Ausencia",        limit: 1
    t.integer "AplicNoPoncheComida",      limit: 1
    t.integer "AplicSalAntesJornal",      limit: 1
    t.integer "AplicEmpPorHora",          limit: 1
    t.integer "CantMaxTipoAmon",          limit: 2
    t.integer "PeriodoAplicTipoAmon",     limit: 1
    t.integer "GenerarAutAmonAsist",      limit: 2
    t.char    "MotivoIncidencia",         limit: 1
    t.varchar "Accion_Amonestacion",      limit: 500
    t.integer "AplicExcedeHoraComida",    limit: 1
    t.integer "AplicEmpSinPonche",        limit: 1
  end

  create_table "Tipos_AsignacionesEmp", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 100,                          null: false
    t.money   "Costo",                   precision: 19, scale: 4, null: false
  end

  add_index "Tipos_AsignacionesEmp", ["Descripcion"], name: "IX_Tipos_AsignacionesEmp", unique: true

  create_table "Tipos_Beneficios", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",    limit: 100, null: false
    t.integer "tbnCodCompania", limit: 4
  end

  add_index "Tipos_Beneficios", ["Descripcion"], name: "IX_Tipos_Beneficios", unique: true

  create_table "Tipos_DescImpPrest", id: false, force: :cascade do |t|
    t.varchar "DescuentoExcel", limit: 50, null: false
    t.integer "CodTipoDesc",    limit: 4,  null: false
  end

  create_table "Tipos_Empleado", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 50, null: false
  end

  add_index "Tipos_Empleado", ["Descripcion"], name: "IX_Tipos_Empleado", unique: true

  create_table "Tipos_EvaluaSolicEmp", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",  limit: 50,               null: false
    t.char    "Estatus",      limit: 1,  default: "A", null: false
    t.integer "Cod_Compania", limit: 4
  end

  create_table "Tipos_ExamSolicEmp", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",  limit: 50,               null: false
    t.char    "Estatus",      limit: 1,  default: "A", null: false
    t.integer "Cod_Compania", limit: 4
  end

  create_table "Tipos_HorarioSolEmp", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",     limit: 50, null: false
    t.integer "DisponibleSolic", limit: 1
  end

  create_table "Tipos_Nomina", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion",              limit: 50, null: false
    t.integer "Compania",                 limit: 4,  null: false
    t.integer "Descontar_ISR",            limit: 1,  null: false
    t.integer "Descontar_SS",             limit: 1,  null: false
    t.integer "Descontar_AFP",            limit: 1
    t.integer "Descontar_ARS",            limit: 1
    t.integer "Descontar_Ries",           limit: 1
    t.integer "Incluir_SB",               limit: 1,  null: false
    t.integer "Periodo_descuento_ISR",    limit: 2
    t.integer "Periodo_descuento_SS",     limit: 2
    t.integer "Periodo_Descuento_AFP",    limit: 2
    t.integer "Periodo_Descuento_ARS",    limit: 2
    t.integer "Periodo_Descuento_Ries",   limit: 2
    t.integer "Periodos",                 limit: 1
    t.integer "Porciento_primer_periodo", limit: 1
    t.integer "Pago_Porcentaje",          limit: 1
    t.integer "Nomina_Sobregiros",        limit: 1
    t.integer "Nomina",                   limit: 4
    t.integer "Dia_Pago",                 limit: 2
    t.real    "ISR_Empleador"
    t.varchar "Cuenta_Pago",              limit: 30
    t.varchar "Cuenta_Cheque",            limit: 30
    t.integer "Banco_Pago",               limit: 4
    t.varchar "Cuenta_Contable",          limit: 70
    t.integer "DesplegarDiasxHorTrab",    limit: 1
    t.char    "AplicarTSSa",              limit: 1
    t.varchar "CodBancoCont",             limit: 20
    t.integer "IncluirColTotHoras",       limit: 1
    t.integer "IncluirColMoneda",         limit: 1
    t.varchar "tMoneda",                  limit: 5
  end

  create_table "Tipos_Nomina_Columnas", id: false, force: :cascade do |t|
    t.integer "Cod_TipoNom",  limit: 4
    t.integer "Orden_Colum",  limit: 1
    t.varchar "Tipo_Novedad", limit: 30
    t.varchar "Desc_Novedad", limit: 50
  end

  create_table "Tipos_PoliticasProc", primary_key: "Codigo", force: :cascade do |t|
    t.integer "CodCompania", limit: 4,   null: false
    t.varchar "Descripcion", limit: 100, null: false
    t.char    "Estatus",     limit: 1,   null: false
  end

  create_table "Tipos_Sangre", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 20, null: false
  end

  add_index "Tipos_Sangre", ["Descripcion"], name: "IX_Tipos_Sangre", unique: true

  create_table "Tipos_Seguros", primary_key: "Codigo", force: :cascade do |t|
    t.varchar "Descripcion", limit: 50, null: false
  end

  add_index "Tipos_Seguros", ["Descripcion"], name: "IX_Tipos_Seguros", unique: true

  create_table "Transferencia_EquivNov", id: false, force: :cascade do |t|
    t.integer "CodCompaniaOrig", limit: 4, null: false
    t.integer "CodCompaniaDest", limit: 4, null: false
    t.varchar "TipoMov",         limit: 1, null: false
    t.integer "CodTipoMovOrig",  limit: 4, null: false
    t.integer "CodTipoMovDest",  limit: 4, null: false
  end

  create_table "UsuariosCompaniaAcceso", primary_key: "CodUsuario", force: :cascade do |t|
    t.integer "CodCompania", limit: 4, null: false
  end

  create_table "Usuarios_ADatos_Camp", primary_key: "Cod_UAcceso", force: :cascade do |t|
    t.varchar "Nom_Campo", limit: 100, null: false
    t.varchar "Permiso",   limit: 1
  end

  create_table "Usuarios_ADatos_CampReg", id: false, force: :cascade do |t|
    t.varchar "Nom_Tabla", limit: 100
    t.varchar "Nom_Campo", limit: 100
  end

  create_table "Usuarios_ADatos_Reg", id: false, force: :cascade do |t|
    t.integer "Cod_UAcceso", limit: 4
    t.varchar "Nom_Campo",   limit: 100
    t.varchar "Valor_Campo", limit: 50
    t.integer "Bloquear",    limit: 1
  end

  create_table "Usuarios_AccesoDatos", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Cod_Usuario", limit: 4
    t.varchar "Nom_Tabla",   limit: 100
  end

  create_table "Usuarios_Nomina", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Codigo_Compania",  limit: 4,              null: false
    t.varchar "Nombre_Usuario",   limit: 50,             null: false
    t.varchar "User_ID",          limit: 30,             null: false
    t.integer "Codigo_Roll",      limit: 4,              null: false
    t.float   "Clave"
    t.varchar "Estatus",          limit: 1,              null: false
    t.integer "Usu_CambiarClave", limit: 1,  default: 1
  end

  create_table "Usuarios_Personal", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Codigo_Compania",  limit: 4,              null: false
    t.varchar "Nombre_Usuario",   limit: 50,             null: false
    t.varchar "User_ID",          limit: 30,             null: false
    t.integer "Codigo_Roll",      limit: 4,              null: false
    t.float   "Clave",                                   null: false
    t.varchar "Estatus",          limit: 1,              null: false
    t.integer "Usu_CambiarClave", limit: 1,  default: 1
    t.integer "CodEmpleado",      limit: 4
  end

  create_table "Usuarios_Roles", primary_key: "Cod_Usuario", force: :cascade do |t|
    t.integer "Cod_Rol", limit: 4, null: false
  end

  create_table "Usuarios_Web", primary_key: "Codigo", force: :cascade do |t|
    t.integer "Codigo_Compania",   limit: 4,              null: false
    t.varchar "Nombre_Usuario",    limit: 50,             null: false
    t.varchar "User_ID",           limit: 30,             null: false
    t.integer "Codigo_Roll",       limit: 4,              null: false
    t.float   "Clave",                                    null: false
    t.varchar "Estatus",           limit: 1,              null: false
    t.integer "CambiarClave",      limit: 1,  default: 1
    t.varchar "Apellido1_Usuario", limit: 30
    t.varchar "Apellido2_Usuario", limit: 50
    t.varchar "Email_Usuario",     limit: 80
    t.integer "Curr",              limit: 4,  default: 0
    t.integer "Codigo_Solicitud",  limit: 4
    t.integer "Activo_Usuario",    limit: 4,  default: 1
  end

  create_table "Vacaciones", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "vcn_CodCompania",         limit: 4
    t.integer  "Codigo_Empleado",         limit: 4,                           null: false
    t.integer  "Incluir_Avance_Sueldo",   limit: 1
    t.integer  "Incluir_Bono_Vacacional", limit: 1
    t.integer  "Pagar_Por_Nomina",        limit: 1
    t.money    "Salario_Diario",                     precision: 19, scale: 4
    t.integer  "Anos",                    limit: 2
    t.integer  "Meses",                   limit: 1
    t.integer  "Dias",                    limit: 1
    t.float    "Dias_Vacaciones"
    t.integer  "Dias_Procesados",         limit: 4
    t.float    "Dias_Bono"
    t.money    "Valor_Avance",                       precision: 19, scale: 4
    t.money    "Valor_Bono",                         precision: 19, scale: 4
    t.integer  "Ano_Correspondiente",     limit: 2,                           null: false
    t.datetime "Fecha",                                                       null: false
    t.datetime "Fec_InicVac"
    t.datetime "Fec_FinVac"
    t.datetime "Fecha_Vacaciones"
    t.float    "Dias_Pendientes"
    t.integer  "Procesadas",              limit: 1
    t.varchar  "Usuario",                 limit: 30
    t.integer  "Cod_Batch",               limit: 4
    t.money    "SalBase",                            precision: 19, scale: 4
  end

  add_index "Vacaciones", ["vcn_CodCompania", "Codigo_Empleado"], name: "IX_Vacaciones"

  create_table "Vacaciones_Autorizar", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "vcp_CodCompania",     limit: 4
    t.integer  "Codigo_Empleado",     limit: 4,                null: false
    t.integer  "Anos",                limit: 2
    t.integer  "Meses",               limit: 1
    t.integer  "Dias",                limit: 1
    t.float    "Dias_Vacaciones"
    t.integer  "Codigo_Accion",       limit: 4
    t.integer  "Ano_Correspondiente", limit: 2,                null: false
    t.datetime "Fecha",                                        null: false
    t.datetime "Fecha_Vacaciones"
    t.float    "Dias_Pendientes"
    t.varchar  "Usuario",             limit: 30
    t.integer  "Generar_Accion",      limit: 1
    t.datetime "FechaFin"
    t.char     "Estatus",             limit: 1,  default: "P"
    t.float    "Dias_Feriados"
    t.float    "Dias_Tomar"
    t.float    "Dias_Disfrutados"
    t.integer  "No_Dias_Laborables",  limit: 4
    t.datetime "Fecha_Reintegra"
    t.datetime "Fecha_Cancelacion"
    t.integer  "Aplica_Bono",         limit: 4,  default: 0
    t.integer  "Autorizada",          limit: 1
    t.integer  "Procesada",           limit: 1
  end

  create_table "Vacaciones_AutorizarTemp", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "vcp_CodCompania",     limit: 4
    t.integer  "Codigo_Empleado",     limit: 4,                null: false
    t.integer  "Anos",                limit: 2
    t.integer  "Meses",               limit: 1
    t.integer  "Dias",                limit: 1
    t.float    "Dias_Vacaciones"
    t.integer  "Codigo_Accion",       limit: 4
    t.integer  "Ano_Correspondiente", limit: 2,                null: false
    t.datetime "Fecha",                                        null: false
    t.datetime "Fecha_Vacaciones"
    t.float    "Dias_Pendientes"
    t.varchar  "Usuario",             limit: 30
    t.integer  "Generar_Accion",      limit: 1
    t.datetime "FechaFin"
    t.char     "Estatus",             limit: 1,  default: "P"
    t.float    "Dias_Feriados"
    t.float    "Dias_Tomar"
    t.float    "Dias_Disfrutados"
    t.integer  "No_Dias_Laborables",  limit: 4
    t.datetime "Fecha_Reintegra"
    t.datetime "Fecha_Cancelacion"
    t.integer  "Aplica_Bono",         limit: 4,  default: 0
    t.integer  "Autorizada",          limit: 1
  end

  create_table "Vacaciones_Avance", id: false, force: :cascade do |t|
    t.integer "Codigo_Vacaciones",  limit: 4,                                        null: false
    t.integer "Ano_Nomina",         limit: 4
    t.integer "Mes_Nomina",         limit: 1,                                        null: false
    t.integer "Tipo_Nomina",        limit: 4,                                        null: false
    t.integer "Periodo_Nomina",     limit: 1,                                        null: false
    t.string  "Concepto_Descuento", limit: 2,                                        null: false
    t.money   "Valor",                        precision: 19, scale: 4
    t.money   "Avance_Descontado",            precision: 19, scale: 4, default: 0.0
  end

  create_table "Vacaciones_Pago", id: false, force: :cascade do |t|
    t.integer "Cod_Vacaciones",      limit: 4
    t.integer "Cod_TipoNomina",      limit: 4
    t.integer "Ano_Pago",            limit: 4
    t.integer "Mes_Pago",            limit: 1
    t.integer "Periodo_Pago",        limit: 1
    t.integer "Dias_Avance",         limit: 2
    t.money   "Valor_Avance",                  precision: 19, scale: 4
    t.money   "Valor_Bono",                    precision: 19, scale: 4
    t.integer "Pagada",              limit: 1
    t.money   "ValorNoCompTSS",                precision: 19, scale: 4
    t.money   "ValorPagoExtProxPer",           precision: 19, scale: 4
  end

  create_table "Vacaciones_Personal", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "vcp_CodCompania",     limit: 4
    t.integer  "Codigo_Empleado",     limit: 4,  null: false
    t.integer  "Anos",                limit: 2
    t.integer  "Meses",               limit: 1
    t.integer  "Dias",                limit: 1
    t.float    "Dias_Vacaciones"
    t.integer  "Codigo_Accion",       limit: 4
    t.integer  "Ano_Correspondiente", limit: 2,  null: false
    t.datetime "Fecha",                          null: false
    t.datetime "Fecha_Vacaciones"
    t.float    "Dias_Pendientes"
    t.varchar  "Usuario",             limit: 30
    t.integer  "Generar_Accion",      limit: 1
    t.datetime "FechaFin"
  end

  add_index "Vacaciones_Personal", ["vcp_CodCompania", "Codigo_Empleado"], name: "IX_Vacaciones_Personal"

  create_table "Vacaciones_Temp", primary_key: "Codigo", force: :cascade do |t|
    t.integer  "vct_CodCompania",         limit: 4
    t.integer  "Codigo_Empleado",         limit: 4,                           null: false
    t.integer  "Incluir_Avance_Sueldo",   limit: 1
    t.integer  "Incluir_Bono_Vacacional", limit: 1
    t.integer  "Pagar_Por_Nomina",        limit: 1
    t.money    "Salario_Diario",                     precision: 19, scale: 4
    t.integer  "Anos",                    limit: 2
    t.integer  "Meses",                   limit: 1
    t.integer  "Dias",                    limit: 1
    t.float    "Dias_Vacaciones"
    t.float    "Dias_Bono"
    t.money    "Valor_Avance",                       precision: 19, scale: 4
    t.money    "Valor_Bono",                         precision: 19, scale: 4
    t.integer  "Ano_Correspondiente",     limit: 2,                           null: false
    t.datetime "Fecha",                                                       null: false
    t.datetime "Fecha_Vacaciones"
    t.float    "Dias_Pendientes"
    t.integer  "Procesadas",              limit: 1
    t.varchar  "Usuario",                 limit: 30
  end

  add_index "Vacaciones_Temp", ["vct_CodCompania", "Codigo_Empleado"], name: "IX_Vacaciones_Temp"

  create_table "Versiones", id: false, force: :cascade do |t|
    t.char    "Cod_Modulo",   limit: 2,               null: false
    t.integer "Cod_Pantalla", limit: 4,               null: false
    t.varchar "Descripcion",  limit: 100,             null: false
    t.integer "Ful",          limit: 1,   default: 0
    t.integer "St",           limit: 1,   default: 0
    t.integer "Py",           limit: 1,   default: 0
    t.integer "ct",           limit: 1,   default: 0
  end

  create_table "Web_Menu", primary_key: "mnu_Menu", force: :cascade do |t|
    t.integer "mnu_CodCompania",        limit: 4,               null: false
    t.integer "mnu_Key",                limit: 4,               null: false
    t.integer "mnu_KeyParent",          limit: 4
    t.varchar "mnu_Descripcion",        limit: 100,             null: false
    t.varchar "mnu_URL",                limit: 200,             null: false
    t.varchar "mnu_ImageURL",           limit: 200,             null: false
    t.integer "mnu_ActivarUsuRH",       limit: 1,   default: 0, null: false
    t.integer "mnu_ActivarUsuEmp",      limit: 1,   default: 0, null: false
    t.integer "mnu_ActivarAdmComp",     limit: 1
    t.integer "mnu_ActivarUsuComp",     limit: 1
    t.integer "mnu_ActivarUsuMercury",  limit: 1
    t.integer "mnu_Orden",              limit: 2
    t.integer "mnu_ActivarUsuOferente", limit: 1
    t.integer "mnu_ActivUsuAdmEmpresa", limit: 1
    t.integer "mnu_ActivUsuEmpresa",    limit: 1
    t.integer "mnu_ActivUsuMercury",    limit: 1
    t.integer "mnu_ActivUsuOferente",   limit: 1
  end

  create_table "cg_CatCuentas", id: false, force: :cascade do |t|
    t.char     "ccta_Codigo",         limit: 18,                           null: false
    t.integer  "ccta_CodComp",        limit: 4,                            null: false
    t.varchar  "ccta_CodCtaControl",  limit: 18
    t.varchar  "ccta_CodCtaAnt",      limit: 30
    t.char     "ccta_Nivel_1",        limit: 3,                            null: false
    t.char     "ccta_Nivel_2",        limit: 3,                            null: false
    t.char     "ccta_Nivel_3",        limit: 3,                            null: false
    t.char     "ccta_Nivel_4",        limit: 3,                            null: false
    t.char     "ccta_Nivel_5",        limit: 3,                            null: false
    t.char     "ccta_Nivel_6",        limit: 3,                            null: false
    t.varchar  "ccta_Nombre",         limit: 100,                          null: false
    t.varchar  "ccta_Descripcion",    limit: 255
    t.money    "ccta_BalInicial",                 precision: 19, scale: 4
    t.datetime "ccta_FecBalInicial"
    t.money    "ccta_Balance",                    precision: 19, scale: 4
    t.money    "ccta_BalanceDeb",                 precision: 19, scale: 4
    t.money    "ccta_BalanceCred",                precision: 19, scale: 4
    t.money    "ccta_ValDebitos",                 precision: 19, scale: 4
    t.money    "ccta_ValCreditos",                precision: 19, scale: 4
    t.money    "ccta_ValDebPend",                 precision: 19, scale: 4
    t.money    "ccta_ValCredPend",                precision: 19, scale: 4
    t.money    "ccta_ValDebHist",                 precision: 19, scale: 4
    t.money    "ccta_ValCredHist",                precision: 19, scale: 4
    t.integer  "ccta_AceptaMov",      limit: 1
    t.integer  "ccta_AceptaSobreg",   limit: 1
    t.integer  "ccta_CodTipoCtaFlEf", limit: 4,                            null: false
    t.char     "ccta_CodClasif",      limit: 1
    t.varchar  "ccta_CodMoneda",      limit: 5
    t.char     "ccta_Origen",         limit: 1
    t.integer  "ccta_NivelCuenta",    limit: 1,                            null: false
    t.integer  "ccta_Efectivo",       limit: 1
    t.integer  "ccta_EquivEfectivo",  limit: 1
    t.integer  "ccta_Estatus",        limit: 1,                            null: false
    t.integer  "ccta_CodUsuario",     limit: 4,                            null: false
    t.varchar  "ccta_DescFlujoEf",    limit: 100
    t.integer  "ccta_EsCtaCtlAux",    limit: 1
    t.integer  "ccta_GrupoEstRes",    limit: 2
    t.integer  "ccta_CodClasifGasto", limit: 2
    t.integer  "ccta_CodProyecto",    limit: 4
    t.integer  "ccta_AliasCta",       limit: 4
  end

  create_table "cg_Configuracion", id: false, force: :cascade do |t|
    t.integer  "cfcg_CodComp",         limit: 4,  null: false
    t.integer  "cfcg_DiaInicAnoFis",   limit: 1,  null: false
    t.integer  "cfcg_MesInicAnoFis",   limit: 1,  null: false
    t.integer  "cfcg_DiaFinAnoFis",    limit: 1,  null: false
    t.integer  "cfcg_MesFinAnoFis",    limit: 1,  null: false
    t.integer  "cfcg_PeriodosAnoFis",  limit: 1,  null: false
    t.char     "cfcg_FormaSecCuen",    limit: 1,  null: false
    t.char     "cfcg_InicSecCuenta",   limit: 3
    t.char     "cfcg_CodCuenResGP",    limit: 18
    t.char     "cfcg_CodCuenEfect",    limit: 18
    t.char     "cfcg_CodCuenUtRet",    limit: 18
    t.integer  "cfcg_CatCuenCuad",     limit: 1
    t.varchar  "cfcg_CodMonedaDef",    limit: 5,  null: false
    t.integer  "cfcg_TieneMonAdic",    limit: 1
    t.integer  "cfcg_ReqRegEqMon",     limit: 1
    t.integer  "cfcg_FormaMayorizar",  limit: 1
    t.integer  "cfcg_CodEmpresaMat",   limit: 4,  null: false
    t.char     "cfcg_FormaSecAsiento", limit: 1
    t.integer  "cfcg_CodUsuario",      limit: 4,  null: false
    t.integer  "cfcg_BloqAstoCtaCtl",  limit: 1
    t.integer  "cfcg_SolCKSinAut",     limit: 1
    t.integer  "cfcg_FormaSecCK",      limit: 1
    t.char     "cfcg_FormaCodActivos", limit: 2
    t.char     "cfcg_ModContUsa",      limit: 1
    t.datetime "cfcg_FecDepActivos"
    t.integer  "cfcg_CodAlmacenMant",  limit: 4
  end

  create_table "cg_Monedas", primary_key: "mon_Codigo", force: :cascade do |t|
    t.varchar "mon_Descripcion", limit: 50, null: false
    t.varchar "mon_CodPais",     limit: 5
    t.varchar "mon_Simbolo",     limit: 3
    t.integer "mon_CodUsuario",  limit: 4,  null: false
  end

  create_table "cuentasbanco", id: false, force: :cascade do |t|
    t.integer "numero", limit: 4
    t.varchar "cuenta", limit: 30
  end

  create_table "dtproperties", force: :cascade do |t|
    t.integer "objectid", limit: 4
    t.varchar "property", limit: 64,               null: false
    t.varchar "value",    limit: 255
    t.string  "uvalue",   limit: 255
    t.string  "lvalue",   limit: 4000
    t.integer "version",  limit: 4,    default: 0, null: false
  end

  create_table "gn_CamposAgregados", primary_key: "Nombre_Tabla", force: :cascade do |t|
    t.integer "Cod_Compania",      limit: 4,   null: false
    t.varchar "Nombre_Campo",      limit: 50,  null: false
    t.varchar "Descripcion_Campo", limit: 100
    t.integer "Long_Campo",        limit: 2
    t.varchar "Tipo_Campo",        limit: 50
    t.integer "Orden",             limit: 2
    t.varchar "Valores",           limit: 200
    t.varchar "FuenteDatos",       limit: 60
    t.varchar "FuenteCampoDesc",   limit: 60
  end

  create_table "hd_Adjuntos", primary_key: "adj_Secuencia", force: :cascade do |t|
    t.varchar "adj_RutaArchivo",    limit: 255
    t.varchar "adj_NombreArchivo",  limit: 200
    t.varchar "adj_Extension",      limit: 5
    t.varchar "adj_IDNomArchivo",   limit: 200
    t.varchar "adj_DocOrigenAdj",   limit: 3
    t.varchar "adj_IDDocOrigenAdj", limit: 50
  end

  create_table "hd_AdjuntosTmp", primary_key: "adj_Secuencia", force: :cascade do |t|
    t.varchar "adj_IdSeccion",      limit: 100
    t.varchar "adj_RutaArchivo",    limit: 255
    t.varchar "adj_NombreArchivo",  limit: 200
    t.varchar "adj_Extension",      limit: 5
    t.varchar "adj_IDNomArchivo",   limit: 200
    t.varchar "adj_DocOrigenAdj",   limit: 3
    t.varchar "adj_IDDocOrigenAdj", limit: 50
  end

  create_table "nm_AsientoContable", primary_key: "asnm_Secuencia", force: :cascade do |t|
    t.integer  "asnm_CodCompania", limit: 4,                                         null: false
    t.varchar  "asnm_ModOrigen",   limit: 3,                                         null: false
    t.char     "asnm_TipoMov",     limit: 3,                                         null: false
    t.integer  "asnm_NoMovOrigen", limit: 4,                                         null: false
    t.integer  "asnm_Orden",       limit: 2,                                         null: false
    t.integer  "asnm_CodEmp",      limit: 4
    t.varchar  "asnm_Concepto",    limit: 50
    t.money    "asnm_ValorMov",               precision: 19, scale: 4,               null: false
    t.char     "asnm_CodCuenta",   limit: 18,                                        null: false
    t.money    "asnm_ValDebito",              precision: 19, scale: 4, default: 0.0
    t.money    "asnm_ValCredito",             precision: 19, scale: 4, default: 0.0
    t.datetime "asnm_Fecha"
    t.integer  "asnm_NoAsiento",   limit: 4,                                         null: false
    t.integer  "asnm_NoTransfCG",  limit: 4,                           default: 0
    t.integer  "asnm_Ano",         limit: 4,                                         null: false
    t.integer  "asnm_Periodo",     limit: 1,                                         null: false
    t.integer  "asnm_Estatus",     limit: 1,                           default: 1
    t.varchar  "asnm_CodCentroC",  limit: 12
    t.char     "asnm_Origen",      limit: 1,                                         null: false
    t.char     "asnm_ModRegistro", limit: 3
    t.integer  "asnm_NoOrden",     limit: 4
    t.varchar  "asnm_CC1",         limit: 12
    t.varchar  "asnm_CC2",         limit: 12
    t.varchar  "asnm_CC3",         limit: 12
  end

  add_index "nm_AsientoContable", ["asnm_Secuencia"], name: "IX_nm_AsientoContable"

  create_table "nm_TransferenciaCG", id: false, force: :cascade do |t|
    t.integer  "trfn_CodCompania", limit: 4,                            null: false
    t.integer  "trfn_Secuencia",   limit: 4,                            null: false
    t.datetime "trfn_Fecha"
    t.datetime "trfn_FechaReg"
    t.datetime "trfn_FecDesde",                                         null: false
    t.datetime "trfn_FecHasta",                                         null: false
    t.varchar  "trfn_Comentario",  limit: 255
    t.integer  "trfn_NoAsiento",   limit: 4,                            null: false
    t.integer  "trfn_Ano",         limit: 4,                            null: false
    t.integer  "trfn_Periodo",     limit: 1,                            null: false
    t.money    "trfn_TotDebitos",              precision: 19, scale: 4, null: false
    t.money    "trfn_TotCreditos",             precision: 19, scale: 4, null: false
    t.integer  "trfn_CodUsuario",  limit: 4,                            null: false
  end

  create_table "nm_TransferenciaCGDet", id: false, force: :cascade do |t|
    t.integer "tfnd_CodCompania", limit: 4,                           null: false
    t.integer "tfnd_Secuencia",   limit: 4,                           null: false
    t.integer "tfnd_Orden",       limit: 2,                           null: false
    t.char    "tfnd_CodCuenta",   limit: 18,                          null: false
    t.varchar "tfnd_CodCentroC",  limit: 12,                          null: false
    t.money   "tfnd_ValDebitos",             precision: 19, scale: 4, null: false
    t.money   "tfnd_ValCreditos",            precision: 19, scale: 4, null: false
  end

  create_table "pv_Clientes", primary_key: "cte_CodCompania", force: :cascade do |t|
    t.integer "cte_Codigo",     limit: 4,   null: false
    t.integer "cte_CodGrupo",   limit: 4,   null: false
    t.varchar "cte_Nombre",     limit: 100, null: false
    t.integer "cte_Estatus",    limit: 1,   null: false
    t.integer "cte_CodUsuario", limit: 4,   null: false
    t.varchar "cte_Alias",      limit: 20
    t.varchar "cte_CodSAP",     limit: 20
  end

  create_table "si_ConsultaSimple", primary_key: "CS_ConsultaId", force: :cascade do |t|
    t.string  "CS_ConsultaNombre", limit: 100
    t.varchar "CS_Tabla",          limit: 50
    t.varchar "CS_Descripcion",    limit: 50
    t.varchar "CS_Valor",          limit: 50
    t.varchar "CS_Resultado",      limit: 50
    t.varchar "CS_Orden",          limit: 50
  end

  create_table "users", force: :cascade do |t|
    t.string   "codigo_empleado", limit: 4000
    t.string   "correo",          limit: 4000
    t.string   "password_digest", limit: 4000
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "tipo",            limit: 25
    t.string   "activo",          limit: 1,    default: "S"
  end

  add_foreign_key "Accion_Personal", "Acciones_Motivos", column: "Cod_MotivoAccion", primary_key: "Codigo", name: "FK_Accion_Personal_Acciones_Motivos"
  add_foreign_key "Accion_Personal", "Empleados", column: "Codigo_Empleado", primary_key: "Numero", name: "FK_Accion_Personal_Empleados"
  add_foreign_key "Accion_Personal", "Empleados", column: "ap_CodCompania", primary_key: "Numero_Compania", name: "FK_Accion_Personal_Empleados"
  add_foreign_key "Accion_Personal", "Tipos_Accion", column: "Tipo_Accion", primary_key: "Codigo", name: "fk_Tipos_accionAccion_Personal (Accion_Personal -> Tipos_accion) Tipos_accion_Accion_Personal"
  add_foreign_key "Bonificacion", "Companias", column: "Compania", primary_key: "Codigo", name: "fk_CompaniasBonificacion (Bonificacion -> Companias) Companias_Bonificacion"
  add_foreign_key "Bonificacion_Emp", "Bonificacion", column: "Codigo_Bonificacion", primary_key: "Codigo", name: "fk_BonificacionBonificacion_Emp (Bonificacion_Emp -> Bonificacion) Bonificacion_Bonificacion_Emp"
  add_foreign_key "Bonificacion_Emp", "Empleados", column: "Codigo_Empleado", primary_key: "Numero", name: "FK_Bonificacion_Emp_Empleados"
  add_foreign_key "Bonificacion_Emp", "Empleados", column: "bem_CodCompania", primary_key: "Numero_Compania", name: "FK_Bonificacion_Emp_Empleados"
  add_foreign_key "Cap_AsignacionCursos", "Empleados", column: "Cod_Empleado", primary_key: "Numero", name: "FK_Cap_AsignacionCursos_Empleados"
  add_foreign_key "Cap_AsignacionCursos", "Empleados", column: "cac_CodCompania", primary_key: "Numero_Compania", name: "FK_Cap_AsignacionCursos_Empleados"
  add_foreign_key "Cap_Cursos", "Cap_AreasCursos", column: "Cod_Area", primary_key: "Codigo", name: "FK_Cap_Cursos_Cap_AreasCursos"
  add_foreign_key "Clasificacion_Cargos", "Companias", column: "Numero_Compania", primary_key: "Codigo", name: "fk_CompaniasClasificacion_Cargos (Clasificacion_Cargos -> Companias) Companias_Clasificacion_Cargos"
  add_foreign_key "Clasificacion_Niveles", "Niveles", column: "Nivel", primary_key: "Codigo", name: "fk_NivelesClasificacion_Niveles (Clasificacion_Niveles -> Niveles) Niveles_Clasificacion_Niveles"
  add_foreign_key "Clasificacion_Niveles", "Niveles", column: "Numero_Compania", primary_key: "Codigo_Compania", name: "fk_NivelesClasificacion_Niveles (Clasificacion_Niveles -> Niveles) Niveles_Clasificacion_Niveles"
  add_foreign_key "Configuracion", "Companias", column: "Codigo_Compania", primary_key: "Codigo", name: "fk_CompaniasConfiguracion (Configuracion -> Companias) Companias_Configuracion"
  add_foreign_key "Configuracion_Personal", "Companias", column: "Codigo_Compania", primary_key: "Codigo", name: "fk_CompaniasConfiguracion_Personal (Configuracion_Personal -> Companias) Companias_Configuracion_Personal"
  add_foreign_key "Control_Inasistencias", "Motivos", column: "Codigo_Motivo", primary_key: "Codigo", name: "fk_MotivosControl_Inasistencias (Control_Inasistencias -> Motivos) Motivos_Control_Inasistencias"
  add_foreign_key "Cualidades_Posiciones_Clasificacion", "Posiciones_Clasificacion", column: "Codigo_Cargo", primary_key: "Codigo", name: "fk_Posiciones_ClasificacionCualidades_Posiciones_Clasificacion (Cualidades_Posiciones_Clasificacion -> Posiciones_Clasificacion)"
  add_foreign_key "Cuentas_SubGrupos", "Cuentas", column: "Cod_Cuenta", primary_key: "Codigo", name: "FK_Cuentas_SubGrupos_Cuentas"
  add_foreign_key "Cuotas_Descuentos", "Descuentos", column: "Codigo_Descuento", primary_key: "Codigo_Descuento", name: "fk_DescuentosCuotas_Descuentos (Cuotas_Descuentos -> Descuentos) Descuentos_Cuotas_Descuentos"
  add_foreign_key "Descuentos", "Empleados", column: "Codigo_Empleado", primary_key: "Numero", name: "FK_Descuentos_Empleados"
  add_foreign_key "Descuentos", "Empleados", column: "Compania", primary_key: "Numero_Compania", name: "FK_Descuentos_Empleados"
  add_foreign_key "Descuentos", "Tipo_Descuentos", column: "Codigo_Tipo_Descuento", primary_key: "Codigo", name: "fk_Tipo_DescuentosDescuentos (Descuentos -> Tipo_Descuentos) Tipo_Descuentos_Descuentos"
  add_foreign_key "Descuentos_Nomina_Empleados", "Empleados_Procesados_Nomina", column: "Codigo_empleado", primary_key: "Codigo_Empleado", name: "FK_Descuentos_Nomina_Empleados_Descuentos_Nomina_Empleados"
  add_foreign_key "Descuentos_Nomina_Empleados", "Empleados_Procesados_Nomina", column: "Codigo_nomina", primary_key: "Codigo_Nomina", name: "FK_Descuentos_Nomina_Empleados_Descuentos_Nomina_Empleados"
  add_foreign_key "Descuentos_Nomina_Empleados", "Empleados_Procesados_Nomina", column: "dne_CodCompania", primary_key: "epn_CodCompania", name: "FK_Descuentos_Nomina_Empleados_Descuentos_Nomina_Empleados"
  add_foreign_key "Descuentos_Nomina_Empleados", "Tipo_Descuentos", column: "Tipo_Descuento", primary_key: "Codigo", name: "FK_Descuentos_Nomina_Empleados_Tipo_Descuentos"
  add_foreign_key "Detalles_Bonificacion", "Bonificacion_Emp", column: "Codigo_Bonificacion", primary_key: "Codigo_Bonificacion", name: "fk_Bonificacion_EmpDetalles_Bonificacion (Detalles_Bonificacion -> Bonificacion_Emp) Bonificacion_Emp_Detalles_Bonificacion"
  add_foreign_key "Detalles_Bonificacion", "Bonificacion_Emp", column: "Codigo_Empleado", primary_key: "Codigo_Empleado", name: "fk_Bonificacion_EmpDetalles_Bonificacion (Detalles_Bonificacion -> Bonificacion_Emp) Bonificacion_Emp_Detalles_Bonificacion"
  add_foreign_key "Detalles_Bonificacion", "Empleados", column: "Codigo_Empleado", primary_key: "Numero", name: "FK_Detalles_Bonificacion_Empleados"
  add_foreign_key "Detalles_Bonificacion", "Empleados", column: "dbe_CodCompania", primary_key: "Numero_Compania", name: "FK_Detalles_Bonificacion_Empleados"
  add_foreign_key "Dias_Politicas_Horarios", "Politicas_Horarios", column: "Codigo_Politica", primary_key: "Codigo", name: "fk_Politicas_HorariosDias_Politicas_Horarios (Dias_Politicas_Horarios -> Politicas_Horarios) Politicas_Horarios_Dias_Politicas_H"
  add_foreign_key "Diferencia_Retencion_Empleados", "Empleados", column: "Codigo_Empleado", primary_key: "Numero", name: "FK_Diferencia_Retencion_Empleados_Empleados"
  add_foreign_key "Diferencia_Retencion_Empleados", "Empleados", column: "drt_CodCompania", primary_key: "Numero_Compania", name: "FK_Diferencia_Retencion_Empleados_Empleados"
  add_foreign_key "Empleado_Dependientes", "Empleados", column: "Codigo_Empleado", primary_key: "Numero", name: "FK_Empleado_Dependientes_Empleados"
  add_foreign_key "Empleado_Dependientes", "Empleados", column: "edp_CodCompania", primary_key: "Numero_Compania", name: "FK_Empleado_Dependientes_Empleados"
  add_foreign_key "Empleados", "Companias", column: "Numero_Compania", primary_key: "Codigo", name: "fk_CompaniasEmpleados (Empleados -> Companias) Companias_Empleados"
  add_foreign_key "Empleados", "Grados_Academicos", column: "Codigo_Grado_Academico", primary_key: "Codigo", name: "fk_Grados_AcademicosEmpleados (Empleados -> Grados_Academicos) Grados_Academicos_Empleados"
  add_foreign_key "Empleados", "Idiomas", column: "Lengua_Materna", primary_key: "Codigo", name: "fk_IdiomasEmpleados (Empleados -> Idiomas) Idiomas_Empleados"
  add_foreign_key "Empleados", "Nacionalidades", column: "Nacionalidad", primary_key: "Codigo", name: "fk_NacionalidadesEmpleados (Empleados -> Nacionalidades) Nacionalidades_Empleados"
  add_foreign_key "Empleados", "Posiciones_Clasificacion", column: "Cod_Cargo", primary_key: "Codigo", name: "fk_Posiciones_ClasificacionEmpleados (Empleados -> Posiciones_Clasificacion) Posiciones_Clasificacion_Empleados"
  add_foreign_key "Empleados", "SubGrupos_Empleados", column: "Grupo_Trabajo", primary_key: "Codigo_Grupo", name: "fk_SubGrupos_EmpleadosEmpleados (Empleados -> SubGrupos_Empleados) SubGrupos_Empleados_Empleados"
  add_foreign_key "Empleados", "SubGrupos_Empleados", column: "SubGrupo_Trabajo", primary_key: "Codigo", name: "fk_SubGrupos_EmpleadosEmpleados (Empleados -> SubGrupos_Empleados) SubGrupos_Empleados_Empleados"
  add_foreign_key "Empleados", "Sucursales", column: "Cod_Sucursal", primary_key: "Codigo", name: "FK_Empleados_Sucursales"
  add_foreign_key "Empleados", "Tipos_Nomina", column: "Nomina_ISR_SS", primary_key: "Codigo", name: "fk_Tipos_NominaEmpleados1 (Empleados -> Tipos_Nomina) Tipos_Nomina_Empleados"
  add_foreign_key "Empleados", "Tipos_Nomina", column: "Nomina_Salario", primary_key: "Codigo", name: "fk_Tipos_NominaEmpleados (Empleados -> Tipos_Nomina) Tipos_Nomina_Empleados"
  add_foreign_key "Empleados_Amonestaciones", "Empleados", column: "Codigo_Empleado", primary_key: "Numero", name: "fk_Tipos_AmonestacionesEmpleados_Amonestaciones (Empleados_Amonestaciones -> Tipos_Amonestaciones) Tipos_Amonestaciones_Empleado"
  add_foreign_key "Empleados_Amonestaciones", "Empleados", column: "eam_CodCompania", primary_key: "Numero_Compania", name: "fk_Tipos_AmonestacionesEmpleados_Amonestaciones (Empleados_Amonestaciones -> Tipos_Amonestaciones) Tipos_Amonestaciones_Empleado"
  add_foreign_key "Empleados_Beneficios", "Empleados", column: "Codigo_Empleado", primary_key: "Numero", name: "FK_Empleados_Beneficios_Empleados"
  add_foreign_key "Empleados_Beneficios", "Empleados", column: "Numero_Compania", primary_key: "Numero_Compania", name: "FK_Empleados_Beneficios_Empleados"
  add_foreign_key "Empleados_Cualidades", "Cualidades_Tecnicas_Intelectuales", column: "Codigo_Cualidad", primary_key: "Codigo", name: "fk_Cualidades_Tecnicas_IntelectualesEmpleados_Cualidades (Empleados_Cualidades -> Cualidades_Tecnicas_Intelectuales) Cualidades_"
  add_foreign_key "Empleados_Cualidades", "Empleados", column: "Codigo_Empleado", primary_key: "Numero", name: "FK_Empleados_Cualidades_Empleados"
  add_foreign_key "Empleados_Cualidades", "Empleados", column: "ecu_CodCompania", primary_key: "Numero_Compania", name: "FK_Empleados_Cualidades_Empleados"
  add_foreign_key "Empleados_Documentos", "Empleados", column: "Cod_Compania", primary_key: "Numero_Compania", name: "FK_Empleados_Documentos_Empleados"
  add_foreign_key "Empleados_Documentos", "Empleados", column: "Cod_Empleado", primary_key: "Numero", name: "FK_Empleados_Documentos_Empleados"
  add_foreign_key "Empleados_Estudios", "Cursos_Carreras", column: "Codigo_Curso", primary_key: "Codigo", name: "fk_Cursos_CarrerasEmpleados_Estudios (Empleados_Estudios -> Cursos_Carreras) Cursos_Carreras_Empleados_Estudios"
  add_foreign_key "Empleados_Habilidades", "Habilidades", column: "Codigo_Habilidad", primary_key: "Codigo", name: "fk_HabilidadesEmpleados_Habilidades (Empleados_Habilidades -> Habilidades) Habilidades_Empleados_Habilidades"
  add_foreign_key "Empleados_ObjetivosDet", "Empleados_Objetivos", column: "Codigo", primary_key: "Codigo", name: "FK_Empleados_ObjetivosDet_Empleados_Objetivos"
  add_foreign_key "Empleados_ObjetivosDet", "Empleados_Objetivos", column: "Numero_Compania", primary_key: "Numero_Compania", name: "FK_Empleados_ObjetivosDet_Empleados_Objetivos"
  add_foreign_key "Empleados_Procesados_Nomina", "Empleados", column: "Codigo_Empleado", primary_key: "Numero", name: "FK_Empleados_Procesados_Nomina_Empleados"
  add_foreign_key "Empleados_Procesados_Nomina", "Empleados", column: "epn_CodCompania", primary_key: "Numero_Compania", name: "FK_Empleados_Procesados_Nomina_Empleados"
  add_foreign_key "Empleados_Procesados_Nomina", "Posiciones_Clasificacion", column: "Posicion_Emp", primary_key: "Codigo", name: "FK_Empleados_Procesados_Nomina_Posiciones_Clasificacion"
  add_foreign_key "Empleados_Procesados_Nomina", "Posiciones_Clasificacion", column: "epn_CodCompania", primary_key: "Numero_compania", name: "FK_Empleados_Procesados_Nomina_Posiciones_Clasificacion"
  add_foreign_key "Empleados_Procesados_Nomina", "SubGrupos_Empleados", column: "Grupo_Emp", primary_key: "Codigo_Grupo", name: "fk_SubGrupos_EmpleadosEmpleados_Procesados_Nomina (Empleados_Procesados_Nomina -> SubGrupos_Empleados) SubGrupos_Empleados_Emple"
  add_foreign_key "Empleados_Procesados_Nomina", "SubGrupos_Empleados", column: "SubGrupo_Emp", primary_key: "Codigo", name: "fk_SubGrupos_EmpleadosEmpleados_Procesados_Nomina (Empleados_Procesados_Nomina -> SubGrupos_Empleados) SubGrupos_Empleados_Emple"
  add_foreign_key "EquiposAsignacionEmp", "Empleados", column: "CodCompania", primary_key: "Numero_Compania", name: "FK_EquiposAsignacionEmp_Empleados"
  add_foreign_key "EquiposAsignacionEmp", "Empleados", column: "CodEmpleado", primary_key: "Numero", name: "FK_EquiposAsignacionEmp_Empleados"
  add_foreign_key "EquiposAsignacionEmp", "Equipos", column: "CodCompania", primary_key: "CodCompania", name: "FK_EquiposAsignacionEmp_Equipos"
  add_foreign_key "EquiposAsignacionEmp", "Equipos", column: "CodEquipo", primary_key: "Codigo", name: "FK_EquiposAsignacionEmp_Equipos"
  add_foreign_key "EquiposConsumos", "Empleados", column: "CodCompania", primary_key: "Numero_Compania", name: "FK_EquiposConsumos_Empleados"
  add_foreign_key "EquiposConsumos", "Empleados", column: "CodEmpleado", primary_key: "Numero", name: "FK_EquiposConsumos_Empleados"
  add_foreign_key "EquiposConsumos", "Equipos", column: "CodCompania", primary_key: "CodCompania", name: "FK_EquiposConsumos_Equipos"
  add_foreign_key "EquiposConsumos", "Equipos", column: "CodEquipo", primary_key: "Codigo", name: "FK_EquiposConsumos_Equipos"
  add_foreign_key "EquiposDescargosEmp", "Equipos", column: "CodCompania", primary_key: "CodCompania", name: "FK_EquiposDescargosEmp_Equipos"
  add_foreign_key "EquiposDescargosEmp", "Equipos", column: "CodEquipo", primary_key: "Codigo", name: "FK_EquiposDescargosEmp_Equipos"
  add_foreign_key "EquiposDescargosEmp", "EquiposAsignacionEmp", column: "CodAsignacion", primary_key: "CodAsignacion", name: "FK_EquiposDescargosEmp_EquiposAsignacionEmp"
  add_foreign_key "EquiposDescargosEmp", "EquiposAsignacionEmp", column: "CodCompania", primary_key: "CodCompania", name: "FK_EquiposDescargosEmp_EquiposAsignacionEmp"
  add_foreign_key "EquiposEntSalDet", "Equipos", column: "CodCompania", primary_key: "CodCompania", name: "FK_EquiposEntSalDet_Equipos"
  add_foreign_key "EquiposEntSalDet", "Equipos", column: "CodEquipo", primary_key: "Codigo", name: "FK_EquiposEntSalDet_Equipos"
  add_foreign_key "EquiposEntSalDet", "EquiposEntSal", column: "CodCompania", primary_key: "CodCompania", name: "FK_EquiposEntSalDet_EquiposEntSal"
  add_foreign_key "EquiposEntSalDet", "EquiposEntSal", column: "CodMovimiento", primary_key: "Codigo", name: "FK_EquiposEntSalDet_EquiposEntSal"
  add_foreign_key "Escalas_Evaluaciones", "EscalasEval_Categorias", column: "Cod_CatEscala", primary_key: "Codigo", name: "FK_Escalas_Evaluaciones_EscalasEval_Categorias"
  add_foreign_key "Evaluaciones", "Periodo_Evaluaciones", column: "Cod_PeriodoEval", primary_key: "Codigo", name: "FK_Evaluaciones_Periodo_Evaluaciones"
  add_foreign_key "Evaluaciones", "Tipo_Evaluaciones", column: "Cod_TipoEval", primary_key: "Codigo", name: "fk_Tipo_EvaluacionesEvaluaciones (Evaluaciones -> Tipo_Evaluaciones) Tipo_Evaluaciones_Evaluaciones"
  add_foreign_key "Evaluaciones_Lineas", "Competencias_Evaluaciones", column: "Cod_Competencia", primary_key: "Codigo", name: "FK_Evaluaciones_Lineas_Competencias_Evaluaciones"
  add_foreign_key "Evaluaciones_Lineas", "Evaluaciones", column: "Cod_FormEval", primary_key: "Codigo", name: "FK_Evaluaciones_Lineas_Evaluaciones"
  add_foreign_key "Evaluaciones_ObjetivosDet", "Evaluaciones_Objetivos", column: "Codigo", primary_key: "Codigo", name: "FK_Evaluaciones_ObjetivosDet_Evaluaciones_Objetivos"
  add_foreign_key "Evaluaciones_RegObj", "Evaluaciones_RegObj", column: "Cod_Asignacion", primary_key: "Cod_Asignacion", name: "FK_Evaluaciones_RegObj_Evaluaciones_RegObj"
  add_foreign_key "Evaluaciones_RegObj", "Evaluaciones_RegObj", column: "Cod_Compania", primary_key: "Cod_Compania", name: "FK_Evaluaciones_RegObj_Evaluaciones_RegObj"
  add_foreign_key "Evaluaciones_RegObj", "Evaluaciones_RegObj", column: "Cod_Empleado", primary_key: "Cod_Empleado", name: "FK_Evaluaciones_RegObj_Evaluaciones_RegObj"
  add_foreign_key "Evaluaciones_RegObj", "Evaluaciones_RegObj", column: "Orden", primary_key: "Orden", name: "FK_Evaluaciones_RegObj_Evaluaciones_RegObj"
  add_foreign_key "Exclusiones_Seguro", "Seguro_Inclucion_Exclucion", column: "Codigo_Seguro", primary_key: "Codigo", name: "fk_Seguro_Inclucion_ExclucionExclusiones_Seguro (Exclusiones_Seguro -> Seguro_Inclucion_Exclucion) Seguro_Inclucion_Exclucion_Ex"
  add_foreign_key "Fecha_Vacaciones_Empleados", "Vacaciones", column: "Codigo_Vacaciones", primary_key: "Codigo", name: "fk_VacacionesFecha_Vacaciones_Empleados (Fecha_Vacaciones_Empleados -> Vacaciones) Vacaciones_Fecha_Vacaciones_Empleados"
  add_foreign_key "Fecha_Vacaciones_Empleados_Personal", "Vacaciones_Personal", column: "Codigo_Vacaciones", primary_key: "Codigo", name: "fk_Vacaciones_PersonalFecha_Vacaciones_Empleados_Personal (Fecha_Vacaciones_Empleados_Personal -> Vacaciones_Personal) Vacacione"
  add_foreign_key "Grupos_Empleados", "Tipos_Nomina", column: "Nomina_Grupo", primary_key: "Codigo", name: "fk_Tipos_NominaGrupos_Empleados (Grupos_Empleados -> Tipos_Nomina) Tipos_Nomina_Grupos_Empleados"
  add_foreign_key "Habilidades_Posiciones_Clasificacion", "Habilidades", column: "Codigo_Habilidad", primary_key: "Codigo", name: "fk_HabilidadesHabilidades_Posiciones_Clasificacion (Habilidades_Posiciones_Clasificacion -> Habilidades) Habilidades_Habilidades"
  add_foreign_key "Habilidades_Posiciones_Clasificacion", "Posiciones_Clasificacion", column: "Codigo_Cargo", primary_key: "Codigo", name: "fk_Posiciones_ClasificacionHabilidades_Posiciones_Clasificacion (Habilidades_Posiciones_Clasificacion -> Posiciones_Clasificacio"
  add_foreign_key "Horas_Trabajadas", "Tipo_Horas", column: "Tipo_Hora", primary_key: "Codigo", name: "fk_Tipo_HorasHoras_Trabajadas (Horas_Trabajadas -> Tipo_Horas) Tipo_Horas_Horas_Trabajadas"
  add_foreign_key "Horas_Trabajadas", "Tipos_Nomina", column: "Codigo_Nomina", primary_key: "Codigo", name: "fk_Tipos_NominaHoras_Trabajadas (Horas_Trabajadas -> Tipos_Nomina) Tipos_Nomina_Horas_Trabajadas"
  add_foreign_key "Horas_Trabajadas_Nomina", "Empleados_Procesados_Nomina", column: "Codigo_empleado", primary_key: "Codigo_Empleado", name: "FK_Horas_Trabajadas_Nomina_Empleados"
  add_foreign_key "Horas_Trabajadas_Nomina", "Empleados_Procesados_Nomina", column: "Codigo_nomina", primary_key: "Codigo_Nomina", name: "FK_Horas_Trabajadas_Nomina_Empleados"
  add_foreign_key "Horas_Trabajadas_Nomina", "Empleados_Procesados_Nomina", column: "htn_CodCompania", primary_key: "epn_CodCompania", name: "FK_Horas_Trabajadas_Nomina_Empleados"
  add_foreign_key "Horas_Trabajadas_Nomina", "Tipo_Horas", column: "Tipo_Hora", primary_key: "Codigo", name: "FK_Horas_Trabajadas_Nomina_Tipo_Horas"
  add_foreign_key "Ingresos_Nomina_Empleados", "Empleados_Procesados_Nomina", column: "Codigo_Empleado", primary_key: "Codigo_Empleado", name: "FK_Ingresos_Nomina_Empleados_Empleados_Procesados_Nomina"
  add_foreign_key "Ingresos_Nomina_Empleados", "Empleados_Procesados_Nomina", column: "Codigo_nomina", primary_key: "Codigo_Nomina", name: "FK_Ingresos_Nomina_Empleados_Empleados_Procesados_Nomina"
  add_foreign_key "Ingresos_Nomina_Empleados", "Empleados_Procesados_Nomina", column: "ine_CodCompania", primary_key: "epn_CodCompania", name: "FK_Ingresos_Nomina_Empleados_Empleados_Procesados_Nomina"
  add_foreign_key "Ingresos_Nomina_Empleados", "Tipo_Ingresos", column: "Tipo_ingreso", primary_key: "Codigo", name: "fk_Tipo_IngresosIngresos_Nomina_Empleados (Ingresos_Nomina_Empleados -> Tipo_Ingresos) Tipo_Ingresos_Ingresos_Nomina_Empleados"
  add_foreign_key "Niveles", "Companias", column: "Codigo_Compania", primary_key: "Codigo", name: "fk_CompaniasNiveles (Niveles -> Companias) Companias_Niveles"
  add_foreign_key "Nomina_General", "Companias", column: "Compania", primary_key: "Codigo", name: "fk_CompaniasNomina_General (Nomina_General -> Companias) Companias_Nomina_General"
  add_foreign_key "Nomina_General", "Tipos_Nomina", column: "Tipo_Nomina", primary_key: "Codigo", name: "fk_Tipos_NominaNomina_General (Nomina_General -> Tipos_Nomina) Tipos_Nomina_Nomina_General"
  add_foreign_key "Nomina_ISRCompensado", "Empleados", column: "Cod_Empleado", primary_key: "Numero", name: "FK_Nomina_ISRCompensado_Empleados"
  add_foreign_key "Nomina_ISRCompensado", "Empleados", column: "nic_CodCompania", primary_key: "Numero_Compania", name: "FK_Nomina_ISRCompensado_Empleados"
  add_foreign_key "Nomina_ISRCompensado", "Nomina_General", column: "Codigo_Nomina", primary_key: "Codigo_Nomina", name: "FK_Nomina_ISRCompensado_Nomina_General"
  add_foreign_key "Nomina_ISRCompensado", "Nomina_General", column: "nic_CodCompania", primary_key: "Compania", name: "FK_Nomina_ISRCompensado_Nomina_General"
  add_foreign_key "Nomina_LeySegSoc", "Empleados", column: "Cod_Empleado", primary_key: "Numero", name: "FK_Nomina_LeySegSoc_Empleados"
  add_foreign_key "Nomina_LeySegSoc", "Empleados", column: "nds_CodCompania", primary_key: "Numero_Compania", name: "FK_Nomina_LeySegSoc_Empleados"
  add_foreign_key "Nomina_Provisiones", "Empleados", column: "Cod_Empleado", primary_key: "Numero", name: "FK_Nomina_Provisiones_Empleados"
  add_foreign_key "Nomina_Provisiones", "Empleados", column: "npv_CodCompania", primary_key: "Numero_Compania", name: "FK_Nomina_Provisiones_Empleados"
  add_foreign_key "Otros_Ingresos", "Tipo_Ingresos", column: "Codigo_Tipo_ingreso", primary_key: "Codigo", name: "fk_Tipo_IngresosOtros_Ingresos (Otros_Ingresos -> Tipo_Ingresos) Tipo_Ingresos_Otros_Ingresos"
  add_foreign_key "Pantallas_Roles_Nomina", "Pantallas_Nomina", column: "Codigo_Pantalla", primary_key: "ID_PANTALLA", name: "fk_Pantallas_NominaPantallas_Roles_Nomina (Pantallas_Roles_Nomina -> Pantallas_Nomina) Pantallas_Nomina_Pantallas_Roles_Nomina"
  add_foreign_key "Pantallas_Roles_Nomina", "Roles_Nomina", column: "Codigo_Roll", primary_key: "Codigo", name: "fk_Roles_NominaPantallas_Roles_Nomina (Pantallas_Roles_Nomina -> Roles_Nomina) Roles_Nomina_Pantallas_Roles_Nomina"
  add_foreign_key "Pantallas_Roles_Personal", "Roles_Personal", column: "Codigo_Roll", primary_key: "Codigo", name: "fk_Roles_PersonalPantallas_Roles_Personal (Pantallas_Roles_Personal -> Roles_Personal) Roles_Personal_Pantallas_Roles_Personal"
  add_foreign_key "Parametros_Reclutamiento", "Companias", column: "Compania", primary_key: "Codigo", name: "FK_Parametros_Reclutamiento_Companias"
  add_foreign_key "Planes_Seguro", "Tipos_Seguros", column: "Codigo_Tipo", primary_key: "Codigo", name: "fk_Tipos_segurosPlanes_Seguro (Planes_Seguro -> Tipos_seguros) Tipos_seguros_Planes_Seguro"
  add_foreign_key "PoliticasYProcedimientos", "Tipos_PoliticasProc", column: "CodTipoPolitica", primary_key: "Codigo", name: "FK_PoliticasYProcedimientos_Tipos_PoliticasProc"
  add_foreign_key "PoliticasYProcedimientosDetalles", "PoliticasYProcedimientos", column: "CodPolitica", primary_key: "Codigo", name: "FK_PoliticasYProcedimientosDetalles_PoliticasYProcedimientos"
  add_foreign_key "Politicas_Horarios", "Companias", column: "Numero_Compania", primary_key: "Codigo", name: "fk_CompaniasPoliticas_Horarios (Politicas_Horarios -> Companias) Companias_Politicas_Horarios"
  add_foreign_key "Posiciones_Clasificacion", "Clasificacion_Cargos", column: "Codigo_Clasificacion_Cargo", primary_key: "Codigo", name: "fk_Clasificacion_CargosPosiciones_Clasificacion (Posiciones_Clasificacion -> Clasificacion_Cargos) Clasificacion_Cargos_Posicion"
  add_foreign_key "Posiciones_Clasificacion", "Clasificacion_Cargos", column: "Numero_compania", primary_key: "Numero_Compania", name: "fk_Clasificacion_CargosPosiciones_Clasificacion (Posiciones_Clasificacion -> Clasificacion_Cargos) Clasificacion_Cargos_Posicion"
  add_foreign_key "Posiciones_Clasificacion", "Clasificacion_Niveles", column: "Codigo_Clasificacion", primary_key: "Codigo", name: "fk_Clasificacion_NivelesPosiciones_Clasificacion (Posiciones_Clasificacion -> Clasificacion_Niveles) Clasificacion_Niveles_Posic"
  add_foreign_key "Posiciones_Clasificacion", "Clasificacion_Niveles", column: "Numero_compania", primary_key: "Numero_Compania", name: "fk_Clasificacion_NivelesPosiciones_Clasificacion (Posiciones_Clasificacion -> Clasificacion_Niveles) Clasificacion_Niveles_Posic"
  add_foreign_key "Posiciones_Clasificacion", "Posiciones", column: "Codigo_Posicion", primary_key: "Codigo", name: "fk_PosicionesPosiciones_Clasificacion (Posiciones_Clasificacion -> Posiciones) Posiciones_Posiciones_Clasificacion"
  add_foreign_key "Requerimiento_EvalAutor", "Solicitud_Empleo", column: "Numero_Solicitud", primary_key: "Numero_solicitud", name: "FK_Requerimiento_EvalAutor_Solicitud_Empleo"
  add_foreign_key "Requerimiento_Personal", "Posiciones_Clasificacion", column: "Codigo_Cargo", primary_key: "Codigo", name: "fk_Posiciones_ClasificacionRequerimiento_Personal (Requerimiento_Personal -> Posiciones_Clasificacion) Posiciones_Clasificacion_"
  add_foreign_key "Requerimientos_Contratados", "Requerimiento_Personal", column: "RequerimientoId", primary_key: "ID", name: "FK_Requerimientos_Contratados_Requerimiento_Personal"
  add_foreign_key "Requerimientos_Contratados", "Requerimientos_Elegidos", column: "EleccionId", primary_key: "EleccionId", name: "FK_Requerimientos_Contratados_Requerimientos_Elegidos"
  add_foreign_key "Roles_Nomina", "Companias", column: "Codigo_Compania", primary_key: "Codigo", name: "fk_CompaniasRoles_Nomina (Roles_Nomina -> Companias) Companias_Roles_Nomina"
  add_foreign_key "Roles_Personal", "Companias", column: "Codigo_Compania", primary_key: "Codigo", name: "fk_CompaniasRoles_Personal (Roles_Personal -> Companias) Companias_Roles_Personal"
  add_foreign_key "Sectores_Economicos", "Areas_Economicas", column: "CodAreaEconomica", primary_key: "Codigo", name: "FK_Sectores_Economicos_Sectores_Economicos"
  add_foreign_key "Seguro_Inclucion_Exclucion", "Planes_Seguro", column: "Codigo_Plan_Seguro", primary_key: "Codigo_Seguro", name: "fk_Planes_SeguroSeguro_Inclucion_Exclucion (Seguro_Inclucion_Exclucion -> Planes_Seguro) Planes_Seguro_Seguro_Inclucion_Exclucio"
  add_foreign_key "Si_Roles", "Companias", column: "Rol_CodCompania", primary_key: "Codigo", name: "FK_Si_Roles_Companias"
  add_foreign_key "Si_RolesPantallas", "Si_Roles", column: "prol_CodCompania", primary_key: "Rol_CodCompania", name: "FK_Si_RolesPantallas_Si_Roles"
  add_foreign_key "Si_RolesPantallas", "Si_Roles", column: "prol_CodRoll", primary_key: "Rol_Codigo", name: "FK_Si_RolesPantallas_Si_Roles"
  add_foreign_key "Si_UsuariosRoles", "Si_Roles", column: "usug_CodCompania", primary_key: "Rol_CodCompania", name: "FK_Si_UsuariosRoles_Si_Roles"
  add_foreign_key "Si_UsuariosRoles", "Si_Roles", column: "usug_CodRol", primary_key: "Rol_Codigo", name: "FK_Si_UsuariosRoles_Si_Roles"
  add_foreign_key "Si_UsuariosRoles", "Si_Usuarios", column: "usug_CodUsuario", primary_key: "Usu_Codigo", name: "FK_Si_UsuariosRoles_Si_Usuarios"
  add_foreign_key "Solicitantes_Entrevista", "Solicitud_Empleo", column: "Numero_Solicitud", primary_key: "Numero_solicitud", name: "fk_Solicitud_EmpleoSolicitantes_Entrevista (Solicitantes_Entrevista -> Solicitud_Empleo) Solicitud_Empleo_Solicitantes_Entrevist"
  add_foreign_key "Solicitantes_Evaluaciones", "Solicitud_Empleo", column: "Numero_Solicitud", primary_key: "Numero_solicitud", name: "FK_Solicitantes_Evaluaciones_Solicitud_Empleo"
  add_foreign_key "Solicitantes_Exam_Detalle", "Solicitantes_Examenes", column: "Codigo_SolExamen", primary_key: "Codigo", name: "FK_Solicitantes_Exam_Detalle_Solicitantes_Examenes"
  add_foreign_key "Solicitud_Cualidades", "Cualidades_Tecnicas_Intelectuales", column: "Codigo_Cualidad", primary_key: "Codigo", name: "fk_Cualidades_Tecnicas_IntelectualesSolicitud_Cualidades (Solicitud_Cualidades -> Cualidades_Tecnicas_Intelectuales) Cualidades_"
  add_foreign_key "Solicitud_Cualidades", "Solicitud_Empleo", column: "Numero_Solicitud", primary_key: "Numero_solicitud", name: "fk_Solicitud_EmpleoSolicitud_Cualidades (Solicitud_Cualidades -> Solicitud_Empleo) Solicitud_Empleo_Solicitud_Cualidades"
  add_foreign_key "Solicitud_Dependientes", "Solicitud_Empleo", column: "Numero_Solicitud", primary_key: "Numero_solicitud", name: "fk_Solicitud_EmpleoSolicitud_Dependientes (Solicitud_Dependientes -> Solicitud_Empleo) Solicitud_Empleo_Solicitud_Dependientes"
  add_foreign_key "Solicitud_Empleo", "Companias", column: "Numero_Compania", primary_key: "Codigo", name: "fk_CompaniasSolicitud_Empleo (Solicitud_Empleo -> Companias) Companias_Solicitud_Empleo"
  add_foreign_key "Solicitud_Estudios_1", "Solicitud_Empleo", column: "Numero_Solicitud", primary_key: "Numero_solicitud", name: "fk_Solicitud_EmpleoSolicitud_Estudios (Solicitud_Estudios -> Solicitud_Empleo) Solicitud_Empleo_Solicitud_Estudios"
  add_foreign_key "Solicitud_Experiencia", "Solicitud_Empleo", column: "Numero_Solicitud", primary_key: "Numero_solicitud", name: "fk_Solicitud_EmpleoSolicitud_Experiencia (Solicitud_Experiencia -> Solicitud_Empleo) Solicitud_Empleo_Solicitud_Experiencia"
  add_foreign_key "Solicitud_Posiciones", "Solicitud_Empleo", column: "Numero_solicitud", primary_key: "Numero_solicitud", name: "fk_Solicitud_EmpleoSolicitud_Posiciones (Solicitud_Posiciones -> Solicitud_Empleo) Solicitud_Empleo_Solicitud_Posiciones"
  add_foreign_key "SubGruposEmpDistG", "SubGrupos_Empleados", column: "CodSubGrupo", primary_key: "Codigo", name: "FK_SubGruposEmpDistG_SubGrupos_Empleados"
  add_foreign_key "SubGruposEmpDistG", "SubGrupos_Empleados", column: "CodSubGrupoDist", primary_key: "Codigo", name: "FK_SubGruposEmpDistG_SubGrupos_Empleados1"
  add_foreign_key "SubGrupos_Empleados", "Grupos_Empleados", column: "Codigo_Grupo", primary_key: "Codigo", name: "fk_Grupos_EmpleadosSubGrupos_Empleados (SubGrupos_Empleados -> Grupos_Empleados) Grupos_Empleados_SubGrupos_Empleados"
  add_foreign_key "Sucursales", "Companias", column: "Numero_Compania", primary_key: "Codigo", name: "FK_Sucursales_Companias"
  add_foreign_key "Sucursales", "Sectores", column: "Cod_Sector", primary_key: "Codigo", name: "FK_Sucursales_Sectores"
  add_foreign_key "Sueldo_Navidad", "Companias", column: "Compania", primary_key: "Codigo", name: "fk_CompaniasSueldo_Navidad (Sueldo_Navidad -> Companias) Companias_Sueldo_Navidad"
  add_foreign_key "Sueldo_Navidad_Detalles", "Sueldo_Navidad_Detalles", column: "Codigo_Empleado", primary_key: "Codigo_Empleado", name: "FK_Sueldo_Navidad_Detalles_Sueldo_Navidad_Detalles"
  add_foreign_key "Sueldo_Navidad_Detalles", "Sueldo_Navidad_Detalles", column: "Codigo_Regalia", primary_key: "Codigo_Regalia", name: "FK_Sueldo_Navidad_Detalles_Sueldo_Navidad_Detalles"
  add_foreign_key "Sueldo_Navidad_Detalles", "Sueldo_Navidad_Detalles", column: "Codigo_Tipo_Novedad", primary_key: "Codigo_Tipo_Novedad", name: "FK_Sueldo_Navidad_Detalles_Sueldo_Navidad_Detalles"
  add_foreign_key "Sueldo_Navidad_Detalles", "Sueldo_Navidad_Detalles", column: "Tipo_Novedad", primary_key: "Tipo_Novedad", name: "FK_Sueldo_Navidad_Detalles_Sueldo_Navidad_Detalles"
  add_foreign_key "Sueldo_Navidad_Detalles", "Sueldo_Navidad_Detalles", column: "snd_CodCompania", primary_key: "snd_CodCompania", name: "FK_Sueldo_Navidad_Detalles_Sueldo_Navidad_Detalles"
  add_foreign_key "Sueldo_Navidad_Emp", "Sueldo_Navidad", column: "Codigo_Regalia", primary_key: "Codigo", name: "fk_Sueldo_NavidadSueldo_Navidad_Emp (Sueldo_Navidad_Emp -> Sueldo_Navidad) Sueldo_Navidad_Sueldo_Navidad_Emp"
  add_foreign_key "Sueldo_Navidad_Emp", "Sueldo_Navidad_Emp", column: "Codigo_Empleado", primary_key: "Codigo_Empleado", name: "FK_Sueldo_Navidad_Emp_Sueldo_Navidad_Emp"
  add_foreign_key "Sueldo_Navidad_Emp", "Sueldo_Navidad_Emp", column: "Codigo_Regalia", primary_key: "Codigo_Regalia", name: "FK_Sueldo_Navidad_Emp_Sueldo_Navidad_Emp"
  add_foreign_key "Sueldo_Navidad_Emp", "Sueldo_Navidad_Emp", column: "sne_CodCompania", primary_key: "sne_CodCompania", name: "FK_Sueldo_Navidad_Emp_Sueldo_Navidad_Emp"
  add_foreign_key "Usuarios_Nomina", "Companias", column: "Codigo_Compania", primary_key: "Codigo", name: "fk_CompaniasUsuarios_Nomina (Usuarios_Nomina -> Companias) Companias_Usuarios_Nomina"
  add_foreign_key "Usuarios_Nomina", "Roles_Nomina", column: "Codigo_Roll", primary_key: "Codigo", name: "fk_Roles_NominaUsuarios_Nomina (Usuarios_Nomina -> Roles_Nomina) Roles_Nomina_Usuarios_Nomina"
  add_foreign_key "Usuarios_Personal", "Companias", column: "Codigo_Compania", primary_key: "Codigo", name: "fk_CompaniasUsuarios_Personal (Usuarios_Personal -> Companias) Companias_Usuarios_Personal"
  add_foreign_key "Usuarios_Personal", "Roles_Personal", column: "Codigo_Roll", primary_key: "Codigo", name: "fk_Roles_PersonalUsuarios_Personal (Usuarios_Personal -> Roles_Personal) Roles_Personal_Usuarios_Personal"
end
