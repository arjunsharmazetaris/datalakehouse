INSERT INTO pipeline_container (id, name, case_sensitive_name, description, fk_organisation_id) VALUES ('1526996', 'uno', 'UNO', NULL, '50702') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('1527098', 'provider', 'provider', NULL, '1526996') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('1527087', 'searchparams', 'searchparams', NULL, '1526996') using metastore;
INSERT INTO pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('1526997', 'response', 'response', NULL, '1526996') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1527099', 'sqltable_0', 'sqltable_0', NULL, '1527098', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1527106', 'projection_1', 'projection_1', NULL, '1527098', 'PROJECTION', 'sqltable_0') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1530776', 'sqltable_0', 'sqltable_0', NULL, '1526997', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1530781', 'projection_2', 'projection_2', NULL, '1526997', 'PROJECTION', 'sqltable_0') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1530786', 'sqltable_1', 'sqltable_1', NULL, '1526997', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1530792', 'projection_3', 'projection_3', NULL, '1526997', 'PROJECTION', 'sqltable_1') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1530798', 'join_4', 'join_4', NULL, '1526997', 'JOIN', 'projection_2,projection_3') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1530804', 'projection_0', 'projection_0', NULL, '1526997', 'PROJECTION', 'join_4') using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1527189', 'sqltable_0', 'sqltable_0', NULL, '1527087', 'SQLTable', NULL) using metastore;
INSERT INTO pipeline_node (id, name, case_sensitive_name, description, fk_pipeline_relation_id, pipeline_type, sources) VALUES ('1527194', 'projection_1', 'projection_1', NULL, '1527087', 'PROJECTION', 'sqltable_0') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1527099', NULL, 'select desc , b.* from (
select a.desc,  explode(a.attributes) as  b  from (
SELECT explode(providers) as a FROM Service_Calculator.metadata)
) where b.valType =''Text''') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1530786', NULL, 'select providerid as lender_id , name as lender_product, b.id,  b.value as int_rate , b.id as rate_type from (
select a.id , a.name , explode(a.properties) as  b , a.providerId, a.removed  from (
SELECT explode(products) as a FROM Service_Calculator.Unoresponse)
)
where b.id like  ''FIXRATE''
UNION ALL
select providerid as lender_id , name as lender_product, b.id,  b.value as int_rate  , b.id as rate_type from (
select a.id , a.name , explode(a.properties) as  b , a.providerId, a.removed  from (
SELECT explode(products) as a FROM Service_Calculator.Unoresponse)
)
where b.id like  ''VARATE''') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1530776', NULL, 'select providerid as lender_id , name as lender_product, b.id,  b.value as max_capacity  from (
select a.id , a.name , explode(a.properties) as  b , a.providerId, a.removed  from (
SELECT explode(products) as a FROM Service_Calculator.Unoresponse)
)
where b.id like  ''ESTMAXLOAN''') using metastore;
INSERT INTO pipeline_sqltable (id, source_tables, sql_query) VALUES ('1527189', NULL, 'select id as id1, name , b.* from (
select a.id, a.name,  explode(a.options) as  b  from (
SELECT explode(searchParams) as a FROM Service_Calculator.metadata)
)') using metastore;
INSERT INTO pipeline_join (id, join_tables, join_predicate, filter_expression, order_by) VALUES ('1530798', 'projection_2,projection_3', '(projection_2.lender_id(+) = projection_3.lender_id)', NULL, NULL) using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527107', 'desc', NULL, '"string"', NULL, '1527106') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527108', 'id', NULL, '"string"', NULL, '1527106') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527109', 'multiOption', NULL, '"boolean"', NULL, '1527106') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527110', 'name', NULL, '"string"', NULL, '1527106') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527111', 'valType', NULL, '"string"', NULL, '1527106') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527112', 'value', NULL, '"string"', NULL, '1527106') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527100', 'desc', 'desc', '"string"', NULL, '1527099') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527101', 'id', 'id', '"string"', NULL, '1527099') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527102', 'multiOption', 'multiOption', '"boolean"', NULL, '1527099') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527103', 'name', 'name', '"string"', NULL, '1527099') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527104', 'valType', 'valType', '"string"', NULL, '1527099') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527105', 'value', 'value', '"string"', NULL, '1527099') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530793', 'lender_id', NULL, '"string"', NULL, '1530792') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530794', 'lender_product', NULL, '"string"', NULL, '1530792') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530795', 'id', NULL, '"string"', NULL, '1530792') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530796', 'int_rate', NULL, '"string"', NULL, '1530792') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530797', 'rate_type', NULL, '"string"', NULL, '1530792') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530777', 'lender_id', 'lender_id', '"string"', NULL, '1530776') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530778', 'lender_product', 'lender_product', '"string"', NULL, '1530776') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530779', 'id', 'id', '"string"', NULL, '1530776') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530780', 'max_capacity', 'max_capacity', '"string"', NULL, '1530776') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530799', 'projection_2.lender_id', 'projection_2_lender_id', '"string"', NULL, '1530798') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530800', 'projection_2.lender_product', 'projection_2_lender_product', '"string"', NULL, '1530798') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530801', 'projection_2.max_capacity', 'projection_2_max_capacity', '"string"', NULL, '1530798') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530802', 'projection_3.int_rate', 'projection_3_int_rate', '"string"', NULL, '1530798') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530803', 'projection_3.rate_type', 'projection_3_rate_type', '"string"', NULL, '1530798') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530787', 'lender_id', 'lender_id', '"string"', NULL, '1530786') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530788', 'lender_product', 'lender_product', '"string"', NULL, '1530786') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530789', 'id', 'id', '"string"', NULL, '1530786') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530790', 'int_rate', 'int_rate', '"string"', NULL, '1530786') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530791', 'rate_type', 'rate_type', '"string"', NULL, '1530786') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530805', 'projection_2_lender_id', 'lender', '"string"', NULL, '1530804') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530806', 'projection_2_lender_product', 'product', '"string"', NULL, '1530804') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530807', 'projection_2_max_capacity', 'max_borrowing_capacity', '"string"', NULL, '1530804') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530808', 'projection_3_int_rate', 'interest_rate', '"string"', NULL, '1530804') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530809', 'projection_3_rate_type', NULL, '"string"', NULL, '1530804') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530782', 'lender_id', NULL, '"string"', NULL, '1530781') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530783', 'lender_product', NULL, '"string"', NULL, '1530781') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530784', 'id', NULL, '"string"', NULL, '1530781') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1530785', 'max_capacity', NULL, '"string"', NULL, '1530781') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527190', 'id1', 'id1', '"string"', NULL, '1527189') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527191', 'name', 'name', '"string"', NULL, '1527189') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527192', 'id', 'id', '"string"', NULL, '1527189') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527193', 'name', 'name', '"string"', NULL, '1527189') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527195', 'id1', NULL, '"string"', NULL, '1527194') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527196', 'name', NULL, '"string"', NULL, '1527194') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527197', 'id', NULL, '"string"', NULL, '1527194') using metastore;
INSERT INTO pipeline_node_schema (id, column_name, column_alias, data_type, sql_expression, fk_pipeline_node_id) VALUES ('1527198', 'name', NULL, '"string"', NULL, '1527194') using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1530781', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1530804', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1527106', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1527194', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_projection (id, filter_expression, windows_spec, order_by) VALUES ('1530792', NULL, NULL, NULL) using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('5bc74057-06d5-46ce-b3cf-2f52c7780c5c', '{"positions":[{"name":"sqltable_0","type":"SQLTable","xCord":"275px","yCord":"126px","isExpand":null},{"name":"projection_1","type":"Projection","xCord":"470px","yCord":"132px","isExpand":null}],"connections":[{"source":"sqltable_0","target":"projection_1","targetType":0}]}', '1527098') using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('ed632309-5a88-4912-b8a1-f4d0713f7fc9', '{"positions":[{"name":"sqltable_0","type":"SQLTable","xCord":"167px","yCord":"22px","isExpand":null},{"name":"projection_2","type":"Projection","xCord":"377px","yCord":"21px","isExpand":null},{"name":"sqltable_1","type":"SQLTable","xCord":"150px","yCord":"200px","isExpand":null},{"name":"projection_3","type":"Projection","xCord":"382px","yCord":"200px","isExpand":null},{"name":"join_4","type":"Join","xCord":"638px","yCord":"126px","isExpand":null},{"name":"projection_0","type":"Projection","xCord":"846px","yCord":"77px","isExpand":null}],"connections":[{"source":"sqltable_0","target":"projection_2","targetType":0},{"source":"sqltable_1","target":"projection_3","targetType":0},{"source":"projection_2","target":"join_4","targetType":0},{"source":"projection_3","target":"join_4","targetType":0},{"source":"join_4","target":"projection_0","targetType":0}]}', '1526997') using metastore;
INSERT INTO pipeline_coordinates (id, coordinates, fk_pipeline_relation_id) VALUES ('84d88c5f-e10b-4bc8-9912-daa0606f51e2', '{"positions":[{"name":"sqltable_0","type":"SQLTable","xCord":"252px","yCord":"130px","isExpand":null},{"name":"projection_1","type":"Projection","xCord":"468px","yCord":"125px","isExpand":null}],"connections":[{"source":"sqltable_0","target":"projection_1","targetType":0}]}', '1527087') using metastore;