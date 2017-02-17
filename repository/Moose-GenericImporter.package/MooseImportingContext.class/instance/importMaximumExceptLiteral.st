importing-filters
importMaximumExceptLiteral
	" self new importMaximumExceptLiteral "
	
	| set |
	set := self maximum.
	set remove: self class importingLiteral.
	self entityKindsToBeExtracted: set