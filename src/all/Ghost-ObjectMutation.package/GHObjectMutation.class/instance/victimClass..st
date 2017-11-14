accessing
victimClass: aClass
	(self victimClass == nil) | (self victimClass == aClass) ifFalse: [ 
		^self error: 'Victim class should not be changed. It instances can be already infected'  ].
	
	classDelegator target: aClass.
	superclass := GHInstanceMessagesInterceptor for: aClass