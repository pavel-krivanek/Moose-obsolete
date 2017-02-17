tests
testCreateIndexWithAscDescColumns

	self 
		parse:	'CREATE
        INDEX DB2BLA.XGEO2
       ON DB2BLA.TG
        (
         C40 ASC
        ,C971 ASC
        ,C932 DESC
        ,C97 ASC
        )'
		rule: #createIndex.