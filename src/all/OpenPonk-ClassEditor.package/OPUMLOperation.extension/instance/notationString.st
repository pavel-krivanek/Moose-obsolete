*OpenPonk-ClassEditor
notationString
	^ String
		streamContents: [ :stream | 
			(OPUMLVisibilityKind notationFor: self visibility)
				ifNotEmpty: [ :v | 
					stream
						nextPutAll: v;
						nextPutAll: ' ' ].
			self name ifNotNil: [ stream << self name ].
			stream << '('.
			(self ownedParameters
				reject: [ :param | param direction = OPUMLParameterDirectionKind return ])
				do: [ :param | stream << param notationString ]
				separatedBy: [ stream << ', ' ].
			stream << ')'.
			self ownedParameters
				detect: [ :param | param direction = OPUMLParameterDirectionKind return ]
				ifFound: [ :param | 
					param type
						ifNotNil: [ stream
								<< ' : ';
								<< param type name.
							param notationMultiplicityRange
								ifNotEmpty: [ :range | stream nextPutAll: '[' , range , ']' ] ] ] ]