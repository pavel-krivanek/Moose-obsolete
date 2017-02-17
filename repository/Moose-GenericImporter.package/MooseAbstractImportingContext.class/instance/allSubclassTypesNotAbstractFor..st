private
allSubclassTypesNotAbstractFor: aFM3Property
	| implementingClass result |
	result := OrderedCollection new.
	(self hasSubclasses: aFM3Property type) ifTrue:
			[ implementingClass := aFM3Property type implementingClass.
			implementingClass allSubclasses do:
					[ :each | 
					each = FAMIXPrimitiveType ifFalse:
							[ (self hasSubclasses: each asMooseDescription) ifFalse:
									[ (meta includes: each asMooseDescription) ifTrue: [ result add: each asMooseDescription name ] ] ] ] ]
		ifFalse: [ (meta includes: aFM3Property type) ifTrue: [ result add: aFM3Property type name ] ].
	^ result