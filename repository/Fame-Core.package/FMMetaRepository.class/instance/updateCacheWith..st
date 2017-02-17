private
updateCacheWith: element

	(element respondsTo: #fullName) ifTrue: [
		element fullName notNil ifTrue: [
			nameDict at: element fullName put: element ]].
	(element isKindOf: FM3MetaDescription) ifTrue: [ 
		element implementingClass isNil not ifTrue: [
			classDict at: element implementingClass put: element
		].
		^self
	].
	(element isKindOf: FM3Element) ifTrue: [ ^self ].
	self  error: 'Element does not conform to FM3.'.