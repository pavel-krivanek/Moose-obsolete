tests
testSystemAndPublicIDs
	| writer |

	(writer := XMLWriter new)
		doctype
			root: 'test';
			publicID: 'public"ID';
			systemID: 'system"ID'''. "contains double and single quote"

	"IDs are single quoted because they contain a double quote"
	self assert: writer contents = '<!DOCTYPE test PUBLIC ''public"ID'' ''system"ID''>'