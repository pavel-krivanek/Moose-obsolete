parsing - peeking
peekForLocationPathExpression
	^ self peekForAbsoluteLocationPath
		or: [self peekForRelativeLocationPath]