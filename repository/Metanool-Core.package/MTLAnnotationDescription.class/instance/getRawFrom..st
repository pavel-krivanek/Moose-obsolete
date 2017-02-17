accessing-meta
getRawFrom: element
	^ element privateState attributeAt: self name ifAbsent: [nil]