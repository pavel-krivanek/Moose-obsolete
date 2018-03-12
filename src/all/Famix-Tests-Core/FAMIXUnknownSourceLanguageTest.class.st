Class {
	#name : #FAMIXUnknownSourceLanguageTest,
	#superclass : #FAMIXEntityTest,
	#category : #'Famix-Tests-Core'
}

{ #category : #tests }
FAMIXUnknownSourceLanguageTest >> actualClass [
	^ FmxNGUNKNOWNSourceLanguage 
]

{ #category : #tests }
FAMIXUnknownSourceLanguageTest >> testIsUnknown [
	self assert: self actualClass new isUnknown
]
