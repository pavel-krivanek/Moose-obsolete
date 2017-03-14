*Famix-Extensions
unknownFAMIXClass
	^ self allClasses 
		detect: [:each | each mooseName = #'unknownNamespace::UnknownClass'] 
		ifNone: [
			self add: (
				FAMIXClass new 
					name: 'UnknownClass'; 
					container: self unknownFAMIXNamespace; 
					isStub: true; 
					yourself)
		]