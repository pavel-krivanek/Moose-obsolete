accessing
fullName
	<MSEProperty: #fullName type: #String>
	<derived>
	self name isNil ifTrue: [ ^nil ].
	self owner isNil ifTrue: [ ^self name asString ].
	self owner fullName isNil ifTrue: [ ^nil ].
 	^self owner fullName, '.', self name