moosechef-scoping-filtering
moosechefEqualsTo: anEntity moduloScope: aScope
	"checks whether receiver is equal to anEntity at the given scope.
	  For example, a class could be equal to a method at the packageScope, i.e. they belong to the same package.
	  When changing scopes, we might get collections and then we check whether it includes the receiver"

	| entityRescoped myselfRescoped |

	aScope isNil ifTrue: [^ self == anEntity].
	myselfRescoped := (self perform: aScope).
	myselfRescoped isCollection
		ifTrue: [^ myselfRescoped anySatisfy: [:myElt | myElt moosechefEqualsTo: anEntity moduloScope: aScope ]]
		ifFalse: [
			entityRescoped := (anEntity perform: aScope).
			entityRescoped isCollection
				ifTrue: [^ entityRescoped includes: myselfRescoped]
				ifFalse: [^ entityRescoped == myselfRescoped]
		]
