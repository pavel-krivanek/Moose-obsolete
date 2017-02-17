*Moose-Finder
openInGlamorousEditor
	<menuItem: 'In Glamour Editor' category: 'Browse'> 

	| symbol className prefixesToIgnore |
	prefixesToIgnore := #( 'FAMIX' 'MSE' 'Moose').
	className := self class name asString.
	prefixesToIgnore do: [:each |
		(className beginsWith: each) ifTrue: [
			className := className copyFrom: each size + 1 to: className size] ].
	symbol := className at: 1 put: className first asLowercase; yourself.
	^ (GLMEditor openOn: { symbol asSymbol -> self }) maximize