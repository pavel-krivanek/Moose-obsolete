testing
includes: element
	"Here we use the elements inst var instead of the getter to not cast the elements as array. It improve the perf a lot."

	^ (element isFM3Class and: [ element isBuiltIn ]) or: [ elements includes: element ]