accessing
collaborationRoles
	"Represents the participants in the Collaboration."
	^ collaborationRoles ifNil: [ collaborationRoles := OrderedCollection new ]