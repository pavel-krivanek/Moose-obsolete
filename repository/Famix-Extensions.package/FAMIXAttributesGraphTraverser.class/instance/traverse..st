running
traverse: aClass
	^ (aClass attributes "select: [:each | each hasClassScope not ]") collect: #declaredType