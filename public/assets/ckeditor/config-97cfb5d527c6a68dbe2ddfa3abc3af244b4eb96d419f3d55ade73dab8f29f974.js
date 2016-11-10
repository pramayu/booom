CKEDITOR.editorConfig = function( config ) {
	config.toolbar = 'simple'

	config.toolbar_simple =
	[
	{ name: 'insert', items : [ 'Format' ] },
	{ name: 'basicstyles', items : [ 'Bold','Italic', 'Underline' ] },
	{ name: 'align', items : ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock']},
	{ name: 'links', items : [ 'Link', 'Image', 'Preview', 'TextColor' ] },
	{ name: 'paragraph', items : [ 'BulletedList', 'NumberedList', 'Outdent', 'Indent' ] },

	];
	config.height = '400px';
	config.width = '100%'; 
	// config.enterMode = CKEDITOR.ENTER_BR;
	// config.shiftEnterMode = CKEDITOR.ENTER_BR;
	config.AllowedContent = "br[clear]";
	config.autoParagraph = false;
}
;
