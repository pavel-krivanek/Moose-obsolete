*Moose-SmalltalkImporter
regularClasses

	^ self definedClasses reject: [:each | each isTrait]