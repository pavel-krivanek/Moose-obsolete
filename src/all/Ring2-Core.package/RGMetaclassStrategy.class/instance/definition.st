private - backend access
definition
	"Refer to the comment in ClassDescription|definition."

	^ String streamContents: 
		[:strm |
		strm print: self.
		self owner hasTraitComposition ifTrue: [
			strm
				crtab;
				nextPutAll: 'uses: ';
				print: self traitComposition ].
		
		(self owner usesSpecialSlot or: [ Slot showSlotClassDefinition ])
			ifFalse: [  
						strm
							crtab;
							nextPutAll: 'instanceVariableNames: ';
							store: self owner instanceVariablesString]
			ifTrue: [ 
						strm
							crtab;
							nextPutAll: 'slots: ';
							nextPutAll: self owner slotDefinitionString]]