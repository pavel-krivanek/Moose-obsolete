statements-elements
qualifiedTableName
	^(identifier , $. asPParser) optional , identifier , ((indexed , by , identifier) / notIndexed) optional 