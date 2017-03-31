initialize-release
initialize
	super initialize.
	childScopes := FMNullMultivalueLink on: self opposite: #parentScope: selector: #childScopes.
	parentScope := nil.
	globalVariables := FMNullMultivalueLink on: self opposite: #parentScope: selector: #globalVariables.