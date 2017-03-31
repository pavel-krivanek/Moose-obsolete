I am a label that can be emphasized.

!! Usage

==label emphasis: TextEmphasis bold.==
or
==label emphasis: { TextEmphasis bold . TextEmphasis underlined }==

!! Example

[[[
|v|
v := RTView new.
l := RTStyledLabel new
	color: Color black;
	emphasis: TextEmphasis underlined;
	elementOn: 'Underlined Text'.
v add: l.
v open.
]]]