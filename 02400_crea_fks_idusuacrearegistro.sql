set client_min_messages to warning;

alter table estados_civiles                   add constraint esci_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_cotizaciones_vtas         add constraint escv_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_cotizacs_servs_hono       add constraint ecsh_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_detalles_ordenes_compras  add constraint edoc_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_grem                      add constraint esgr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_notas_vtas                add constraint esnv_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_ordenes_compras           add constraint esoc_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_ordenes_servs_hono        add constraint eosh_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_pagos_ords_servs_hono     add constraint epos_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_registros                 add constraint esre_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_rendiciones_gastos        add constraint esrg_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_requisiciones             add constraint esrq_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_solics_servs_hono         add constraint essh_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_ventas                    add constraint esve_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table monedas                           add constraint mone_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table origenes_productos                add constraint orpr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table perfiles                          add constraint perf_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table sexos                             add constraint sexo_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_clientes                    add constraint ticl_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_cotizaciones_vtas           add constraint ticv_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_formas_pagos                add constraint tifp_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_movimientos_bodegas         add constraint timb_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_productos                   add constraint tipr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_proveedores                 add constraint tipp_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_rendiciones_gastos          add constraint tirg_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_requisiciones               add constraint tire_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_servicios                   add constraint tise_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table unidades_medidas_productos        add constraint unmp_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table unidades_medidas_servicios        add constraint unms_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table bitacoras_cambios_precios         add constraint bicp_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table conceptos_rendiciones_gastos      add constraint corg_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_rendiciones_gastos       add constraint derg_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table fondos_a_rendir                   add constraint fore_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table rendiciones_gastos                add constraint rega_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table cotizaciones_compras              add constraint coco_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_cotizaciones_compras     add constraint decc_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table proveedores                       add constraint prov_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table recepciones_compras               add constraint reco_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_recepciones_compras      add constraint derc_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_ordenes_compras          add constraint deoc_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table ordenes_compras                   add constraint orco_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table autorizadores_requisiciones       add constraint aure_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table autorizadores_rendiciones         add constraint aurn_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table requisiciones                     add constraint requ_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_requisiciones            add constraint dere_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table descuentos                        add constraint desu_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table movimientos_bodegas               add constraint mobo_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_movtos_bodegas           add constraint demb_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table sub_familias_productos            add constraint sfpr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table familias_productos                add constraint fapr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_listas_precios           add constraint delp_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table listas_precios                    add constraint lipr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table bodegas                           add constraint bode_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table bodegas_productos                 add constraint bopr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table solicitudes_servs_hono            add constraint sosh_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table cotizaciones_servs_hono           add constraint cosh_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table doctos_cotizacs_servs_hono        add constraint dcsh_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table ordenes_servicios_hono            add constraint orsh_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table doctos_ordenes_servs_hono         add constraint dosh_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table pagos_ordenes_servs_hono          add constraint posh_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table documentos_legales                add constraint dole_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_documentos_legales        add constraint esdl_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_documentos_legales          add constraint tidl_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table cuentas_contables                 add constraint cuco_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table perfiles_programas                add constraint pepr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table paises                            add constraint pais_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table grupos_empresariales              add constraint grem_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table rubros                            add constraint rubr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table empresas                          add constraint empr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table parametros                        add constraint para_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table parametros_empresas               add constraint paem_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table personas                          add constraint pers_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table programas                         add constraint prog_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table usuarios_perfiles                 add constraint uspe_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table valores_paises                    add constraint vapa_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table gerencias                         add constraint gere_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table proyectos                         add constraint proy_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table lineas_negocios                   add constraint line_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table centros_costos                    add constraint ceco_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tareas                            add constraint tare_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table unidades_territoriales            add constraint unte_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table impuestos                         add constraint impu_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_productos_impuestos         add constraint tipi_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_direcciones                 add constraint tidi_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table clientes                          add constraint clie_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table direcciones_clientes              add constraint dicl_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table cotizaciones_ventas               add constraint cove_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_cotizs_vtas              add constraint decv_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_doctos_ventas               add constraint tidv_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table ventas                            add constraint vent_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_ventas                   add constraint deve_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table notas_ventas                      add constraint nove_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_notas_vtas               add constraint denv_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table formas_pagos_notas_ventas         add constraint fpnv_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table formas_pagos_ventas               add constraint fpve_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table productos                         add constraint prod_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table servicios                         add constraint serv_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table dominios                          add constraint domi_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table valores_dominios                  add constraint vado_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_compras                  add constraint deco_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table compras                           add constraint comp_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table asientos_contables                add constraint asco_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_asientos_contables       add constraint deac_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_asientos_contables        add constraint esac_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table estados_periodos_contables        add constraint espc_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table periodos_contables                add constraint peco_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_asocs_ctas_ctbles           add constraint tacc_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_cuentas_contables           add constraint ticc_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_entradas_contables          add constraint tiec_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_asientos_contables          add constraint tiac_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table procesos_contables                add constraint prco_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table procesos_contables_empresas       add constraint prce_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table conceptos_contabilizacs_automats  add constraint coca_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table detalles_procesos_ctbles_empresas add constraint dpce_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table direcciones_proveedores           add constraint dipr_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table cuentas_bancarias_proveedores     add constraint cubp_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table bancos                            add constraint banc_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_cuentas_bancarias           add constraint ticb_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table origenes_asientos_contables       add constraint orac_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table tipos_usos_doctos_ventas          add constraint tudv_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table usos_doctos_ventas                add constraint usdv_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);

alter table usuarios                          add constraint usua_fk1_usua foreign key (idusuacrearegistro)    references usuarios                         (id);
alter table usuarios                          add constraint usua_fk_pers  foreign key (idpers)                references personas                         (id);

\q
