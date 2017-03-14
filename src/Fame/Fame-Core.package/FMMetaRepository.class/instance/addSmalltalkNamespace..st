adding
addSmalltalkNamespace: pattern 
	| classes |
	classes := Object withAllSubclasses select: 
		[ :each | 
		(each isKindOf: Metaclass) not and: 
			[ each name size > pattern size and: 
				[ (each name at: pattern size + 1) isUppercase and: [ (each name 
					copyFrom: 1
					to: pattern size) = pattern ] ] ] ].
	self addSmalltalkClasses: classes