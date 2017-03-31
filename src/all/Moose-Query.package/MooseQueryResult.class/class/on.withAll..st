instance creation
on: aSourceObject withAll: aCollection

	^ self new
		receiver: aSourceObject;
		addAll: aCollection;
		yourself