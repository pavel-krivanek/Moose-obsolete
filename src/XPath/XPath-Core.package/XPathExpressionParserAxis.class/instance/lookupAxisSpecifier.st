private
lookupAxisSpecifier
	| association |

	association :=
		AxisSpecifiers
			at: self axisSpecifier
			ifAbsent: [self errorUnrecognizedAxisSpecifier].
	handlerSelector := association key.
	defaultNodeTestParserContextClass := association value.