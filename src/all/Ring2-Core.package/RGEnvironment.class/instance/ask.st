accessing
ask 

	^ queryInterface ifNil: [ queryInterface := RGEnvironmentQueryInterface for: self ].