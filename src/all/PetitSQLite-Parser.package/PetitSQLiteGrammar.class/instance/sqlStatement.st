statements
sqlStatement
	"http://www.sqlite.org/syntaxdiagrams.html#sql-stmt"
	^(explain optional , queryPlan optional , (
	createTable /
	createDatabase /
	createIndex /
	alterTable /
	selectStatement /
	updateStatement /
	deleteStatement /
	insertStatement /
	createView /
	comment /
	label
	))