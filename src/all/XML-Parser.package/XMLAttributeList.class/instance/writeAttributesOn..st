private
writeAttributesOn: aWriter
	"use #to:do: with direct access for fast writing"
	1 to: collection size do: [:i | | attribute |
		attribute := collection at: i.
		aWriter
			writeAttributeName: attribute name
			value: attribute value]