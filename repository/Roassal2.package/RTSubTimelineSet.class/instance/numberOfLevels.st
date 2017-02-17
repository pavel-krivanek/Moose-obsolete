accessing - computed
numberOfLevels
	^ self level rtValue: (self objects detectMax: [ :eachObject |
									self level rtValue: eachObject ]) 