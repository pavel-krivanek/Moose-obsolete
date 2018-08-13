tests
testClassWithUnknownSlots

	| importer class | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'Object subclass: #SlotExampleMovie
	slots: { #name. #year. #director => ToOneRelationSlot. 
				#actors => ToManyRelationSlot }
	classVariables: {  }
	category: ''Slot-Tests-Associations''!' readStream.

	class := importer environment ask behaviorNamed: #SlotExampleMovie.
	self assert: class notNil.
	self assert: class instVarNames asArray equals: #(#name #year #director #actors).
	self assert: class classVarNames isEmpty.
	self assert: class category equals: 'Slot-Tests-Associations'.
	self assert: ((class slots last: 2) allSatisfy: [ :each | each isKindOf: RGUnknownSlot  ]).
