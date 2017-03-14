as yet unclassified
descriptionContainer
	<magritteContainer>
	^ super descriptionContainer
		propertyAt: #containerBase put: nil;
		yourself