meta
compileDelegatorFor: aMethod
	(self class selectors includes: aMethod selector)
		ifTrue: [ ^ self ].
	self class
		compile:
			('{1}
	^ self current {1}' format: {aMethod sourceCode lines first})
		classified: 'markers'