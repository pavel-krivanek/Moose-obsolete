tests
testCreateViewAsSelectStar

	self 
		parse:	'CREATE VIEW
       DBEW.VG1
AS SELECT * FROM DBT.TGO'
		rule: #createView.