*OpenPonk-ClassEditor
notationString
	^ String
		streamContents: [ :stream | 
			(OPUMLVisibilityKind notationFor: self visibility)
				ifNotEmpty: [ :v | 
					stream
						nextPutAll: v;
						nextPutAll: ' ' ].
			self isDerived
				ifTrue: [ stream << '/' ].
			self name ifNotNil: [ stream << self name ].
			self type
				ifNotNil: [ stream
						<< ' : ';
						<< self type name ].
			self notationMultiplicityRange
				ifNotEmpty: [ :range | stream nextPutAll: '[' , range , ']' ].
			(self defaultValue isKindOf: OPUMLOpaqueExpression)
				ifTrue: [ stream
						<< ' = ';
						<< self defaultValue bodies first ].
			true
				ifTrue: [ | props |
					props := OrderedCollection new.
					self isReadOnly
						ifTrue: [ props add: #readOnly ].
					self isOrdered
						ifTrue: [ props add: #ordered ].
					self isMultivalued & self isUnique not
						ifTrue: [ props add: #nonunique ].
					props
						ifNotEmpty: [ stream << ' {'.
							props do: [ :each | stream << each ] separatedBy: [ stream << ', ' ].
							stream << '}' ] ] ]