Extension { #name : #TraitedMetaclass }

{ #category : #'*Moose-PharoOverrides' }
TraitedMetaclass >> removeSelector: selector [

	"Moose override: issue not opened"

	"When a selector is removed it should be notified to my users.
	Check the class TraitChange for more details"

	| priorMethod priorProtocol origin oldMethod | 
	priorMethod := self compiledMethodAt: selector ifAbsent: [^ nil].
	origin := priorMethod origin.
	priorProtocol := self whichCategoryIncludesSelector: selector.
	self organization removeElement: selector.

	oldMethod := self methodDict at: selector ifAbsent: [^ self].
	self methodDict removeKey: selector.
	
	self localMethodDict removeKey: selector ifAbsent: [  ].
	super removeSelector: selector.
	TraitChange removeSelector: selector on: self.
	
	SystemAnnouncer uniqueInstance methodRemoved: priorMethod protocol: priorProtocol origin: origin
]
