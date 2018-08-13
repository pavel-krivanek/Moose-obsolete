visitor
isNilSuperclassDefinition: ast

	^ (ast isSequence) 
		and: [(ast statements size = 2)
		and: [(ast statements allSatisfy: #isMessage)
		and: [(self allowedSelectors includes: ast statements first selector)
		and: [(ast statements second selector = #superclass:)
		and: [(ast statements second arguments first value isNil)
		and: [((ast statements first arguments first value withoutPrefix: '#') = ast statements second receiver formattedCode)]]]]]]
		