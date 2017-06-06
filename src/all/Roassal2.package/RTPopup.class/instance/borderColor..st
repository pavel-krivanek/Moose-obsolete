accessing
borderColor: aColor
	"Set the border color
	Here is an example:

b := RTMondrian new.
b interaction popupView: [ :group :el |
    group add: (RTBitmap new form: TRPlatform current roassalIcon) element.
    group add: (RTLabel new color: Color orange; elementOn: el model printString).
    RTVerticalLineLayout on: group.
] backgroundColor: Color white borderColor: Color black .
b nodes: (1 to: 100).
b layout grid.
b
"
	borderColor := aColor.
	hasBorder := true.