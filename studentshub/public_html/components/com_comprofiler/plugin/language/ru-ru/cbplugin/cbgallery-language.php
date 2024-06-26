<?php
/**
* Community Builder (TM) cbgallery Russian (Russia) language file Frontend
* @version $Id:$
* @copyright (C) 2004-2021 www.joomlapolis.com / Lightning MultiCom SA - and its licensors, all rights reserved
* @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2
*/

/**
* WARNING:
* Do not make changes to this file as it will be over-written when you upgrade CB.
* To localize you need to create your own CB language plugin and make changes there.
*/

defined('CBLIB') or die();

return	array(
// 24 language strings from file plug_cbgallery/cbgallery.xml
'OPTIONALLY_INPUT_THE_COMMA_SEPARATED_ASSETS_FOR_TH_64bc35'	=>	'Optionally input the comma separated assets for this gallery. Asset determines gallery location (e.g. global.cars, profile.[user_id], profile.%). Use a wildcard of % to match anything starting at and after the wildcard. Leave blank for profile field galley based off the displayed user (e.g. profile.[user_id].field.[field_id]). Additionally substitutions are supported (e.g. profile.[user_id].cars.[field_id]) in addition to custom [displayed_id] and [viwer_id]. The following custom assets can also be used: profile, uploads, connections, connectionsonly, self, self.uploads, self.connections, self.connectionsonly, user, user.uploads, user.connections, user.connectionsonly, displayed, displayed.uploads, displayed.connections, and displayed.connectionsonly.',
'ASSET_26e905'	=>	'Актив',
'SELECT_THE_LAYOUT_FOR_THIS_GALLERY_9c08c8'	=>	'Select the layout for this gallery.',
'LAYOUT_ebd9be'	=>	'Макет',
'GALLERY_2767cc'	=>	'gallery',
'GALLERY_5c9331'	=>	'Галерея',
'OPTIONALLY_INPUT_THE_COMMA_SEPARATED_ASSETS_FOR_TH_11a6f1'	=>	'Optionally input the comma separated assets for this gallery. Asset determines gallery location (e.g. global.cars, profile.[user_id], profile.%). Use a wildcard of % to match anything starting at and after the wildcard. Leave blank for profile galley based off the displayed user (e.g. profile.[user_id]). Additionally substitutions are supported (e.g. profile.[user_id].cars) in addition to custom [displayed_id] and [viwer_id]. The following custom assets can also be used: profile, uploads, connections, connectionsonly, self, self.uploads, self.connections, self.connectionsonly, user, user.uploads, user.connections, user.connectionsonly, displayed, displayed.uploads, displayed.connections, and displayed.connectionsonly.',
'SELECT_TEMPLATE_TO_BE_USED_FOR_ALL_OF_CB_GALLERY_I_c47ff6'	=>	'Выберите шаблон, который будет использоваться для всех плагинов CB Gallery. Если шаблон является неполным, то недостающие файлы будут использоваться из шаблона по умолчанию назначенного по умолчанию. Файлы шаблонов могут быть расположены по следующему адресу: components/com_comprofiler/plugin/user/plug_cbgallery/templates/.',
'OPTIONALLY_ADD_A_CLASS_SUFFIX_TO_SURROUNDING_DIV_E_79b347'	=>	'При необходимости  добавьте  суффикс класса, и окружить тегом DIV заключив в них весь плагин CB Gallery.',
'ENABLE_OR_DISABLE_AUTOMATIC_DELETION_OF_ITEMS_WHEN_468e68'	=>	'Включить или отключить автоматическое удаление всех элементов галереи, когда пользователь будет удален.',
'ENABLE_OR_DISABLE_USAGE_OF_WORKFLOWS_MENU_TO_ALBUM_bde6fb'	=>	'Enable or disable usage of workflows menu to album and media approval',
'WORKFLOWS_MENU_0efede'	=>	'Workflows Menu',
'ENABLE_OR_DISABLE_DISPLAY_OF_CUSTOM_THUMBNAILS_FOR_f12912'	=>	'Enable or disable display of custom thumbnails for videos, music, and files media.',
'THUMBNAILS_acc66e'	=>	'Thumbnails',
'ENABLE_OR_DISABLE_UPLOADING_OF_THUMBNAILS_940ccc'	=>	'Enable or disable uploading of thumbnails.',
'UPLOAD_914124'	=>	'Загрузить',
'ENABLE_OR_DISABLE_LINKING_OF_THUMBNAILS_LINKING_AL_3fbaaa'	=>	'Enable or disable linking of thumbnails. Linking allows thumbnails to be displayed in the gallery from external sources.',
'LINK_97e7c9'	=>	'Ссылка',
'CHOOSE_IF_IMAGES_UPLOADED_SHOULD_ALWAYS_BE_RESAMPL_b7b0e2'	=>	'Выберите, следует ли всегда проводить ресамплинг загружаемых изображений. Ресамплинг добавляет дополнительну безопасность, но анимация будет сохраняться только когда установлена библиотека ImageMagic.',
'INPUT_THE_MAXIMUM_HEIGHT_IN_PIXELS_THAT_THE_IMAGE__e0ce78'	=>	'Введите до какой высоты максимально изменить размер этого изображения.',
'INPUT_THE_MAXIMUM_WIDTH_IN_PIXELS_THAT_THE_IMAGE_W_75174f'	=>	'Введите в пикселях до какой ширины максимально изменить размер этого изображения.',
'CHOOSE_IF_IMAGES_UPLOADED_SHOULD_MAINTAIN_THEIR_AS_d23fff'	=>	'Выберите следует ли загружаемым изображениям при изменении их размера сохранять пропорцию между шириной и высотой. При настройке этого параметра на \'Нет\', размер изображения будет изменен согласно указанных ширины и высоты. При настройке этого параметра на \'Да\', соотношение между шириной и высотой исходного изображения будет сохранено насколько это максимально возможно. Если этот параметр настроен на \'Да с подрезкой\', то размер исходного изображения будет всегда изменен на указанные ширину и высоту в пределах соотношения между высотой и шириной исходного изображения и его оставшаяся и выступающая часть будет подрезана. Это очень полезно для создания квадратных изображений.',
'INPUT_THE_MINIMUM_ITEM_FILE_SIZE_IN_KBS_fcd110'	=>	'Input the minimum item file size in KBs.',
'INPUT_THE_MAXIMUM_ITEM_FILE_SIZE_IN_KBS_SET_TO_0_F_8ff57c'	=>	'Input the maximum item file size in KBs. Set to 0 for no limit.',
// 61 language strings from file plug_cbgallery/component.cbgallery.php
'ALL_b1c94c'	=>	'Все',
'SEARCH_TYPE_612c4a'	=>	'Search Type',
'SEARCH_ALBUM_640997'	=>	'Search Album...',
'SEARCH_GALLERY_9432ef'	=>	'Search Gallery...',
'SEARCH_TYPE'	=>	'Search [type]...',
'SELECT_PUBLISH_STATUS_OF_THE_FILE_IF_UNPUBLISHED_T_e75692'	=>	'Select publish status of the file. If unpublished the file will not be visible to the public.',
'OPTIONALLY_INPUT_A_TITLE_IF_NO_TITLE_IS_PROVIDED_T_a49e71'	=>	'Optionally input a title. If no title is provided the filename will be displayed as the title.',
'SELECT_THE_ALBUM_FOR_THIS_FILE_b74b56'	=>	'Select the album for this file.',
'OPTIONALLY_INPUT_A_DESCRIPTION_83fc3f'	=>	'Optionally input a description.',
'NO_CHANGE_bb84f3'	=>	'Изменений нет.',
'SELECT_THE_FILE_TO_UPLOAD_739b2a'	=>	'Select the file to upload.',
'FILE_MUST_BE_EXTS'	=>	'Your file must be of [extensions] type.',
'FILE_SHOULD_EXCEED_SIZE'	=>	'Ваш файл должен превышать размер [size].',
'FILE_SHOUND_NOT_EXCEED_SIZE'	=>	'Ваш файл не должен превышать размер [size].',
'INPUT_THE_URL_TO_THE_FILE_TO_LINK_1ec2e8'	=>	'Input the URL to the file to link.',
'LINK_MUST_BE_EXTS'	=>	'Your file link must be of [extensions] type.',
'OPTIONALLY_SELECT_THE_THUMBNAIL_FILE_TO_UPLOAD_19d180'	=>	'Optionally select the thumbnail file to upload.',
'THUMBNAIL_MUST_BE_EXTS'	=>	'Your thumbnail file must be of [extensions] type.',
'THUMBNAIL_SHOULD_EXCEED_SIZE'	=>	'Your thumbnail file should exceed [size].',
'THUMBNAIL_SHOUND_NOT_EXCEED_SIZE'	=>	'Your thumbnail file should not exceed [size].',
'OPTIONALLY_INPUT_THE_URL_TO_THE_THUMBNAIL_FILE_TO__72ce7b'	=>	'Optionally input the URL to the thumbnail file to link.',
'THUMBNAIL_LINK_MUST_BE_EXTS'	=>	'Your thumbnail file link must be of [extensions] type.',
'INPUT_OWNER_AS_SINGLE_INTEGER_USERID_169965'	=>	'Введите целое число ID номера владельца',
'YOU_DO_NOT_HAVE_PERMISSION_TO_EDIT_THIS_FILE_af2b2d'	=>	'You do not have permission to edit this file.',
'YOU_CANNOT_UPLOAD_ANYMORE_TYPES'	=>	'You can not upload anymore [types]. You have reached your quota.',
'YOU_CANNOT_LINK_ANYMORE_TYPES'	=>	'You can not link anymore [types]. You have reached your quota.',
'FILE_UPLOAD_INVALID_UPLOAD_ONLY_EXTS'	=>	'Invalid file. Please upload only [extensions]!',
'FILE_LINK_INVALID_LINK_ONLY_EXTS'	=>	'Invalid file URL. Please link only [extensions]!',
'NO_PERMISSION_TO_CREATE_TYPES'	=>	'You do not have permission to create [types] in this gallery.',
'CUSTOM_THUMBNAIL_FILES_ARE_NOT_ALLOWED_IN_THIS_GAL_daec99'	=>	'Custom thumbnail files are not allowed in this gallery.',
'CUSTOM_THUMBNAIL_LINKS_ARE_NOT_ALLOWED_IN_THIS_GAL_200bf1'	=>	'Custom thumbnail links are not allowed in this gallery.',
'UPLOADS_0f3113'	=>	'Загрузки',
'TYPE_FAILED_TO_SAVE'	=>	'[type] failed to save! Error: [error]',
'GALLERY_NEW_TYPE_CREATED'	=>	'Gallery - New [type] Created!',
'TYPE_PENDING_APPROVAL'	=>	'<a href="[user_url]">[formatname]</a> created [type] <a href="[item_url]">[item_title]</a> and requires <a href="[gallery_location]">approval</a>!',
'TYPE_SAVED_SUCCESSFULLY_AND_AWAITING_APPROVAL'	=>	'[type] saved successfully and awaiting approval!',
'TYPE_SAVED_SUCCESSFULLY'	=>	'[type] saved successfully!',
'NOTHING_TO_ROTATE_2bea34'	=>	'Nothing to rotate.',
'PHOTO_FAILED_TO_ROTATE'	=>	'Photo failed to rotate! Error: [error]',
'PROFILE_CANVAS_FAILED_TO_UPDATE'	=>	'Profile canvas failed to update! Error: [error]',
'PROFILE_AVATAR_FAILED_TO_UPDATE'	=>	'Profile avatar failed to update! Error: [error]',
'PROFILE_CANVAS_SUCCESSFULLY_SET_TO_THIS_PHOTO_beea25'	=>	'Profile canvas successfully set to this photo!',
'PROFILE_AVATAR_SUCCESSFULLY_SET_TO_THIS_PHOTO_5e72c9'	=>	'Profile avatar successfully set to this photo!',
'TYPE_STATE_FAILED_TO_SAVE'	=>	'[type] state failed to save! Error: [error]',
'TYPE_STATE_SAVED_SUCCESSFULLY'	=>	'[type] state saved successfully!',
'NOTHING_TO_DELETE_aea31f'	=>	'Nothing to delete.',
'TYPE_FAILED_TO_DELETE'	=>	'[type] failed to delete! Error: [error]',
'TYPE_DELETED_SUCCESSFULLY'	=>	'[type] deleted successfully!',
'SELECT_PUBLISH_STATUS_OF_THE_ALBUM_IF_UNPUBLISHED__842c75'	=>	'Select publish status of the album. If unpublished the album will not be visible to the public.',
'OPTIONALLY_INPUT_A_TITLE_IF_NO_TITLE_IS_PROVIDED_T_72a8cd'	=>	'Optionally input a title. If no title is provided the date will be displayed as the title.',
'ALBUM_FAILED_TO_SAVE'	=>	'Album failed to save! Error: [error]',
'GALLERY_NEW_ALBUM_CREATED_36552c'	=>	'Gallery - New Album Created!',
'ALBUM_PENDING_APPROVAL'	=>	'<a href="[user_url]">[formatname]</a> created album <a href="[folder_url]">[folder_title]</a> and requires approval!',
'ALBUM_SAVED_SUCCESSFULLY_AND_AWAITING_APPROVAL_d6fc5e'	=>	'Album saved successfully and awaiting approval!',
'ALBUM_SAVED_SUCCESSFULLY_096683'	=>	'Album saved successfully!',
'ALBUM_COVER_FAILED_TO_SAVE'	=>	'Album cover failed to save! Error: [error]',
'ALBUM_COVER_SAVED_SUCCESSFULLY_2726ef'	=>	'Album cover saved successfully!',
'ALBUM_STATE_FAILED_TO_SAVE'	=>	'Album state failed to save! Error: [error]',
'ALBUM_STATE_SAVED_SUCCESSFULLY_486ce8'	=>	'Album state saved successfully!',
'ALBUM_FAILED_TO_DELETE'	=>	'Album failed to delete! Error: [error]',
'ALBUM_DELETED_SUCCESSFULLY_e3df95'	=>	'Album deleted successfully!',
// 7 language strings from file plug_cbgallery/library/CBGallery.php
'PHOTOS_5daaf2'	=>	'Фото',
'PHOTO_c03d53'	=>	'Фото',
'VIDEOS_554cfa'	=>	'Видео',
'VIDEO_34e2d1'	=>	'Видео',
'MUSIC_47dcbd'	=>	'Music',
'FILES_91f3a2'	=>	'Файлы',
'FILE_0b2791'	=>	'Файл',
// 1 language strings from file plug_cbgallery/library/Table/FolderTable.php
'OWNER_NOT_SPECIFIED_4e1454'	=>	'Не указан владелец!',
// 15 language strings from file plug_cbgallery/library/Table/ItemTable.php
'TYPE_NOT_SPECIFIED_7f3675'	=>	'Не указан тип!',
'NOTHING_TO_UPLOAD_OR_LINK_26c420'	=>	'Nothing to upload or link!',
'FILE_UPLOAD_INVALID_EXT'	=>	'Invalid file extension [extension]. Please upload only [extensions]!',
'FILE_UPLOAD_TOO_SMALL'	=>	'The file is too small. The minimum size is [size]!',
'FILE_UPLOAD_TOO_LARGE'	=>	'The file is too large. The maximum size is [size]!',
'FILE_LINK_INVALID_URL'	=>	'Invalid file URL. Please ensure the URL exists!',
'FILE_LINK_INVALID_EXT'	=>	'Invalid file URL extension [extension]. Please link only [extensions]!',
'THUMBNAIL_UPLOAD_INVALID_EXT'	=>	'Invalid thumbnail file extension [extension]. Please upload only [extensions]!',
'THUMBNAIL_UPLOAD_TOO_SMALL'	=>	'The thumbnail file is too small. The minimum size is [size]!',
'THUMBNAIL_UPLOAD_TOO_LARGE'	=>	'The thumbnail file is too large. The maximum size is [size]!',
'THUMBNAIL_LINK_INVALID_URL'	=>	'Invalid thumbnail file URL. Please ensure the URL exists!',
'THUMBNAIL_LINK_INVALID_EXT'	=>	'Invalid thumbnail file URL extension [extension]. Please link only [extensions]!',
'FILE_FAILED_TO_UPLOAD'	=>	'The file [file] failed to upload!',
'THE_FILE_IS_TOO_LARGE_b0d5ca'	=>	'The file is too large!',
'FAILED_TO_UPLOAD_9b2206'	=>	'Failed to upload!',
// 4 language strings from file plug_cbgallery/library/Trigger/AdminTrigger.php
'ALBUMS_15bf55'	=>	'Альбомы',
'ADD_NEW_ALBUM_327f75'	=>	'Add New Album',
'MEDIA_3b5635'	=>	'Медиа',
'ADD_NEW_MEDIA_7d388e'	=>	'Add New Media',
// 2 language strings from file plug_cbgallery/library/Trigger/WorkflowTrigger.php
'GALLERY_ALBUM_APPROVALS'	=>	'%%COUNT%% Album Approval|%%COUNT%% Album Approvals',
'GALLERY_MEDIA_APPROVALS'	=>	'%%COUNT%% Media Approval|%%COUNT%% Media Approvals',
// 26 language strings from file plug_cbgallery/templates/default/activity.php
'COUNT_TYPES'	=>	'%%COUNT%% [types]',
'GALLERY_SHORT_DATE_FORMAT'	=>	'M j, Y',
'LIKED_YOUR_TYPE_TITLE_IN_ALBUM'	=>	'liked your [type] [title] in album [album]',
'LIKED_YOUR_TYPE_TITLE'	=>	'liked your [type] [title]',
'LIKED_TYPE_TITLE_IN_ALBUM'	=>	'liked [type] [title] in album [album]',
'LIKED_TYPE_TITLE'	=>	'liked [type] [title]',
'TAGGED_YOU_IN_TYPE_TITLE_IN_ALBUM'	=>	'tagged you in [type] [title] in album [album]',
'TAGGED_YOU_IN_TYPE_TITLE'	=>	'tagged you in [type] [title]',
'TAGGED_IN_TYPE_TITLE_IN_ALBUM'	=>	'tagged in [type] [title] in album [album]',
'TAGGED_IN_TYPE_TITLE'	=>	'tagged in [type] [title]',
'COMMENTED_ON_YOUR_TYPE_TITLE_IN_ALBUM'	=>	'commented on your [type] [title] in album [album]',
'COMMENTED_ON_YOUR_TYPE_TITLE'	=>	'commented on your [type] [title]',
'COMMENTED_ON_TYPE_TITLE_IN_ALBUM'	=>	'commented on [type] [title] in album [album]',
'COMMENTED_ON_TYPE_TITLE'	=>	'commented on [type] [title]',
'ABOUT_YOUR_TYPE_TITLE_IN_ALBUM'	=>	'about your [type] [title] in album [album]',
'ABOUT_YOUR_TYPE_TITLE'	=>	'about your [type] [title]',
'ABOUT_TYPE_TITLE_IN_ALBUM'	=>	'about [type] [title] in album [album]',
'ABOUT_TYPE_TITLE'	=>	'about [type] [title]',
'SHARED_COUNT_TYPES_IN_ALBUM'	=>	'shared [types] in album [album]',
'SHARED_TYPE_TITLE_IN_ALBUM'	=>	'shared [type] [title] in album [album]',
'SHARED_A_TYPE_IN_ALBUM'	=>	'shared a [type] in album [album]',
'SHARED_TYPE_IN_ALBUM'	=>	'shared [type] in album [album]',
'SHARED_COUNT_TYPES'	=>	'shared [types]',
'SHARED_TYPE_TITLE'	=>	'shared [type] [title]',
'SHARED_A_TYPE'	=>	'shared a [type]',
'SHARED_TYPE'	=>	'shared [type]',
// 7 language strings from file plug_cbgallery/templates/default/activity_new.php
'INVALID_FILE_EXTENSION_PLEASE_UPLOAD_ONLY_0_7d7e70'	=>	'Invalid file extension. Please upload only {0}!',
'THE_FILE_IS_TOO_SMALL_THE_MINIMUM_SIZE_IS_0_2S_a80d7e'	=>	'The file is too small. The minimum size is {0} {2}s!',
'THE_FILE_IS_TOO_LARGE_THE_MAXIMUM_SIZE_IS_1_2S_a5c717'	=>	'The file is too large. The maximum size is {1} {2}s!',
'HAVE_TYPES_TO_SHARE'	=>	'Have [types] to share?',
'OR_1d00e7'	=>	'ИЛИ',
'HAVE_A_MEDIA_LINK_TO_SHARE_9d6f04'	=>	'Have a media link to share?',
'SHARE_5a95a4'	=>	'Share',
// 5 language strings from file plug_cbgallery/templates/default/embed.php
'EXTENSION_63e4e9'	=>	'Расширение',
'SIZE_6f6cb7'	=>	'Размер',
'MODIFIED_35e0c8'	=>	'Modified',
'MD5_CHECKSUM_fe243a'	=>	'MD5 Checksum',
'SHA1_CHECKSUM_c9c95c'	=>	'SHA1 Checksum',
// 5 language strings from file plug_cbgallery/templates/default/folder.php
'GALLERY_LONG_DATE_FORMAT'	=>	'F j, Y',
'APPROVE_6f7351'	=>	'Одобрить',
'ARE_YOU_SURE_YOU_WANT_TO_UNPUBLISH_THIS_ALBUM_53e72b'	=>	'Are you sure you want to unpublish this album?',
'ARE_YOU_SURE_YOU_WANT_TO_DELETE_THIS_ALBUM_AND_ALL_6a52d2'	=>	'Are you sure you want to delete this album and all its files?',
'ALBUM_MENU_0ccd3f'	=>	'Album Menu',
// 2 language strings from file plug_cbgallery/templates/default/folder_container.php
'PENDING_APPROVAL_017e8b'	=>	'Ожидает одобрения',
'COUNT_FILES'	=>	'%%COUNT%% File|%%COUNT%% Files|{0}Empty',
// 4 language strings from file plug_cbgallery/templates/default/folder_edit.php
'EDIT_ALBUM_NAME'	=>	'Edit Album: [name]',
'CREATE_NEW_ALBUM_6d053d'	=>	'Create New Album',
'UPDATE_ALBUM_f6fd0f'	=>	'Update Album',
'CREATE_ALBUM_3912d2'	=>	'Create Album',
// 3 language strings from file plug_cbgallery/templates/default/gallery.php
'UPLOAD_LINK_NEW_MEDIA_f12cbd'	=>	'Upload / Link New Media',
'UPLOAD_NEW_MEDIA_836d70'	=>	'Upload New Media',
'LINK_NEW_MEDIA_905b2b'	=>	'Link New Media',
// 11 language strings from file plug_cbgallery/templates/default/item.php
'IN_FOLDER'	=>	'in [folder]',
'MAKE_ALBUM_COVER_a51507'	=>	'Make Album Cover',
'ROTATE_LEFT_d82752'	=>	'Rotate Left',
'ROTATE_RIGHT_f757fd'	=>	'Rotate Right',
'ARE_YOU_SURE_YOU_WANT_TO_MAKE_THIS_PHOTO_YOUR_PROF_0c6da8'	=>	'Are you sure you want to make this photo your profile avatar?',
'MAKE_PROFILE_AVATAR_9a8fbc'	=>	'Make Profile Avatar',
'ARE_YOU_SURE_YOU_WANT_TO_MAKE_THIS_PHOTO_YOUR_PROF_35618e'	=>	'Are you sure you want to make this photo your profile canvas?',
'MAKE_PROFILE_CANVAS_e3d3c7'	=>	'Make Profile Canvas',
'ARE_YOU_SURE_UNPUBLISH_TYPE'	=>	'Are you sure you want to unpublish this [type]?',
'ARE_YOU_SURE_DELETE_TYPE'	=>	'Are you sure you want to delete this [type]?',
'MEDIA_MENU_ae5e72'	=>	'Media Menu',
// 1 language strings from file plug_cbgallery/templates/default/item_container.php
'ITEM_EXT_TYPE'	=>	'[ext] [type]',
// 7 language strings from file plug_cbgallery/templates/default/item_edit.php
'EDIT_TYPE_NAME'	=>	'Edit [type]: [name]',
'ALBUM_c4f839'	=>	'Альбом',
'THUMBNAIL_b7c161'	=>	'Миниатюра',
'UPDATE_TYPE'	=>	'Обновить [type]',
'CREATE_UPLOAD_LINK_842e6d'	=>	'Create Upload / Link',
'CREATE_UPLOAD_ae5001'	=>	'Create Upload',
'CREATE_LINK_e6ae26'	=>	'Create Link',
// 3 language strings from file plug_cbgallery/templates/default/items.php
'NO_GALLERY_SEARCH_RESULTS_FOUND_10f76f'	=>	'No gallery search results found.',
'THIS_ALBUM_IS_CURRENTLY_EMPTY_edd10a'	=>	'This album is currently empty.',
'THIS_GALLERY_IS_CURRENTLY_EMPTY_f8e6be'	=>	'This gallery is currently empty.',
// 2 language strings from file plug_cbgallery/templates/default/items_new.php
'ARE_YOU_SURE_YOU_ARE_DONE_ALL_UNSAVED_DATA_WILL_BE_2dff72'	=>	'Are you sure you are done? All unsaved data will be lost!',
'DONE_f92965'	=>	'Выполненный',
// 1 language strings from file plug_cbgallery/templates/default/pm_edit.php
'ATTACHMENTS_7e2708'	=>	'Приложения',
// 1 language strings from file plug_cbgallery/xml/views/view.com_comprofiler.cbgalleryglobals.xml
'CUSTOM_8b9035'	=>	'custom',
);
