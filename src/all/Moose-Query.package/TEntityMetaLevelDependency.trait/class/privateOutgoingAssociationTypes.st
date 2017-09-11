accessing
privateOutgoingAssociationTypes
	^ self outgoingMSEProperties collect: [ :d | d type implementingClass ]