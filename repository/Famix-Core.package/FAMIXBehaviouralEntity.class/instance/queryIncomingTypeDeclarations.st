moosechef-queries-incoming
queryIncomingTypeDeclarations
	"A method cannot have incoming type declarations. Return null pattern so that higher-level queries can run with methods, classes, packages..."

	^ self createIncomingQueryResultWith: Set new
