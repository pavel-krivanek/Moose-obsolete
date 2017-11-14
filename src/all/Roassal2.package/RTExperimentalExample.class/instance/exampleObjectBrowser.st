sources
exampleObjectBrowser
	<script: 'self new exampleObjectBrowser inspect'>
	| b v |
	b := RTObjectBrowser new.
	v := RTView new.
	v addElement: RTBox element.
	b object: v.
	^ b