instance creation
on: source withInvocations: invocations withOtherDependencies: others

	^ self new
			receiver: source;
			addAllOthers: others;
			addAllInvocations: invocations;
			yourself