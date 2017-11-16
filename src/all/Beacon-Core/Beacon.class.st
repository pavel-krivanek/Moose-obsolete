"
This is the central and the dummiest class of the Beacon logging system.

It's a singleton class that holds an announcer instance. Its goal is purely to serve as a central beacon through which all signals pass.

It works together with ==Announcement>>#emit==.

By itself, it does not do anything useful. Other ==SignalLoggers== are meant to register to its announcer and link the announcements to something useful.
"
Class {
	#name : #Beacon,
	#superclass : #Object,
	#instVars : [
		'announcer'
	],
	#classVars : [
		'instance'
	],
	#category : 'Beacon-Core-Beacon'
}

{ #category : #logging }
Beacon class >> announce: anAnnouncement [
	self instance announce: anAnnouncement
	
]

{ #category : #accessing }
Beacon class >> instance [
	^ instance ifNil: [ instance := self new ]
]

{ #category : #accessing }
Beacon class >> loggers [
	^ self instance loggers 
]

{ #category : #accessing }
Beacon class >> loggersOf: aClass [
	^ self instance loggersOf: aClass
]

{ #category : #accessing }
Beacon class >> resetInstance [
	instance ifNotNil: [ 
		instance announcer subscriptions reset ].
	instance := nil
]

{ #category : #private }
Beacon >> announce: anAnnouncement [
	self announcer announce: anAnnouncement
]

{ #category : #accessing }
Beacon >> announcer [
	^ announcer
]

{ #category : #accessing }
Beacon >> announcer: anObject [
	announcer := anObject
]

{ #category : #initialize }
Beacon >> initialize [
	announcer := Announcer new
]

{ #category : #accessing }
Beacon >> loggers [
	^ self loggersOf: SignalLogger
]

{ #category : #accessing }
Beacon >> loggersOf: aClass [
	"announcments SubscriptionRegistry does not allow access to its subscriptions which
	Beacon needs. So there is a hack to access the instVar directly until access to 
	subscriptions has been solved"
	self flag: #hack.
	^ ((announcer subscriptions instVarNamed: #subscriptions) collect: #subscriber as: Set)
			select: [ :each | each isKindOf: aClass ]
]

{ #category : #announcing }
Beacon >> unsubscribe: aBoundedBeacon [
	self announcer unsubscribe: aBoundedBeacon
]

{ #category : #announcing }
Beacon >> when: anAnnouncementClass send: aSelector to: anObject [
	self announcer when: anAnnouncementClass send: aSelector to: anObject
]
