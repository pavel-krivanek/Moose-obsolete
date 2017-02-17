*Famix-Extensions
unknownFAMIXNamespace
	^ self allNamespaces 
		detect: [:each | each mooseName = #'unknownNamespace'] 
		ifNone: [
			self add: (
				FAMIXNamespace new 
					name: 'unknownNamespace';
					isStub: true; 
					yourself)
		]