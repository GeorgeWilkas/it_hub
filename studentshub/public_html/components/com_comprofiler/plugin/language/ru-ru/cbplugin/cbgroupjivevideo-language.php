<?php
/**
* Community Builder (TM) cbgroupjivevideo Russian (Russia) language file Frontend
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
// 8 language strings from file cbgroupjivevideo/cbgroupjivevideo.xml
'ENABLE_OR_DISABLE_AUTOMATIC_DELETION_OF_VIDEOS_WHE_20b9d9'	=>	'Enable or disable automatic deletion of videos when a user is deleted.',
'SELECT_THE_FIELD_TO_USE_FOR_VIDEOS_CREATE_LIMIT_PE_ee7f21'	=>	'Select the field to use for videos create limit per group. Moderators are exempt from this configuration.',
'CUSTOM_8b9035'	=>	'custom',
'INPUT_NUMBER_OF_VIDEOS_EACH_INDIVIDUAL_USER_IS_LIM_45b334'	=>	'Input number of videos each individual user is limited to creating per group. If blank allow unlimited photos.',
'CUSTOM_CREATE_LIMIT_7ff69b'	=>	'Custom Create Limit',
'ENABLE_OR_DISABLE_USAGE_OF_CAPTCHA_ON_GROUP_VIDEOS_6066cb'	=>	'Enable or disable usage of captcha on group videos. Requires latest CB AntiSpam to be installed and published. Moderators are exempt from this configuration.',
'PUBLISH_OF_NEW_VIDEO_026206'	=>	'Publish of new video',
'NEW_VIDEO_REQUIRES_APPROVAL_a484cb'	=>	'New video requires approval',
// 28 language strings from file cbgroupjivevideo/component.cbgroupjivevideo.php
'GROUP_DOES_NOT_EXIST_df7d25'	=>	'Такой группы не существует.',
'YOU_DO_NOT_HAVE_SUFFICIENT_PERMISSIONS_TO_PUBLISH__0b0480'	=>	'You do not have sufficient permissions to publish a video in this group.',
'YOU_DO_NOT_HAVE_SUFFICIENT_PERMISSIONS_TO_EDIT_THI_08c995'	=>	'You do not have sufficient permissions to edit this video.',
'SELECT_PUBLISH_STATE_OF_THIS_VIDEO_UNPUBLISHED_VID_3eabcd'	=>	'Select publish state of this video. Unpublished videos will not be visible to the public.',
'OPTIONALLY_INPUT_A_VIDEO_TITLE_TO_DISPLAY_INSTEAD__f25147'	=>	'Optionally input a video title to display instead of url.',
'INPUT_THE_URL_TO_THE_VIDEO_TO_PUBLISH_4a8a28'	=>	'Input the URL to the video to publish.',
'GROUP_VIDEO_LIMITS_EXT'	=>	'Your url must be of [ext] type.',
'OPTIONALLY_INPUT_A_VIDEO_CAPTION_be178a'	=>	'Optionally input a video caption.',
'INPUT_THE_VIDEO_OWNER_ID_VIDEO_OWNER_DETERMINES_TH_008f4c'	=>	'Input the video owner id. Video owner determines the creator of the video specified as User ID.',
'GROUP_VIDEO_FAILED_TO_SAVE'	=>	'Video failed to save! Error: [error]',
'GROUP_VIDEO_DATE_FORMAT'	=>	'M j, Y',
'NEW_GROUP_VIDEO_28e07a'	=>	'New group video',
'USER_HAS_PUBLISHED_THE_VIDEO_VIDEO_IN_THE_GROUP_GR_bf41d0'	=>	'[user] has published the video [video] in the group [group]!',
'NEW_GROUP_VIDEO_AWAITING_APPROVAL_9740f3'	=>	'New group video awaiting approval',
'USER_HAS_PUBLISHED_THE_VIDEO_VIDEO_IN_THE_GROUP_GR_a94089'	=>	'[user] has published the video [video] in the group [group] and is awaiting approval!',
'VIDEO_PUBLISHED_SUCCESSFULLY_AND_AWAITING_APPROVAL_d7c1b5'	=>	'Video published successfully and awaiting approval!',
'VIDEO_PUBLISHED_SUCCESSFULLY_9c46a0'	=>	'Video published successfully!',
'VIDEO_SAVED_SUCCESSFULLY_d725ea'	=>	'Video saved successfully!',
'YOUR_VIDEO_IS_AWAITING_APPROVAL_3c3526'	=>	'Your video is awaiting approval.',
'YOU_DO_NOT_HAVE_SUFFICIENT_PERMISSIONS_TO_PUBLISH__08c91a'	=>	'You do not have sufficient permissions to publish or unpublish this video.',
'VIDEO_DOES_NOT_EXIST_695b98'	=>	'Video does not exist.',
'GROUP_VIDEO_STATE_FAILED_TO_SAVE'	=>	'Video state failed to saved. Error: [error]',
'VIDEO_PUBLISH_REQUEST_ACCEPTED_f4e6ff'	=>	'Video publish request accepted',
'YOUR_VIDEO_VIDEO_PUBLISH_REQUEST_IN_THE_GROUP_GROU_c3891f'	=>	'Your video [video] publish request in the group [group] has been accepted!',
'VIDEO_STATE_SAVED_SUCCESSFULLY_df7038'	=>	'Video state saved successfully!',
'YOU_DO_NOT_HAVE_SUFFICIENT_PERMISSIONS_TO_DELETE_T_8e03ba'	=>	'You do not have sufficient permissions to delete this video.',
'GROUP_VIDEO_FAILED_TO_DELETE'	=>	'Video failed to delete. Error: [error]',
'VIDEO_DELETED_SUCCESSFULLY_08a3fa'	=>	'Video deleted successfully!',
// 6 language strings from file cbgroupjivevideo/library/Table/VideoTable.php
'OWNER_NOT_SPECIFIED_4e1454'	=>	'Owner not specified!',
'URL_NOT_SPECIFIED_2ccd94'	=>	'URL not specified!',
'GROUP_NOT_SPECIFIED_70267b'	=>	'Group not specified!',
'GROUP_DOES_NOT_EXIST_adf2fd'	=>	'Group does not exist!',
'GROUP_VIDEO_INVALID_URL'	=>	'Invalid URL. Please ensure the URL exists!',
'GROUP_VIDEO_INVALID_EXT'	=>	'Invalid url extension [ext]. Please link only [exts]!',
// 2 language strings from file cbgroupjivevideo/library/Trigger/AdminTrigger.php
'VIDEOS_554cfa'	=>	'Videos',
'ADD_NEW_VIDEO_TO_GROUP_4d5188'	=>	'Add New Video to Group',
// 4 language strings from file cbgroupjivevideo/library/Trigger/VideoTrigger.php
'ENABLE_2faec1'	=>	'Включить',
'ENABLE_WITH_APPROVAL_575b45'	=>	'Включить, с одобрением',
'OPTIONALLY_ENABLE_OR_DISABLE_USAGE_OF_VIDEOS_GROUP_0ca36a'	=>	'Optionally enable or disable usage of videos. Group owner and group administrators are exempt from this configuration and can always share videos. Note existing videos will still be accessible.',
'SEARCH_VIDEOS_e5b832'	=>	'Search Videos...',
// 9 language strings from file cbgroupjivevideo/templates/default/activity.php
'VIDEO_AWAITING_APPROVAL_IN_YOUR_GROUP'	=>	'video [video] is awaiting approval in your group [group]',
'VIDEO_AWAITING_APPROVAL_IN_GROUP'	=>	'video [video] is awaiting approval in group [group]',
'VIDEO_APPROVED_IN_YOUR_GROUP'	=>	'video [video] approved in your group [group]',
'VIDEO_APPROVED_IN_GROUP'	=>	'video [video] approved in group [group]',
'SHARED_VIDEO_IN_YOUR_GROUP'	=>	'shared video [video] in your group [group]',
'SHARED_VIDEO_IN_GROUP'	=>	'shared video [video] in group [group]',
'SHARED_A_VIDEO_7b8dc7'	=>	'shared a video',
'SHARED_A_VIDEO_IN_YOUR_GROUP'	=>	'shared a video in your group [group]',
'SHARED_A_VIDEO_IN_GROUP'	=>	'shared a video in group [group]',
// 6 language strings from file cbgroupjivevideo/templates/default/video_edit.php
'EDIT_VIDEO_5b2cbf'	=>	'Edit Video',
'NEW_VIDEO_458670'	=>	'New Video',
'VIDEO_34e2d1'	=>	'Video',
'CAPTION_272ba7'	=>	'Caption',
'UPDATE_VIDEO_3e00c1'	=>	'Update Video',
'PUBLISH_VIDEO_dc049f'	=>	'Publish Video',
// 9 language strings from file cbgroupjivevideo/templates/default/videos.php
'GROUP_VIDEOS_COUNT'	=>	'%%COUNT%% Video|%%COUNT%% Videos',
'LINK_NEW_VIDEO_b3badf'	=>	'Link New Video',
'APPROVE_6f7351'	=>	'Одобрить',
'ARE_YOU_SURE_YOU_WANT_TO_UNPUBLISH_THIS_VIDEO_b49259'	=>	'Are you sure you want to unpublish this Video?',
'ARE_YOU_SURE_YOU_WANT_TO_DELETE_THIS_VIDEO_406194'	=>	'Are you sure you want to delete this Video?',
'AWAITING_APPROVAL_af6558'	=>	'Ожидает рассмотрения',
'SEE_MORE_1f7e18'	=>	'Смотреть больше',
'NO_GROUP_VIDEO_SEARCH_RESULTS_FOUND_53386f'	=>	'No group video search results found.',
'THIS_GROUP_CURRENTLY_HAS_NO_VIDEOS_8547fe'	=>	'This group currently has no videos.',
);
