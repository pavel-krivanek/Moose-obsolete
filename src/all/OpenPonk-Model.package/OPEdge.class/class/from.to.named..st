instance creation
from: aSourceObject to: aTargetObject named: aString
	^ self new
		from: aSourceObject to: aTargetObject;
		name: aString;
		yourself