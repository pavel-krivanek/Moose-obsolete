accessing
cleanedValuesOfColumn: indexAsNumberOfString
	"Return the values stored in the column. No nil values may be returned (this happens if a column is has less elements than other columns"
	^ (self valuesOfColumn: indexAsNumberOfString) select: [ :ss | ss notNil and: [ ss ~= 'nil' and: [ ss notEmpty ] ] ]