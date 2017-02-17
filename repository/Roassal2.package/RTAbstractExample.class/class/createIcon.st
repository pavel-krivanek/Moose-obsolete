utility
createIcon
	"Execute and select part of the screen (your cursor will change), then you will get inspector on base64 representation of the selection"

	<script>
	| memFile |
	memFile := FileSystem memory / 'icon.png'.
	PNGReadWriter putForm: Form fromUser onStream: memFile writeStream binary.
	(Base64MimeConverter mimeEncode: memFile readStream binary) contents inspect