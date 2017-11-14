private
lookupAxisSpecifier
	| association |

	association :=
		AxisSpecifiers
			at: self axisSpecifier
			ifAbsent: [self errorUnrecognizedAxisSpecifier].
	handlerSelector := association key.
	defaultNodeTestParserStateClass := association value.