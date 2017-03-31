*Famix-File
addToFile: entity
	^ self allFiles do: [ :each | each addToFile: entity ]