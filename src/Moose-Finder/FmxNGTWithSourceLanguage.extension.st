Extension { #name : #FmxNGTWithSourceLanguage }

{ #category : #'*Moose-Finder' }
FmxNGTWithSourceLanguage >> formattedSourceText [
	^ self sourceLanguage 
		ifNotNil: [ :language | language format: self sourceText from: self ]
		ifNil: [ self sourceText ]
]

{ #category : #'*Moose-Finder' }
FmxNGTWithSourceLanguage >> sourceLanguageOr: unknownSourceLanguageClass [
	^ self declaredSourceLanguage ifNil: [
		self mooseModel 
			ifNil: [ unknownSourceLanguageClass new ] 
			ifNotNil: [ self mooseModel sourceLanguage ] ]
]
