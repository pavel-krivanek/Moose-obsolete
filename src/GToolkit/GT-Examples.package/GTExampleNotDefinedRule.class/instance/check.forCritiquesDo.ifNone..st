private
check: aClass forCritiquesDo: aCriticBlock ifNone: alternativeBlock 
	Smalltalk at: #ReMissingMethodCritic ifPresent: [ :class |
		(self basicCheck: aClass)
			ifTrue:  [ aCriticBlock cull: (class
							for: aClass
							by: self
							class: aClass class
							selector: #gtExample) beShouldBeImplemented ]
			ifFalse: alternativeBlock ]