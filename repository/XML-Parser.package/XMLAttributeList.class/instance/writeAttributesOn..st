private
writeAttributesOn: aWriter
	"use to:do: for fast writing"
	1 to: collection size do: [:i | | attribute |
		attribute := collection at: i.
		aWriter
			writeAttributeName: attribute name
			value: attribute value]