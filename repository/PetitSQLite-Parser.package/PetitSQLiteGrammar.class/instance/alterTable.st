tokens
alterTable
	"http://www.sqlite.org/lang_altertable.html"
	"modified to add the oracle defintion of contraints on PK and FK"
	^alter , table , 
		complexIdentifier , 
		( (renameTo , identifier) / (add , ( alterTableConstraintPKOracle / alterTableConstraintFKOracle / alterTableConstraintUnique / ( column optional, columnDef trim) trim))).
	
