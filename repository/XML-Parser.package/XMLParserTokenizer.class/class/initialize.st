class initialization
initialize
	"self initialize"

	"assign after with #yourself to avoid possible race
	conditions when reinitializing the class"
	PredefinedEntities :=
		Dictionary new
			at: 'lt' put: $<;
			at: 'gt' put: $>;
			at: 'amp' put: $&;
			at: 'apos' put: $';
			at: 'quot' put: $";
			yourself