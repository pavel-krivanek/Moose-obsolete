Class {
	#name : #FAMIXJavaSourceLanguageTest,
	#superclass : #TestCase,
	#category : #'Famix-Tests-Java'
}

{ #category : #tests }
FAMIXJavaSourceLanguageTest >> testIsJava [
	| model |
	MooseModel resetMeta.
	model := MooseModel new.
	
	model importFromMSEStream: '(
		(FAMIX.JavaSourceLanguage)
		(FAMIX.Class (id: 2) (name ''ClassWithoutSourceA''))
		(FAMIX.Class (id: 3) (name ''ClassWithoutSourceB''))
	)' readStream.
	self assert: model sourceLanguage isJava
]

{ #category : #tests }
FAMIXJavaSourceLanguageTest >> testIsUnknown [
	self assert: FmxNGJAVASourceLanguage new isUnknown not
]

{ #category : #tests }
FAMIXJavaSourceLanguageTest >> testName [
	self assert: FmxNGJAVASourceLanguage new name equals: 'Java'
]
