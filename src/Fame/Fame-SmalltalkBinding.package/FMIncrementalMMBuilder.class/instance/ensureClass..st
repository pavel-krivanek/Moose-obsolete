private
ensureClass: aClass

	"Maybe this is a bit overkill,
	but we get a well-typed polymorphic behavior always returning a symbol for a class"
	"Object asString asSymbol -> #Object"
	"'Object' asString asSymbol -> #Object"
	"#Object asString asSymbol -> #Object"

	^ self currentEnv at: aClass asString asSymbol ifAbsentPut: [ OrderedCollection new ]