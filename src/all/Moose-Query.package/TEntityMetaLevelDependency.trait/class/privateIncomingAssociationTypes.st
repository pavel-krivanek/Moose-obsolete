accessing
privateIncomingAssociationTypes
	^ self incomingMSEProperties collect: [ :d | d type implementingClass ]