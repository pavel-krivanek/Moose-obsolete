accessing
transformationBlock

	^ transformationBlock ifNil: [transformationBlock := [:outputValue | outputValue]]