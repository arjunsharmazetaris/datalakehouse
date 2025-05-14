INSERT INTO pipeline_container (id, name, case_sensitive_name, description, fk_organisation_id) VALUES ('1576355', 'catalog', 'CATALOG', NULL, '50702') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('1576356', 'all_src', 'all_src', NULL, '1576355') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1576385', 'sqltable_1', 'sqltable_1', NULL, '1576356', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1576392', 'projection_0', 'projection_0', NULL, '1576356', 'PROJECTION', 'sqltable_1') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1576385', NULL, 'SELECT dm.name AS data_mart_name,
       dmt.name AS table_name,
       dmt.source_table AS source_table,
       dmts.real_column_name AS column_name,
       dmts.virtual_name AS virtual_column_name,
       drs.data_type as type
FROM metastore.data_mart dm
INNER JOIN metastore.data_mart_table dmt
    ON dmt.fk_data_mart_id = dm.id
LEFT JOIN metastore.data_mart_table_schema dmts
    ON dmts.fk_data_mart_table_id = dmt.id
INNER JOIN  metastore.datasource_relation_schema drs
    ON LOWER(drs.column_name)=dmts.real_column_name
ORDER BY dm.name, dmt.name, dmts.real_column_name') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576391', 'METASTORE.datasource_relation_schema.data_type', 'type', '"string"', NULL, '1576385') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576390', 'METASTORE.data_mart_table_schema.virtual_name', 'virtual_column_name', '"string"', NULL, '1576385') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576389', 'METASTORE.data_mart_table_schema.real_column_name', 'column_name', '"string"', NULL, '1576385') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576388', 'METASTORE.data_mart_table.source_table', 'source_table', '"string"', NULL, '1576385') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576387', 'METASTORE.data_mart_table.name', 'table_name', '"string"', NULL, '1576385') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576386', 'METASTORE.data_mart.name', 'data_mart_name', '"string"', NULL, '1576385') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576398', 'type', 'column_type', '"string"', NULL, '1576392') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576397', 'virtual_column_name', NULL, '"string"', NULL, '1576392') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576396', 'column_name', NULL, '"string"', NULL, '1576392') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576395', 'source_table', NULL, '"string"', NULL, '1576392') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576394', 'table_name', 'table', '"string"', NULL, '1576392') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1576393', 'data_mart_name', NULL, '"string"', NULL, '1576392') using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1576392', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('0fe2f43d-2907-482a-87d0-f141b2195441', '{"positions":[{"name":"projection_0","type":"Projection","xCord":"369px","yCord":"181px","isExpand":null},{"name":"sqltable_1","type":"SQLTable","xCord":"115px","yCord":"158px","isExpand":null}],"connections":[{"source":"sqltable_1","target":"projection_0","targetType":0}]}', '1576356') using metastore;