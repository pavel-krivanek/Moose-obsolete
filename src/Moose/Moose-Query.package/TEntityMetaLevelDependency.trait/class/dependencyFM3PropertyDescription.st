accessing
dependencyFM3PropertyDescription
	^self allDeclaredProperties select: [ :e | e type implementingClass isNotNil and: [ e type implementingClass inheritsFrom: FAMIXAssociation ] ]