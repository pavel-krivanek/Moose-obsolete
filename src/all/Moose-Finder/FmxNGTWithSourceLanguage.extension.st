Extension { #name : #FmxNGTWithSourceLanguage }

{ #category : #'*Moose-Finder' }
FmxNGTWithSourceLanguage >> formattedSourceText [
	^ self sourceLanguage format: self sourceText from: self
]

{ #category : #'*Moose-Finder' }
FmxNGTWithSourceLanguage >> sourceLanguageOr: unknownSourceLanguageClass [
	^ self declaredSourceLanguage ifNil: [
		self mooseModel 
			ifNil: [ unknownSourceLanguageClass new ] 
			ifNotNil: [ self mooseModel sourceLanguage ] ]
]
