Extension { #name : #FamixMetamodelBuilder }

{ #category : #'*Famix-MetamodelBuilder-Tests' }
FamixMetamodelBuilder class >> forTesting [

	| aBuilder |
	aBuilder := self new.
	aBuilder
		environment: (FamixMetamodelBuilderRingEnvironment for: aBuilder);
		prefix: 'Tst';
		packageName: 'Tst';
		yourself.
	^ aBuilder.
]
