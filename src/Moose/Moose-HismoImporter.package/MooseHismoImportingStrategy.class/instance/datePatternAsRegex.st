private
datePatternAsRegex
	"Check this!!!"
	"example: for the pattern 'dd-mm-yyyy' or 'd-m-yyyy' we want the regex  '\d?\d-\d?\d-\d\d\d\d' "
	^ ((self datePattern replaceAllRegex: 'dd|d|mm|m' with: 'x') replaceAllRegex: 'x' with: '\d?\d') replaceAllRegex: 'y' with: '\d'