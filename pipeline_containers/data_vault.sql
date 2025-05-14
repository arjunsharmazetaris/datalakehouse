INSERT INTO pipeline_container (id, name, case_sensitive_name, description, fk_organisation_id) VALUES ('954525', 'data_vault', 'DATA_VAULT', NULL, '50702') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('994452', 'create_link_insert_statements', 'create_link_insert_statements', NULL, '954525') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('992994', 'create_sat_insert_statements', 'create_sat_insert_statements', NULL, '954525') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('992557', 'create_hub_insert_statements', 'create_hub_insert_statements', NULL, '954525') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('989511', 'create_link_staging_views_statements', 'create_link_staging_views_statements', NULL, '954525') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('989380', 'create_link_table_statements', 'create_link_table_statements', NULL, '954525') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('957855', 'create_hub_sat_staging_views_statements', 'create_hub_sat_staging_views_statements', NULL, '954525') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('956080', 'create_sat_table_statements', 'create_sat_table_statements', NULL, '954525') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('956054', 'create_hub_table_statements', 'create_hub_table_statements', NULL, '954525') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562844', 'projection_5', 'projection_5', NULL, '992557', 'PROJECTION', 'projection_4') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562833', 'projection_4', 'projection_4', NULL, '992557', 'PROJECTION', 'join_3') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562823', 'join_3', 'join_3', NULL, '992557', 'JOIN', 'projection_2,sqltable_1') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562818', 'sqltable_1', 'sqltable_1', NULL, '992557', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562808', 'projection_2', 'projection_2', NULL, '992557', 'PROJECTION', 'sqltable_0') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562799', 'sqltable_0', 'sqltable_0', NULL, '992557', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1274130', 'projection_1', 'projection_1', NULL, '989511', 'PROJECTION', 'projection_0') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1274120', 'projection_0', 'projection_0', NULL, '989511', 'PROJECTION', 'v_data_vault_container_v_generate_links_stg') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1274111', 'v_data_vault_container_v_generate_links_stg', 'v_data_vault_container_v_generate_links_stg', NULL, '989511', 'DATASOURCE', 'v_data_vault_container.V_GENERATE_LINKS_STG') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561293', 'projection_5', 'projection_5', NULL, '956054', 'PROJECTION', 'projection_4') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561288', 'projection_4', 'projection_4', NULL, '956054', 'PROJECTION', 'projection_3') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561283', 'projection_3', 'projection_3', NULL, '956054', 'PROJECTION', 'join_2') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561279', 'join_2', 'join_2', NULL, '956054', 'JOIN', 'sqltable_0,sqltable_1') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561274', 'sqltable_1', 'sqltable_1', NULL, '956054', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561270', 'sqltable_0', 'sqltable_0', NULL, '956054', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561347', 'projection_11', 'projection_11', NULL, '956080', 'PROJECTION', 'projection_10') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561344', 'projection_10', 'projection_10', NULL, '956080', 'PROJECTION', 'projection_9') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561338', 'projection_9', 'projection_9', NULL, '956080', 'PROJECTION', 'join_3') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561333', 'join_3', 'join_3', NULL, '956080', 'JOIN', 'projection_6,projection_8') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561328', 'projection_8', 'projection_8', NULL, '956080', 'PROJECTION', 'sqltable_2') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561323', 'sqltable_2', 'sqltable_2', NULL, '956080', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561318', 'projection_6', 'projection_6', NULL, '956080', 'PROJECTION', 'join_5') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561313', 'join_5', 'join_5', NULL, '956080', 'JOIN', 'projection_3,projection_4') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561308', 'projection_4', 'projection_4', NULL, '956080', 'PROJECTION', 'sqltable_1') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561304', 'sqltable_1', 'sqltable_1', NULL, '956080', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561299', 'projection_3', 'projection_3', NULL, '956080', 'PROJECTION', 'sqltable_0') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561295', 'sqltable_0', 'sqltable_0', NULL, '956080', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562893', 'projection_1', 'projection_1', NULL, '992994', 'PROJECTION', 'projection_0') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562886', 'projection_0', 'projection_0', NULL, '992994', 'PROJECTION', 'join_2') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562880', 'join_2', 'join_2', NULL, '992994', 'JOIN', 'sqltable_0,sqltable_1') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562875', 'sqltable_1', 'sqltable_1', NULL, '992994', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562869', 'sqltable_0', 'sqltable_0', NULL, '992994', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562867', 'projection_2', 'projection_2', NULL, '994452', 'PROJECTION', 'projection_1') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562856', 'projection_1', 'projection_1', NULL, '994452', 'PROJECTION', 'v_data_vault_container_v_generate_links_inserts') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1562846', 'v_data_vault_container_v_generate_links_inserts', 'v_data_vault_container_v_generate_links_inserts', NULL, '994452', 'DATASOURCE', 'v_data_vault_container.V_GENERATE_LINKS_INSERTS') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1560732', 'projection_2', 'projection_2', NULL, '989380', 'PROJECTION', 'projection_1') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1560723', 'projection_1', 'projection_1', NULL, '989380', 'PROJECTION', 'projection_0') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1560715', 'projection_0', 'projection_0', NULL, '989380', 'PROJECTION', 'v_data_vault_container_v_generate_links') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1560708', 'v_data_vault_container_v_generate_links', 'v_data_vault_container_v_generate_links', NULL, '989380', 'DATASOURCE', 'v_data_vault_container.V_GENERATE_LINKS') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561398', 'projection_0', 'projection_0', NULL, '957855', 'PROJECTION', 'sqltable_0') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1561396', 'sqltable_0', 'sqltable_0', NULL, '957855', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1561396', NULL, 'select concat(
    ''CREATE SCHEMASTORE VIEW v_stg_'',  table_name,  ''_'',  source_name,  '' with CONTAINER v_data_vault_container AS ( '',  '' SELECT md5(concat('',  CHAR(39),  bkcc,  CHAR(39),  '','', pre_md5_statement, '')) as hk_h_'',  table_name,  '', '',  con_colnames,  '', '',  ''md5(concat('',  pre_md5_statement_all_trimmed ,  '')) as hd_h_'',  table_name,  '', current_date() as dss_load_date, '',  CHAR(39),  bkcc,  CHAR(39),  '' as bkcc, '',  CHAR(39),  source_name,  CHAR(39),  '' as dss_record_source FROM '',  source_name,  ''.'',  table_name,  '')'',  CHAR(59)
) as create_statements from
(
select bkcc,  pre_md5_statement,  source_name,  table_name,  con_colnames,  replace(TRIM(
    BOTH '',''
    FROM array_join(
        array_except(
            split(pre_md5_statement_all, '',''),  split(pre_md5_statement, '','')
        ),  '', ''
    )
),''as varchar(255))'','' as varchar(255)),\''\''\''\'')))'') AS pre_md5_statement_all_trimmed, pre_md5_statement_all
from (
    select t3.bkcc,  t4.*
    from FLUID_VAULT.FLUID_VAULT.PARAM_STORE t3
    inner join (
        select t2.pre_md5_statement,  t1.pre_md5_statement_all,  t1.source_name as source_name,  t1.table_name as table_name,  t1.con_colnames_all as con_colnames
        from (
            select lower(s.name) as source_name,  lower(R.name) as table_name,  concat_ws(
                '', '',  collect_set(
                    concat(
                        lower(trim(DRS.column_name))
                    )
                )
            ) as con_colnames_all,  concat_ws(
                '','',  collect_set(
                    concat(''lower(trim(coalesce(cast('',
                    lower(DRS.column_name),'' as varchar(255)),\''\''\''\'')))''))
            )  as pre_md5_statement_all,  lower(trim(concat(s.name, R.name))) as join_col_src
            from METASTORE.datasource_relation_schema DRS,  metastore.datasource S,  metastore.datasource_relation R
            where DRS.fk_datasource_relation_id = R.id
            and S.id = R.fk_datasource_id
            and lower(trim(s.name)) in (
                select distinct lower(trim(source_datasource_name))
                from FLUID_VAULT.FLUID_VAULT.PARAM_STORE
            )
            group by R.name,  S.name
        ) t1
        inner join (
            select lower(ds.name) as source_name,  lower(dr.name) as table_name,  concat_ws(
                '', '',  collect_set(
                    concat(
                        lower(trim(DRS.column_name)),  '' '',  lower(trim(DRS.data_type))
                    )
                )
            ) as con_colnames,  concat_ws(
                '','',  collect_set(
                    concat(''lower(trim(coalesce(cast('',
                    lower(DRS.column_name),'' as varchar(255)),\''\''\''\'')))''))
            ) as pre_md5_statement,  lower(trim(concat(ds.name, dr.name))) as join_col_tgt
            from metastore.datasource_relation_schema_tag drst
            inner join metastore.datasource_relation_schema drs on drs.id = drst.fk_datasource_relation_schema_id
            inner join metastore.datasource_relation dr on dr.id = drs.fk_datasource_relation_id
            inner join metastore.datasource ds on ds.id = dr.fk_datasource_id
            where lower(trim(drst.tag)) in (''bk'')
            and lower(trim(ds.name)) in (
                select distinct lower(trim(source_datasource_name))
                from FLUID_VAULT.FLUID_VAULT.PARAM_STORE
            )
            group by dr.name,  ds.name
        ) t2 on t1.join_col_src = t2.join_col_tgt
    ) t4 on concat(
        lower(t3.table_name),  ''_'',  lower(t3.source_datasource_name)
    ) = concat(lower(t4.table_name), ''_'', lower(t4.source_name))
)
)') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1562799', NULL, 'select concat(
    ''v_stg_'',  table1.source_table_name,  ''_'',  source_datasource_name
) as staging_view_name,  table1.hub_table_name,  table1.tag,  table1.source_table_name,  table1.source_datasource_name,  table2.con_colnames as con_colnames_source,  concat(
    table2.con_colnames,  '', vstg.hk_h_'',  table1.source_table_name,  '', vstg.hd_h_'',  table1.source_table_name,  '', vstg.dss_load_date, vstg.dss_record_source, vstg.bkcc''
) as hub_columns_list,  table2.con_colnames_without_stg
from (
    select lower(trim(replace(tag, ''maps_to_'', ''h_''))) as hub_table_name,  lower(trim(tag)) as tag,  lower(trim(dr.name)) as source_table_name,  lower(trim(d.name)) as source_datasource_name,  concat(lower(trim(d.name)), ''_'', lower(trim(dr.name))) as source_tbl_ds_join
    from metastore.datasource_relation_tag drt
    INNER JOIN metastore.datasource_relation dr on drt.fk_datasource_relation_id = dr.id
    inner JOIN metastore.datasource d ON d.id = dr.fk_datasource_id
    where lower(trim(d.name)) IN (
        select distinct lower(trim(source_datasource_name))
        from FLUID_VAULT.FLUID_VAULT.PARAM_STORE
    )
) table1
inner join (
    select t1.table_name,  t2.con_colnames as con_colnames,  concat(t1.source_name, ''_'', t1.table_name) as con_source_table,  t2.con_colnames_without_stg as con_colnames_without_stg
    from (
        select lower(s.name) as source_name,  lower(R.name) as table_name
        from METASTORE.datasource_relation_schema DRS,  metastore.datasource S,  metastore.datasource_relation R
        where DRS.fk_datasource_relation_id = R.id
        and S.id = R.fk_datasource_id
        and lower(trim(s.name)) in (
            select distinct lower(trim(source_datasource_name))
            from FLUID_VAULT.FLUID_VAULT.PARAM_STORE
        )
        group by R.name,  S.name
    ) t1
    inner join (
        select lower(ds.name) as source_name,  lower(dr.name) as table_name,  concat_ws(
            '', '',  array_sort(
                collect_set(
                    concat(
                        ''vstg.'',  lower(trim(DRS.column_name))
                    )
                )
            )
        ) as con_colnames,  concat_ws(
            '', '',  array_sort(
                collect_set(
                    lower(trim(DRS.column_name))
                )
            )
        ) as con_colnames_without_stg
        from metastore.datasource_relation_schema_tag drst
        inner join metastore.datasource_relation_schema drs on drs.id = drst.fk_datasource_relation_schema_id
        inner join metastore.datasource_relation dr on dr.id = drs.fk_datasource_relation_id
        inner join metastore.datasource ds on ds.id = dr.fk_datasource_id
        where lower(trim(drst.tag)) in (''bk'')
        and lower(trim(ds.name)) in (
            select distinct lower(trim(source_datasource_name))
            from FLUID_VAULT.FLUID_VAULT.PARAM_STORE
        )
        group by dr.name,  ds.name
    ) t2 on t1.table_name = t2.table_name
) table2 on table2.con_source_table = table1.source_tbl_ds_join') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1561274', NULL, 'select lower(trim(source_datasource_name)),  lower(trim(table_name)) as table_name,  lower(trim(target_datasource_name)), concat(lower(trim(source_datasource_name)),''_'',lower(trim(table_name))) as sqltabl1_joinkey
from FLUID_VAULT.FLUID_VAULT.PARAM_STORE where lower(trim(hub))=''yes''') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1562818', NULL, 'select lower(trim(source_datasource_name)),  lower(trim(table_name)) as table_name,  lower(trim(target_datasource_name)),  concat(
    lower(trim(source_datasource_name)),lower(trim(table_name))
) as tablejoinname
from FLUID_VAULT.FLUID_VAULT.PARAM_STORE') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1561323', NULL, 'select distinct lower(trim(source_datasource_name)),  lower(trim(table_name)) as table_name,  lower(trim(target_datasource_name)),  lower(trim(concat(source_datasource_name, table_name)))
from FLUID_VAULT.FLUID_VAULT.PARAM_STORE') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1561270', NULL, 'select t1.table_name,  t2.con_colnames, concat(t1.source_name,''_'',t1.table_name) as con_source_table
from (
    select lower(s.name) as source_name,  lower(R.name) as table_name
    from METASTORE.datasource_relation_schema DRS,  metastore.datasource S,  metastore.datasource_relation R
    where DRS.fk_datasource_relation_id = R.id
    and S.id = R.fk_datasource_id
    and lower(trim(s.name)) in (
        select distinct lower(trim(source_datasource_name))
        from FLUID_VAULT.FLUID_VAULT.PARAM_STORE
    )
    group by R.name,  S.name
) t1
inner join (
    select lower(ds.name) as source_name,  lower(dr.name) as table_name,  concat_ws(
        '', '',  collect_set(
            concat(
                lower(trim(DRS.column_name)),  '' '',  lower(trim(DRS.data_type))
            )
        )
    ) as con_colnames
    from metastore.datasource_relation_schema_tag drst
    inner join metastore.datasource_relation_schema drs on drs.id = drst.fk_datasource_relation_schema_id
    inner join metastore.datasource_relation dr on dr.id = drs.fk_datasource_relation_id
    inner join metastore.datasource ds on ds.id = dr.fk_datasource_id
    where lower(trim(drst.tag)) in (''bk'')
    and lower(trim(ds.name)) in (
        select distinct lower(trim(source_datasource_name))
        from FLUID_VAULT.FLUID_VAULT.PARAM_STORE
    )
    group by dr.name,  ds.name
) t2 on t1.table_name = t2.table_name') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1561304', NULL, 'select lower(ds.name) as source_name,  lower(dr.name) as table_name,  concat_ws(
    '', '',  collect_set(
        concat(
            lower(trim(DRS.column_name)),  '' '',  lower(trim(DRS.data_type))
        )
    )
) as con_colnames
from metastore.datasource_relation_schema_tag drst
inner join metastore.datasource_relation_schema drs on drs.id = drst.fk_datasource_relation_schema_id
inner join metastore.datasource_relation dr on dr.id = drs.fk_datasource_relation_id
inner join metastore.datasource ds on ds.id = dr.fk_datasource_id
where lower(trim(drst.tag)) in (''bk'')
and lower(trim(ds.name)) in (
    select distinct lower(trim(source_datasource_name))
    from FLUID_VAULT.FLUID_VAULT.PARAM_STORE
)
group by dr.name,  ds.name') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1562875', NULL, 'select lower(trim(source_datasource_name)),  lower(trim(table_name)) as table_name,  lower(trim(target_datasource_name)),  concat(
    lower(trim(source_datasource_name)),lower(trim(table_name))
) as tablejoinname
from FLUID_VAULT.FLUID_VAULT.PARAM_STORE') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1561295', NULL, 'select lower(s.name) as source_name,  lower(R.name) as table_name,  concat_ws(
    '', '',  collect_set(
        concat(
            lower(trim(DRS.column_name)),  '' '',  lower(trim(DRS.data_type))
        )
    )
) as con_colnames_all
from METASTORE.datasource_relation_schema DRS,  metastore.datasource S,  metastore.datasource_relation R
where DRS.fk_datasource_relation_id = R.id
and S.id = R.fk_datasource_id
and lower(trim(s.name)) in (
    select distinct lower(trim(source_datasource_name))
    from FLUID_VAULT.FLUID_VAULT.PARAM_STORE
)
group by R.name,  S.name') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1562869', NULL, 'select lower(ds.name) as source_name,  lower(dr.name) as table_name,  concat_ws(
    '', '',  array_sort(
        collect_set(
            concat(
                ''vstg.'',  lower(trim(DRS.column_name))
            )
        )
    )
) as con_colnames,  concat_ws(
    '', '',  array_sort(collect_set(lower(trim(DRS.column_name))))
) as con_colnames_without_stg,  concat(lower(trim(ds.name)), lower(trim(dr.name))) as coltablejoin
from metastore.datasource_relation_schema drs
inner join metastore.datasource_relation dr on dr.id = drs.fk_datasource_relation_id
inner join metastore.datasource ds on ds.id = dr.fk_datasource_id
where concat(
    lower(trim(ds.name)),  lower(trim(dr.name)),  lower(trim(drs.column_name))
) IN (
    select concat(
        lower(trim(ds.name)),  lower(trim(dr.name)),  lower(trim(drs.column_name))
    )
    from metastore.datasource_relation_schema drs
    inner join metastore.datasource_relation dr on dr.id = drs.fk_datasource_relation_id
    inner join metastore.datasource ds on ds.id = dr.fk_datasource_id
    where concat(
        lower(trim(ds.name)),  lower(trim(dr.name)),  lower(trim(drs.column_name))
    ) NOT IN (
        select concat(
            lower(trim(ds.name)),  lower(trim(dr.name)),  lower(trim(drs.column_name))
        )
        from metastore.datasource_relation_schema_tag drst
        inner join metastore.datasource_relation_schema drs on drs.id = drst.fk_datasource_relation_schema_id
        inner join metastore.datasource_relation dr on dr.id = drs.fk_datasource_relation_id
        inner join metastore.datasource ds on ds.id = dr.fk_datasource_id
        where lower(trim(drst.tag)) = ''bk''
    )
    and lower(trim(ds.name)) in (
        select distinct lower(trim(source_datasource_name))
        from FLUID_VAULT.FLUID_VAULT.PARAM_STORE
    )
)
group by dr.name,  ds.name') using metastore;
INSERT INTO pipeline_datasource (id, datasource_table) VALUES ('1560708', '`v_data_vault_container`.`V_GENERATE_LINKS`') using metastore;
INSERT INTO pipeline_datasource (id, datasource_table) VALUES ('1274111', '`v_data_vault_container`.`V_GENERATE_LINKS_STG`') using metastore;
INSERT INTO pipeline_datasource (id, datasource_table) VALUES ('1562846', '`v_data_vault_container`.`V_GENERATE_LINKS_INSERTS`') using metastore;
INSERT INTO pipeline_join (id, join_tables, join_predicate, filter_expression, order_by) VALUES ('1561313', 'projection_3,projection_4', '(projection_3.join_col_src = projection_4.join_col_tgt)', NULL, NULL) using metastore;
INSERT INTO pipeline_join (id, join_tables, join_predicate, filter_expression, order_by) VALUES ('1561279', 'sqltable_0,sqltable_1', '(sqltable_0.con_source_table = sqltable_1.sqltabl1_joinkey)', NULL, NULL) using metastore;
INSERT INTO pipeline_join (id, join_tables, join_predicate, filter_expression, order_by) VALUES ('1561333', 'projection_6,projection_8', '(projection_6.join_col_src = projection_8.join_col_tgt)', NULL, NULL) using metastore;
INSERT INTO pipeline_join (id, join_tables, join_predicate, filter_expression, order_by) VALUES ('1562823', 'projection_2,sqltable_1', '(projection_2.coltablejoin = sqltable_1.tablejoinname)', NULL, NULL) using metastore;
INSERT INTO pipeline_join (id, join_tables, join_predicate, filter_expression, order_by) VALUES ('1562880', 'sqltable_0,sqltable_1', '(sqltable_0.coltablejoin = sqltable_1.tablejoinname)', NULL, NULL) using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561397', 'create_statements', 'create_statements', '"string"', NULL, '1561396') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561289', 'table_name', NULL, '"string"', NULL, '1561288') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561290', 'con_colnames', NULL, '"string"', NULL, '1561288') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561291', 'vds_name', NULL, '"string"', NULL, '1561288') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561292', 'create_statements', NULL, 'string', 'replace(create_stmt,'' long'','' bigint'')', '1561288') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562887', 'sqltable_0_source_name', NULL, '"string"', NULL, '1562886') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562888', 'sqltable_0_table_name', NULL, '"string"', NULL, '1562886') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562889', 'sqltable_0_con_colnames', NULL, '"string"', NULL, '1562886') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562890', 'sqltable_0_con_colnames_without_stg', NULL, '"string"', NULL, '1562886') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562891', 'target_datasource_name', NULL, '"string"', NULL, '1562886') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562892', 'insert_statements', NULL, 'string', 'concat(''INSERT INTO '',upper(trim(target_datasource_name)),''.'',upper(trim(target_datasource_name)),''.s_'',lower(trim(sqltable_0_table_name)),''_'',lower(trim(sqltable_0_source_name)), '' ( '', sqltable_0_con_colnames_without_stg,'', hk_h_'',lower(trim(sqltable_0_table_name)), '', hd_h_'',lower(trim(sqltable_0_table_name)),'', dss_load_date, dss_record_source, bkcc ) SELECT '', sqltable_0_con_colnames, '', vstg.hk_h_'',lower(trim(sqltable_0_table_name)),'', vstg.hd_h_'',lower(trim(sqltable_0_table_name)),'', vstg.dss_load_date, vstg.dss_record_source, vstg.bkcc FROM v_data_vault_container.v_stg_'',lower(trim(sqltable_0_table_name)),''_'',lower(trim(sqltable_0_source_name)), '' vstg LEFT JOIN '',upper(trim(target_datasource_name)),''.'',upper(trim(target_datasource_name)),''.s_'',lower(trim(sqltable_0_table_name)),''_'',lower(trim(sqltable_0_source_name)),'' stab ON vstg.hd_h_'',lower(trim(sqltable_0_table_name)),''=stab.hd_h_'',lower(trim(sqltable_0_table_name)),'' WHERE stab.hd_h_'',lower(trim(sqltable_0_table_name)),'' IS NULL;'')', '1562886') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561339', 'con_colnames', NULL, 'string', NULL, '1561338') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561340', 'vds_name', NULL, '"string"', NULL, '1561338') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561341', 'source_name', NULL, '"string"', NULL, '1561338') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561342', 'table_name', NULL, '"string"', NULL, '1561338') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561343', 'create_stmt', NULL, 'string', 'concat(''CREATE TABLE IF NOT EXISTS '',upper(trim(vds_name)),''.'',upper(trim(vds_name)),''.s_'', lower(trim(table_name)),''_'',lower(trim(source_name)),'' (hk_h_'', lower(trim(table_name)), '' STRING NOT NULL, '', ''hd_h_'', lower(trim(table_name)), '' STRING NOT NULL, '',con_colnames, '' ,dss_load_date date NOT NULL, '', ''dss_record_source STRING NOT NULL, '', ''bkcc STRING NOT NULL);'')', '1561338') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562857', 'link_view_name', NULL, 'string', NULL, '1562856') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562858', 'vstgcolumnnames', NULL, 'string', NULL, '1562856') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562859', 'columnnames', NULL, 'string', NULL, '1562856') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562860', 'vstg_link_col_name', NULL, 'string', NULL, '1562856') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562861', 'link_col_name', NULL, 'string', NULL, '1562856') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562862', 'hub_table_keys', NULL, 'string', NULL, '1562856') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562863', 'vstg_hub_table_keys', NULL, 'string', NULL, '1562856') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562864', 'tablename', NULL, 'string', NULL, '1562856') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562865', 'datasourcename', NULL, 'string', NULL, '1562856') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562866', 'insert_statements', NULL, 'string', 'concat(''INSERT INTO FLUID_VAULT.FLUID_VAULT.'', replace(lower(trim(link_col_name)),''hk_'',''''),'' ( '', lower(trim(link_col_name)),'', '',lower(trim(hub_table_keys)),'', '',lower(trim(columnnames)),'', dss_record_source, dss_load_date ) SELECT '', lower(trim(vstg_link_col_name)),'', '',lower(trim(vstg_hub_table_keys)),'', '',lower(trim(vstgcolumnnames)),'', vstg.dss_record_source, vstg.dss_load_date FROM v_data_vault_container.'',lower(trim(link_view_name)),'' vstg LEFT JOIN FLUID_VAULT.FLUID_VAULT.'', replace(lower(trim(link_col_name)),''hk_'',''''), '' ltab ON '', lower(trim(vstg_link_col_name)), '' = ltab.'',lower(trim(link_col_name)), '' WHERE ltab.'',lower(trim(link_col_name)),'' IS NULL;'')', '1562856') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562809', 'staging_view_name', NULL, '"string"', NULL, '1562808') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562810', 'hub_table_name', NULL, '"string"', NULL, '1562808') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562811', 'tag', NULL, '"string"', NULL, '1562808') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562812', 'source_table_name', NULL, '"string"', NULL, '1562808') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562813', 'source_datasource_name', NULL, '"string"', NULL, '1562808') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562814', 'con_colnames_source', NULL, '"string"', NULL, '1562808') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562815', 'hub_columns_list', NULL, '"string"', NULL, '1562808') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562816', 'con_colnames_without_stg', NULL, '"string"', NULL, '1562808') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562817', 'coltablejoin', NULL, 'string', 'concat(lower(trim(source_datasource_name)),lower(trim(source_table_name)))', '1562808') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561314', 'projection_3.source_name', 'projection_3_source_name', '"string"', NULL, '1561313') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561315', 'projection_3.table_name', 'projection_3_table_name', '"string"', NULL, '1561313') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561316', 'projection_3.con_colnames_all', 'projection_3_con_colnames_all', '"string"', NULL, '1561313') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561317', 'projection_4.con_colnames', 'projection_4_con_colnames', '"string"', NULL, '1561313') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561300', 'source_name', NULL, '"string"', NULL, '1561299') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561301', 'table_name', NULL, '"string"', NULL, '1561299') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561302', 'con_colnames_all', NULL, '"string"', NULL, '1561299') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561303', 'join_col_src', NULL, 'string', 'lower(trim(concat(source_name,table_name)))', '1561299') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562800', 'staging_view_name', 'staging_view_name', '"string"', NULL, '1562799') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562801', 'hub_table_name', 'hub_table_name', '"string"', NULL, '1562799') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562802', 'tag', 'tag', '"string"', NULL, '1562799') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562803', 'source_table_name', 'source_table_name', '"string"', NULL, '1562799') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562804', 'source_datasource_name', 'source_datasource_name', '"string"', NULL, '1562799') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562805', 'con_colnames_source', 'con_colnames_source', '"string"', NULL, '1562799') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562806', 'hub_columns_list', 'hub_columns_list', '"string"', NULL, '1562799') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562807', 'con_colnames_without_stg', 'con_colnames_without_stg', '"string"', NULL, '1562799') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274121', 'link_view_name', NULL, 'string', NULL, '1274120') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274122', 'hubtablekeyjoins', NULL, 'string', NULL, '1274120') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274123', 'hubcolnames', NULL, 'string', NULL, '1274120') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274124', 'hubcolnameswithoutalias', NULL, 'string', NULL, '1274120') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274125', 'bkcc', NULL, 'string', NULL, '1274120') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274126', 'link_col_name', NULL, 'string', NULL, '1274120') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274127', 'keycols', NULL, 'string', NULL, '1274120') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274128', 'tablequerycol', NULL, 'string', NULL, '1274120') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274129', 'create_statements', NULL, 'string', 'concat(''CREATE SCHEMASTORE VIEW '', link_view_name,'' WITH CONTAINER v_data_vault_container AS ( select md5(concat('', hubcolnameswithoutalias,'')) as '', link_col_name,'', '',hubcolnames,'', '', hubtablekeyjoins,'', NOW() as dss_load_date, '',CHAR(39),bkcc,CHAR(39),'' as dss_record_source FROM '', tablequerycol, '' WHERE '', keycols,'');'')', '1274120') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562868', 'insert_statements', NULL, 'string', NULL, '1562867') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561399', 'create_statements', NULL, '"string"', NULL, '1561398') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562845', 'insert_statements', NULL, 'string', NULL, '1562844') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561294', 'create_statements', NULL, 'string', NULL, '1561293') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561309', 'source_name', NULL, '"string"', NULL, '1561308') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561310', 'table_name', NULL, '"string"', NULL, '1561308') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561311', 'con_colnames', NULL, '"string"', NULL, '1561308') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561312', 'join_col_tgt', NULL, 'string', 'lower(trim(concat(source_name,table_name)))', '1561308') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560724', 'link_table_name', NULL, 'string', NULL, '1560723') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560725', 'tag', NULL, 'string', NULL, '1560723') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560726', 'linkcolnames', NULL, 'string', NULL, '1560723') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560727', 'link_col_name', NULL, 'string', NULL, '1560723') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560728', 'hub_table_keys', NULL, 'string', NULL, '1560723') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560729', 'target_datasource_name', NULL, 'string', NULL, '1560723') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560730', 'create_stmt', NULL, 'string', NULL, '1560723') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560731', 'create_statements', NULL, 'string', 'replace(create_stmt,'' long,'','' bigint,'')', '1560723') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562834', 'projection_2_staging_view_name', NULL, '"string"', NULL, '1562833') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562835', 'projection_2_hub_table_name', NULL, '"string"', NULL, '1562833') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562836', 'projection_2_tag', NULL, '"string"', NULL, '1562833') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562837', 'projection_2_source_table_name', NULL, '"string"', NULL, '1562833') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562838', 'projection_2_source_datasource_name', NULL, '"string"', NULL, '1562833') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562839', 'projection_2_con_colnames_source', NULL, '"string"', NULL, '1562833') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562840', 'projection_2_hub_columns_list', NULL, '"string"', NULL, '1562833') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562841', 'projection_2_con_colnames_without_stg', NULL, '"string"', NULL, '1562833') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562842', 'target_datasource_name', NULL, '"string"', NULL, '1562833') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562843', 'insert_statements', NULL, 'string', 'concat(''INSERT INTO '',upper(trim(target_datasource_name)),''.'',upper(trim(target_datasource_name)),''.'',lower(trim(projection_2_hub_table_name)),'' ( '',replace(projection_2_hub_columns_list,''vstg.'',''''),'' ) SELECT '', projection_2_hub_columns_list, '' FROM v_data_vault_container.'', projection_2_staging_view_name, '' vstg LEFT JOIN '', upper(trim(target_datasource_name)),''.'',upper(trim(target_datasource_name)),''.'',lower(trim(projection_2_hub_table_name)), '' htab ON vstg.hk_'',lower(trim(projection_2_hub_table_name)),'' = htab.hk_'',lower(trim(projection_2_hub_table_name)), '' WHERE htab.hk_'',lower(trim(projection_2_hub_table_name)), '' IS NULL;'')', '1562833') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561345', 'create_stmt', NULL, 'string', NULL, '1561344') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561346', 'create_statements', NULL, 'string', 'replace(create_stmt,'' long,'','' bigint,'')', '1561344') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561275', 'lower(trim(source_datasource_name))', 'lower(trim(source_datasource_name))', '"string"', NULL, '1561274') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561276', 'table_name', 'table_name', '"string"', NULL, '1561274') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561277', 'lower(trim(target_datasource_name))', 'lower(trim(target_datasource_name))', '"string"', NULL, '1561274') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561278', 'sqltabl1_joinkey', 'sqltabl1_joinkey', '"string"', NULL, '1561274') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562819', 'lower(trim(source_datasource_name))', 'lower(trim(source_datasource_name))', '"string"', NULL, '1562818') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562820', 'table_name', 'table_name', '"string"', NULL, '1562818') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562821', 'lower(trim(target_datasource_name))', 'lower(trim(target_datasource_name))', '"string"', NULL, '1562818') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562822', 'tablejoinname', 'tablejoinname', '"string"', NULL, '1562818') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274131', 'link_view_name', NULL, 'string', NULL, '1274130') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274132', 'hubtablekeyjoins', NULL, 'string', NULL, '1274130') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274133', 'hubcolnames', NULL, 'string', NULL, '1274130') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274134', 'hubcolnameswithoutalias', NULL, 'string', NULL, '1274130') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274135', 'bkcc', NULL, 'string', NULL, '1274130') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274136', 'link_col_name', NULL, 'string', NULL, '1274130') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274137', 'keycols', NULL, 'string', NULL, '1274130') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274138', 'tablequerycol', NULL, 'string', NULL, '1274130') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274139', 'create_statements', NULL, 'string', NULL, '1274130') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561348', 'create_statements', NULL, 'string', NULL, '1561347') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561324', 'lower(trim(source_datasource_name))', 'lower(trim(source_datasource_name))', '"string"', NULL, '1561323') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561325', 'table_name', 'table_name', '"string"', NULL, '1561323') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561326', 'lower(trim(target_datasource_name))', 'lower(trim(target_datasource_name))', '"string"', NULL, '1561323') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561327', 'lower(trim(concat(source_datasource_name, table_name)))', 'lower(trim(concat(source_datasource_name, table_name)))', '"string"', NULL, '1561323') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560716', 'link_table_name', NULL, 'string', NULL, '1560715') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560717', 'tag', NULL, 'string', NULL, '1560715') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560718', 'linkcolnames', NULL, 'string', NULL, '1560715') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560719', 'link_col_name', NULL, 'string', NULL, '1560715') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560720', 'hub_table_keys', NULL, 'string', NULL, '1560715') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560721', 'target_datasource_name', NULL, 'string', NULL, '1560715') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560722', 'create_stmt', NULL, 'string', 'concat(''CREATE TABLE IF NOT EXISTS '',upper(trim(target_datasource_name)),''.'',upper(trim(target_datasource_name)),''.'',link_table_name,'' ('', link_col_name,'', '',hub_table_keys,'', '',linkcolnames,'', dss_load_date date NOT NULL, dss_record_source STRING NOT NULL);'')', '1560715') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561280', 'sqltable_0.table_name', 'table_name', '"string"', NULL, '1561279') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561281', 'sqltable_0.con_colnames', 'con_colnames', '"string"', NULL, '1561279') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561282', 'sqltable_1.lower(trim(target_datasource_name))', 'vds_name', '"string"', NULL, '1561279') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561334', 'projection_6.con_colnames', 'con_colnames', 'string', NULL, '1561333') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561335', 'projection_8.vds_name', 'vds_name', '"string"', NULL, '1561333') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561336', 'projection_6.source_name', 'source_name', '"string"', NULL, '1561333') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561337', 'projection_6.table_name', 'table_name', '"string"', NULL, '1561333') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560709', 'link_table_name', NULL, 'string', NULL, '1560708') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560710', 'tag', NULL, 'string', NULL, '1560708') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560711', 'linkcolnames', NULL, 'string', NULL, '1560708') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560712', 'link_col_name', NULL, 'string', NULL, '1560708') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560713', 'hub_table_keys', NULL, 'string', NULL, '1560708') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560714', 'target_datasource_name', NULL, 'string', NULL, '1560708') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560733', 'link_table_name', NULL, 'string', NULL, '1560732') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560734', 'tag', NULL, 'string', NULL, '1560732') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560735', 'linkcolnames', NULL, 'string', NULL, '1560732') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560736', 'link_col_name', NULL, 'string', NULL, '1560732') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560737', 'hub_table_keys', NULL, 'string', NULL, '1560732') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560738', 'target_datasource_name', NULL, 'string', NULL, '1560732') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1560739', 'create_statements', NULL, 'string', NULL, '1560732') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561284', 'table_name', NULL, '"string"', NULL, '1561283') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561285', 'con_colnames', NULL, '"string"', NULL, '1561283') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561286', 'vds_name', NULL, '"string"', NULL, '1561283') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561287', 'create_stmt', NULL, 'string', 'concat(''CREATE TABLE IF NOT EXISTS '',upper(trim(vds_name)),''.'',upper(trim(vds_name)),''.h_'', lower(trim(table_name)),'' (hk_h_'', lower(trim(table_name)), '' STRING NOT NULL, '', ''hd_h_'', lower(trim(table_name)), '' STRING NOT NULL, '',con_colnames, '' ,dss_load_date date NOT NULL, '', ''dss_record_source STRING NOT NULL, '', ''bkcc STRING NOT NULL);'')', '1561283') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561271', 'table_name', 'table_name', '"string"', NULL, '1561270') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561272', 'con_colnames', 'con_colnames', '"string"', NULL, '1561270') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561273', 'con_source_table', 'con_source_table', '"string"', NULL, '1561270') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562824', 'projection_2.staging_view_name', 'projection_2_staging_view_name', '"string"', NULL, '1562823') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562825', 'projection_2.hub_table_name', 'projection_2_hub_table_name', '"string"', NULL, '1562823') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562826', 'projection_2.tag', 'projection_2_tag', '"string"', NULL, '1562823') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562827', 'projection_2.source_table_name', 'projection_2_source_table_name', '"string"', NULL, '1562823') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562828', 'projection_2.source_datasource_name', 'projection_2_source_datasource_name', '"string"', NULL, '1562823') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562829', 'projection_2.con_colnames_source', 'projection_2_con_colnames_source', '"string"', NULL, '1562823') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562830', 'projection_2.hub_columns_list', 'projection_2_hub_columns_list', '"string"', NULL, '1562823') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562831', 'projection_2.con_colnames_without_stg', 'projection_2_con_colnames_without_stg', '"string"', NULL, '1562823') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562832', 'sqltable_1.lower(trim(target_datasource_name))', 'target_datasource_name', '"string"', NULL, '1562823') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562881', 'sqltable_0.source_name', 'sqltable_0_source_name', '"string"', NULL, '1562880') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562882', 'sqltable_0.table_name', 'sqltable_0_table_name', '"string"', NULL, '1562880') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562883', 'sqltable_0.con_colnames', 'sqltable_0_con_colnames', '"string"', NULL, '1562880') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562884', 'sqltable_0.con_colnames_without_stg', 'sqltable_0_con_colnames_without_stg', '"string"', NULL, '1562880') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562885', 'sqltable_1.lower(trim(target_datasource_name))', 'target_datasource_name', '"string"', NULL, '1562880') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561305', 'source_name', 'source_name', '"string"', NULL, '1561304') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561306', 'table_name', 'table_name', '"string"', NULL, '1561304') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561307', 'con_colnames', 'con_colnames', '"string"', NULL, '1561304') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562876', 'lower(trim(source_datasource_name))', 'lower(trim(source_datasource_name))', '"string"', NULL, '1562875') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562877', 'table_name', 'table_name', '"string"', NULL, '1562875') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562878', 'lower(trim(target_datasource_name))', 'lower(trim(target_datasource_name))', '"string"', NULL, '1562875') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562879', 'tablejoinname', 'tablejoinname', '"string"', NULL, '1562875') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561329', 'lower(trim(source_datasource_name))', NULL, '"string"', NULL, '1561328') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561330', 'table_name', NULL, '"string"', NULL, '1561328') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561331', 'lower(trim(target_datasource_name))', 'vds_name', '"string"', NULL, '1561328') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561332', 'lower(trim(concat(source_datasource_name, table_name)))', 'join_col_tgt', '"string"', NULL, '1561328') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561296', 'source_name', 'source_name', '"string"', NULL, '1561295') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561297', 'table_name', 'table_name', '"string"', NULL, '1561295') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561298', 'con_colnames_all', 'con_colnames_all', '"string"', NULL, '1561295') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562894', 'insert_statements', NULL, 'string', NULL, '1562893') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274112', 'link_view_name', NULL, 'string', NULL, '1274111') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274113', 'hubtablekeyjoins', NULL, 'string', NULL, '1274111') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274114', 'hubcolnames', NULL, 'string', NULL, '1274111') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274115', 'hubcolnameswithoutalias', NULL, 'string', NULL, '1274111') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274116', 'bkcc', NULL, 'string', NULL, '1274111') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274117', 'link_col_name', NULL, 'string', NULL, '1274111') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274118', 'keycols', NULL, 'string', NULL, '1274111') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1274119', 'tablequerycol', NULL, 'string', NULL, '1274111') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561319', 'projection_3_source_name', 'source_name', '"string"', NULL, '1561318') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561320', 'projection_3_table_name', 'table_name', '"string"', NULL, '1561318') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561321', 'join_col_src', NULL, 'string', 'lower(trim(concat(projection_3_source_name,projection_3_table_name)))', '1561318') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1561322', 'con_colnames', NULL, 'string', 'TRIM(BOTH '', '' FROM array_join(array_except(split(projection_3_con_colnames_all, '', ''), split(projection_4_con_colnames, '', '')), '', ''))', '1561318') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562847', 'link_view_name', NULL, 'string', NULL, '1562846') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562848', 'vstgcolumnnames', NULL, 'string', NULL, '1562846') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562849', 'columnnames', NULL, 'string', NULL, '1562846') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562850', 'vstg_link_col_name', NULL, 'string', NULL, '1562846') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562851', 'link_col_name', NULL, 'string', NULL, '1562846') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562852', 'hub_table_keys', NULL, 'string', NULL, '1562846') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562853', 'vstg_hub_table_keys', NULL, 'string', NULL, '1562846') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562854', 'tablename', NULL, 'string', NULL, '1562846') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562855', 'datasourcename', NULL, 'string', NULL, '1562846') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562870', 'source_name', 'source_name', '"string"', NULL, '1562869') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562871', 'table_name', 'table_name', '"string"', NULL, '1562869') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562872', 'con_colnames', 'con_colnames', '"string"', NULL, '1562869') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562873', 'con_colnames_without_stg', 'con_colnames_without_stg', '"string"', NULL, '1562869') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1562874', 'coltablejoin', 'coltablejoin', '"string"', NULL, '1562869') using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561288', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1562886', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561338', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1562856', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1562808', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561299', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1274120', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1562867', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561398', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1562844', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561293', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561308', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1560723', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1562833', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561344', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1274130', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561347', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1560715', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1560732', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561283', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561328', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1562893', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1561318', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('cc5df8fa-45e5-4527-921d-160faded2118', '{"positions":[{"name":"sqltable_0","type":"SQLTable","xCord":"52px","yCord":"28px","isExpand":null},{"name":"sqltable_1","type":"SQLTable","xCord":"55px","yCord":"229px","isExpand":null},{"name":"projection_2","type":"Projection","xCord":"215px","yCord":"47px","isExpand":null},{"name":"join_3","type":"Join","xCord":"424px","yCord":"148px","isExpand":null},{"name":"projection_4","type":"Projection","xCord":"566px","yCord":"63px","isExpand":null},{"name":"projection_5","type":"Projection","xCord":"734px","yCord":"85px","isExpand":null}],"connections":[{"source":"sqltable_0","target":"projection_2","targetType":0},{"source":"projection_2","target":"join_3","targetType":0},{"source":"sqltable_1","target":"join_3","targetType":0},{"source":"join_3","target":"projection_4","targetType":0},{"source":"projection_4","target":"projection_5","targetType":0}]}', '992557') using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('987c4eb8-0e51-4a5e-8aca-5f5c49a12eed', '{"positions":[{"name":"projection_0","type":"Projection","xCord":"440px","yCord":"74px","isExpand":null},{"name":"projection_1","type":"Projection","xCord":"610px","yCord":"58px","isExpand":null},{"name":"v_data_vault_container_v_generate_links_stg","type":"DataSource","xCord":"32px","yCord":"9px","isExpand":true}],"connections":[{"source":"v_data_vault_container_v_generate_links_stg","target":"projection_0","targetType":0},{"source":"projection_0","target":"projection_1","targetType":0}]}', '989511') using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('442916ea-6ca0-4927-9c63-8239863302df', '{"positions":[{"name":"sqltable_0","type":"SQLTable","xCord":"146px","yCord":"63px","isExpand":null},{"name":"sqltable_1","type":"SQLTable","xCord":"156px","yCord":"227px","isExpand":null},{"name":"join_2","type":"Join","xCord":"324px","yCord":"164px","isExpand":null},{"name":"projection_3","type":"Projection","xCord":"481px","yCord":"182px","isExpand":null},{"name":"projection_4","type":"Projection","xCord":"584px","yCord":"103px","isExpand":null},{"name":"projection_5","type":"Projection","xCord":"745px","yCord":"100px","isExpand":null}],"connections":[{"source":"sqltable_0","target":"join_2","targetType":0},{"source":"sqltable_1","target":"join_2","targetType":0},{"source":"join_2","target":"projection_3","targetType":0},{"source":"projection_3","target":"projection_4","targetType":0},{"source":"projection_4","target":"projection_5","targetType":0}]}', '956054') using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('a478cfd8-0528-4a50-af5b-6712d70c8513', '{"positions":[{"name":"sqltable_0","type":"SQLTable","xCord":"50px","yCord":"19px","isExpand":null},{"name":"sqltable_1","type":"SQLTable","xCord":"56px","yCord":"166px","isExpand":null},{"name":"projection_3","type":"Projection","xCord":"183px","yCord":"26px","isExpand":null},{"name":"projection_4","type":"Projection","xCord":"193px","yCord":"167px","isExpand":null},{"name":"join_5","type":"Join","xCord":"341px","yCord":"96px","isExpand":null},{"name":"projection_6","type":"Projection","xCord":"470px","yCord":"72px","isExpand":null},{"name":"sqltable_2","type":"SQLTable","xCord":"276px","yCord":"345px","isExpand":null},{"name":"projection_8","type":"Projection","xCord":"396px","yCord":"339px","isExpand":null},{"name":"join_3","type":"Join","xCord":"647px","yCord":"204px","isExpand":null},{"name":"projection_9","type":"Projection","xCord":"853px","yCord":"187px","isExpand":null},{"name":"projection_10","type":"Projection","xCord":"999px","yCord":"92px","isExpand":null},{"name":"projection_11","type":"Projection","xCord":"1191px","yCord":"108px","isExpand":null}],"connections":[{"source":"sqltable_0","target":"projection_3","targetType":0},{"source":"sqltable_1","target":"projection_4","targetType":0},{"source":"projection_3","target":"join_5","targetType":0},{"source":"projection_4","target":"join_5","targetType":0},{"source":"join_5","target":"projection_6","targetType":0},{"source":"sqltable_2","target":"projection_8","targetType":0},{"source":"projection_6","target":"join_3","targetType":0},{"source":"projection_8","target":"join_3","targetType":0},{"source":"join_3","target":"projection_9","targetType":0},{"source":"projection_9","target":"projection_10","targetType":0},{"source":"projection_10","target":"projection_11","targetType":0}]}', '956080') using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('ac570eb3-6211-4971-8259-384b08edea5a', '{"positions":[{"name":"sqltable_0","type":"SQLTable","xCord":"131px","yCord":"41px","isExpand":null},{"name":"sqltable_1","type":"SQLTable","xCord":"137px","yCord":"184px","isExpand":null},{"name":"join_2","type":"Join","xCord":"298px","yCord":"122px","isExpand":null},{"name":"projection_0","type":"Projection","xCord":"431px","yCord":"153px","isExpand":null},{"name":"projection_1","type":"Projection","xCord":"588px","yCord":"134px","isExpand":null}],"connections":[{"source":"sqltable_0","target":"join_2","targetType":0},{"source":"sqltable_1","target":"join_2","targetType":0},{"source":"join_2","target":"projection_0","targetType":0},{"source":"projection_0","target":"projection_1","targetType":0}]}', '992994') using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('0cd173ef-e7e5-47ec-a806-fff2c67f0f11', '{"positions":[{"name":"projection_1","type":"Projection","xCord":"554px","yCord":"114px","isExpand":null},{"name":"projection_2","type":"Projection","xCord":"689px","yCord":"48px","isExpand":null},{"name":"v_data_vault_container_v_generate_links_inserts","type":"DataSource","xCord":"2px","yCord":"23px","isExpand":true}],"connections":[{"source":"v_data_vault_container_v_generate_links_inserts","target":"projection_1","targetType":0},{"source":"projection_1","target":"projection_2","targetType":0}]}', '994452') using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('f1e93148-8729-4457-afdd-9018f2182752', '{"positions":[{"name":"projection_0","type":"Projection","xCord":"569px","yCord":"70px","isExpand":null},{"name":"projection_1","type":"Projection","xCord":"725px","yCord":"62px","isExpand":null},{"name":"projection_2","type":"Projection","xCord":"855px","yCord":"72px","isExpand":null},{"name":"v_data_vault_container_v_generate_links","type":"DataSource","xCord":"69px","yCord":"37px","isExpand":true}],"connections":[{"source":"v_data_vault_container_v_generate_links","target":"projection_0","targetType":0},{"source":"projection_0","target":"projection_1","targetType":0},{"source":"projection_1","target":"projection_2","targetType":0}]}', '989380') using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('07c05c90-1f3a-42f0-a4dc-197e07ee92ee', '{"positions":[{"name":"sqltable_0","type":"SQLTable","xCord":"177px","yCord":"34px","isExpand":null},{"name":"projection_0","type":"Projection","xCord":"438px","yCord":"37px","isExpand":null}],"connections":[{"source":"sqltable_0","target":"projection_0","targetType":0}]}', '957855') using metastore;