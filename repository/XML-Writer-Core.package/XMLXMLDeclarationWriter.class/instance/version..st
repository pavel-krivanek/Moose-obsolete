accessing
version: aVersionFloatOrString
	| versionString |

	versionString := (aVersionFloatOrString ifNil: ['1.0']) asString.
	"cutoff excess digits without first: for GS portability"
	version :=
		versionString
			copyFrom: 1
			to: (3 min: versionString size)