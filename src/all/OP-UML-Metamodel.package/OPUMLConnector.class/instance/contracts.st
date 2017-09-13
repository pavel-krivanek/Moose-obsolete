accessing
contracts
	"The set of Behaviors that specify the valid interaction patterns across the Connector."
	^ contracts ifNil: [ contracts := OrderedCollection new ]