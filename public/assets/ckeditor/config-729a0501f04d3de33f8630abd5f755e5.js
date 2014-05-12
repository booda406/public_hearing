CKEDITOR.editorConfig = function( config )
{
  config.toolbar = 'Mini';
  config.uiColor = '#9AB8F3';
  config.toolbar_Mini =
    [
        ['Cut','Copy','Paste',], ['Undo','Redo'],
        { name: 'insert', items : [ 'Image','Table','HorizontalRule','Smiley','SpecialChar','Iframe' ] },
        '/',
        { name: 'styles', items : [ 'Styles','Format' ] },
        { name: 'colors', items: [ 'TextColor','BGColor' ] },
        { name: 'links', items : [ 'Link','Unlink' ] },
        ['Bold','Italic','Underline','Strike'], ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'],
        { name: 'tools', items : [ 'Maximize' ] }
    ];
}
;
