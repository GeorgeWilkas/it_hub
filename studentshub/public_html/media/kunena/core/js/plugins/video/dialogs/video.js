/**
 * Kunena Component
 * @package Kunena.Media
 *
 * @copyright     Copyright (C) 2008 - @currentyear@ Kunena Team. All rights reserved.
 * @license https://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link https://www.kunena.org
 **/

CKEDITOR.dialog.add( 'videoDialog', function( editor ) {
	return {
		title: Joomla.Text._('COM_KUNENA_EDITOR_DIALOG_VIDEO_PROPERTIES'),
		minWidth: 400,
		minHeight: 200,
		contents: [
			{
				id: 'tab-basic',
				label: Joomla.Text._('COM_KUNENA_EDITOR_DIALOG_BASIC_SETTINGS'),
				elements: [
			{
		type: 'text',
		id: 'videourl',
		label: 'Video URL',
		default: ''
	},
	{
		type: 'text',
		id: 'videosize',
		label: 'Size of the video',
		'default': ''
	},
	{
		type: 'text',
		id: 'width',
		label: 'Width',
		default: ''
	},
	{
		type: 'text',
		id: 'height',
		label: 'Height',
		default: ''
	},
	{
		type: 'select',
		id: 'provider',
		label: 'Select a video provider',
		items: [ [ '' ], [ 'Bofunk' ], [ 'Break' ], [ 'Clipfish' ], [ 'DivX,divx]http://' ], [ 'Flash,flash]http://' ], [ 'FlashVars,flashvars param=]http://' ], 
		[ 'MediaPlayer,mediaplayer]http://' ], [ 'Metacafe' ], [ 'MySpace' ], [ 'QuickTime,quicktime]http://' ], [ 'RealPlayer,realplayer]http://' ], [ 'RuTube' ], [ 'Sapo' ]
		, [ 'Streetfire' ], [ 'Veoh' ], [ 'Videojug' ], [ 'Vimeo' ], [ 'Wideo.fr' ], [ 'YouTube' ] ],
		'default': '',
		onChange: function( api ) {
			// this = CKEDITOR.ui.dialog.select
		}
	},
	{
		type: 'text',
		id: 'videoid',
		label: 'ID',
		default: ''
	}
		]
            }
        ],
        onOk: function() {
			var dialog = this;
			var videourl = null;
			var videosize = '';
			var width = '';
			var height = '';
			var videoprovider = '';
			var content = '';

			if(dialog.getValueOf( 'tab-basic', 'videourl' ).length != 0)
			{
                videourl = dialog.getValueOf( 'tab-basic', 'videourl' ); 

                editor.insertHtml( '[video]' + videourl + '[/video]' );

                // Insert Youtube embded video of the CKeditor by checking before if it's right a youtube url
                resRegex = videourl.match(/(youtu.*be.*)\/(watch\?v=|embed\/|v|shorts|)/gm);
                if(resRegex !== null) {
                    urlembded = videourl.replace('watch?v=', 'embed/');
                    content += '<iframe width="560" height="315" src="' + urlembded + '" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>';
                    var element = CKEDITOR.dom.element.createFromHtml(content);
                    var instance = this.getParentEditor();
                    instance.insertElement(element);
                }
			}
			else
			{
				videosize = dialog.getValueOf( 'tab-basic', 'videosize' );
				if (videosize.length > 0)
				{
					videosize = 'size='+videosize;
				}

				width = dialog.getValueOf( 'tab-basic', 'width' );
				height = dialog.getValueOf( 'tab-basic', 'height' );
				if (width.length> 0 && height.length > 0)
				{
					width = 'width='+width;
					height = 'height='+height;
				}

				videourl = dialog.getValueOf( 'tab-basic', 'videoid' );
				videoprovider = dialog.getValueOf( 'tab-basic', 'provider' );
				videoprovider = 'type='+videoprovider;

				editor.insertHtml( '[video '+videoprovider+' '+videosize+' '+width+' '+height+']' + videourl + '[/video]' );
			}
		}
	};
});