accessing
outgoingAssociationTypes
	^ self outgoingMSEProperties collect: [ :d | d type implementingClass ]