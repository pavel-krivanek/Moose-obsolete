private
checkExternalEntityLimit
	| maxExternalEntities |

	((maxExternalEntities := self externalEntityResolver maxExternalEntities) notNil
		and: [self totalResolvedExternalEntities >= maxExternalEntities])
		ifTrue: [self erorrExternalEntityLimitExceeded]