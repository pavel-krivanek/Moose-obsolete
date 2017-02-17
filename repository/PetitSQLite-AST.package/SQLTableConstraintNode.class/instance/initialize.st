initialization
initialize
	name := nil.
	isPKConstraint := false.
	isFKConstraint := false.
	isUnique := false.
	isCheckConstraint := false.
	fkColumns := OrderedCollection new.
	pkColumns := OrderedCollection new.
	uniqueColumns := OrderedCollection new.
	fkReferencedTableName := nil.