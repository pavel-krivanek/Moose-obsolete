*OpenPonk-ClassEditor
notationAssociationMultiplicityRange
	^ String
		streamContents: [ :stream | 
			(self lower = self upper or: [ self lower = 0 & (self upper = '*') ])
				ifFalse: [ stream
						<< self lower asString;
						<< '..' ].
			stream << self upper asString ]