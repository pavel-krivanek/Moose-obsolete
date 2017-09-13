actions
synchronizeIcons
	<script>
	| directory |
	directory := 'D:\OpenPonk\icons\uml' asFileReference.
	IconFactory syncDirectory: directory intoClass: #OPUmlIcons.
	OPUmlIcons resetIcons