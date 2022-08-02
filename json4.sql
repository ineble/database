USE sqldb;
SET @JSON = '{ "usertbl" :
[
{"name":"강호동", "height":182},
{"name":"이휘재", "height":180},
{"name":"남희석", "height":180},
{"name":"박수홍", "height":183}
]
}';
SELECT JSON_insert(@JSON, '$.usertbl[0].mDate', '2018-09-09') AS JSON_insert;
SELECT JSON_replace(@JSON, '$.usertbl[0].name', '토마스') AS JSON_REPLACE;
SELECT JSON_remove(@JSON, '$.usertbl[0]') AS ;