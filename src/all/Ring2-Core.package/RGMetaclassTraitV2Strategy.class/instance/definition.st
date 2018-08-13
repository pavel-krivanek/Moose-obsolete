private - backend access
definition
	^String streamContents: [:stream |
		stream
			nextPutAll: self baseTrait name;
			nextPutAll: ' clasTrait';
			crtab;
			nextPutAll: 'uses: ';
			nextPutAll: self owner traitCompositionString.
		(self owner slots size > 0) ifTrue: [ 
			(self owner usesSpecialSlot or: [ Slot showSlotClassDefinition ])
				ifFalse: [  
							stream
								crtab;
								nextPutAll: 'instanceVariableNames: ';
								store: self owner instanceVariablesString]
				ifTrue: [ 
							stream
								crtab;
								nextPutAll: 'slots: ';
								nextPutAll: self owner slotDefinitionString]]]