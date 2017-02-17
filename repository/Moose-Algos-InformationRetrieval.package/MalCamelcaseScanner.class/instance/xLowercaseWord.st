private
xLowercaseWord

	[buffer nextPut: next.
	 next := stream informationRetrievalNext.
	 next isLowercase] whileTrue