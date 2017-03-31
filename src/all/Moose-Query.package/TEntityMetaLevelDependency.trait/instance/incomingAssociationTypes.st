accessing
incomingAssociationTypes
	^ self incomingMSEProperties collect: [ :d | d type implementingClass ]