tests
testSelectStatementWithTRIM
	
	self 
		parse: 'select TRIM(P_NAME||'', ''||ORT||'', Tel: ''||coalesce(O_TELBUERO ,''-'')||'', Fax: ''||coalesce(O_FAX ,''-'')) str from SYS_VPERSONENROLLEN_DISPLAY where fall_id = 2000001003 and ROLLEID = 1080 and DELETED_X = 0'
		rule: #selectStatement.