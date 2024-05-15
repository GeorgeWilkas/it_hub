<?php
/**
* Community Builder (TM)
* @version $Id: $
* @package CommunityBuilder
* @copyright (C) 2004-2023 www.joomlapolis.com / Lightning MultiCom SA - and its licensors, all rights reserved
* @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU/GPL version 2
*/

use CBLib\Application\Application;
use Joomla\CMS\HTML\HTMLHelper;

if ( ! ( defined( '_VALID_CB' ) || defined( '_JEXEC' ) || defined( '_VALID_MOS' ) ) ) { die( 'Direct Access to this location is not allowed.' ); }

HTMLHelper::_( 'behavior.keepalive' );

?>
<?php echo modCBLoginHelper::getPlugins( $params, $type, 'beforeForm', 'span', 1 ); ?>
<form action="<?php echo $_CB_framework->viewUrl( 'login', true, null, 'html', $secureForm ); ?>" method="post" id="login-form" class="form-inline cbLoginForm">
	<input type="hidden" name="option" value="com_comprofiler" />
	<input type="hidden" name="view" value="login" />
	<input type="hidden" name="op2" value="login" />
	<input type="hidden" name="return" value="B:<?php echo $loginReturnUrl; ?>" />
	<input type="hidden" name="message" value="<?php echo (int) $params->get( 'login_message', 0 ); ?>" />
	<input type="hidden" name="loginfrom" value="<?php echo htmlspecialchars( ( defined( '_UE_LOGIN_FROM' ) ? _UE_LOGIN_FROM : 'loginmodule' ) ); ?>" />
	<?php echo Application::Session()->getFormTokenInput(); ?>
	<?php echo modCBLoginHelper::getPlugins( $params, $type, 'start', 'span', 1 ); ?>
	<?php if ( $preLogintText ) { ?>
		<span class="pretext <?php echo htmlspecialchars( $templateClass ); ?>"><?php echo $preLogintText; ?></span>
	<?php } ?>
	<?php echo modCBLoginHelper::getPlugins( $params, $type, 'almostStart', 'span', 1 ); ?>
	<?php if ( $loginMethod != 4 ) { ?>
		<span class="userdata">
			<span id="form-login-username">
				<?php if ( in_array( $showUsernameLabel, array( 1, 2, 3, 5 ) ) ) { ?>
					<?php if ( in_array( $showUsernameLabel, array( 2, 3, 5 ) ) ) { ?>
						<?php if ( $showUsernameLabel == 3 ) { ?>
							<label for="modlgn-username"><?php echo htmlspecialchars( $userNameText ); ?></label>
						<?php } ?>
						<div class="input-prepend">
							<span class="add-on">
								<span class="icon-user hasTooltip cbModuleUsernameIcon" title="<?php echo htmlspecialchars( $userNameText ); ?>"></span>
							</span>
							<input id="modlgn-username" type="text" name="username" class="<?php echo ( $styleUsername ? htmlspecialchars( $styleUsername ) : 'input-small' ); ?>"  size="<?php echo $usernameInputLength; ?>"<?php echo ( in_array( $showUsernameLabel, array( 4, 5 ) ) ? ' placeholder="' . htmlspecialchars( $userNameText ) . '"' : null ); ?> />
						</div>
					<?php } else { ?>
						<label for="modlgn-username">
							<?php if ( in_array( $showUsernameLabel, array( 1, 3 ) ) ) { ?>
								<?php echo htmlspecialchars( $userNameText ); ?>
							<?php } ?>
						</label>
						<input id="modlgn-username" type="text" name="username" class="<?php echo ( $styleUsername ? htmlspecialchars( $styleUsername ) : 'input-medium' ); ?>"  size="<?php echo $usernameInputLength; ?>"<?php echo ( in_array( $showUsernameLabel, array( 4, 5 ) ) ? ' placeholder="' . htmlspecialchars( $userNameText ) . '"' : null ); ?> />
					<?php } ?>
				<?php } else { ?>
					<input id="modlgn-username" type="text" name="username" class="<?php echo ( $styleUsername ? htmlspecialchars( $styleUsername ) : 'input-medium' ); ?>"  size="<?php echo $usernameInputLength; ?>"<?php echo ( in_array( $showUsernameLabel, array( 4, 5 ) ) ? ' placeholder="' . htmlspecialchars( $userNameText ) . '"' : null ); ?> />
				<?php } ?>
			</span>
			&nbsp;
			<span id="form-login-password">
				<?php if ( in_array( $showPasswordLabel, array( 1, 2, 3, 5 ) ) ) { ?>
					<?php if ( in_array( $showPasswordLabel, array( 2, 3, 5 ) ) ) { ?>
						<?php if ( $showPasswordLabel == 3 ) { ?>
							<label for="modlgn-passwd"><?php echo htmlspecialchars( CBTxt::T( 'Password' ) ); ?></label>
						<?php } ?>
						<div class="input-prepend">
							<span class="add-on">
								<span class="icon-lock hasTooltip cbModulePasswordIcon" title="<?php echo htmlspecialchars( CBTxt::T( 'Password' ) ); ?>"></span>
							</span>
							<input id="modlgn-passwd" type="password" name="passwd" class="<?php echo ( $stylePassword ? htmlspecialchars( $stylePassword ) : 'input-small' ); ?>" size="<?php echo $passwordInputLength; ?>"<?php echo ( in_array( $showPasswordLabel, array( 4, 5 ) ) ? ' placeholder="' . htmlspecialchars( CBTxt::T( 'Password' ) ) . '"' : null ); ?>  />
						</div>
					<?php } else { ?>
						<label for="modlgn-passwd">
							<?php if ( in_array( $showPasswordLabel, array( 1, 3 ) ) ) { ?>
								<?php echo htmlspecialchars( CBTxt::T( 'Password' ) ); ?>
							<?php } ?>
						</label>
						<input id="modlgn-passwd" type="password" name="passwd" class="<?php echo ( $stylePassword ? htmlspecialchars( $stylePassword ) : 'input-medium' ); ?>" size="<?php echo $passwordInputLength; ?>"<?php echo ( in_array( $showPasswordLabel, array( 4, 5 ) ) ? ' placeholder="' . htmlspecialchars( CBTxt::T( 'Password' ) ) . '"' : null ); ?>  />
					<?php } ?>
				<?php } else { ?>
					<input id="modlgn-passwd" type="password" name="passwd" class="<?php echo ( $stylePassword ? htmlspecialchars( $stylePassword ) : 'input-medium' ); ?>" size="<?php echo $passwordInputLength; ?>"<?php echo ( in_array( $showPasswordLabel, array( 4, 5 ) ) ? ' placeholder="' . htmlspecialchars( CBTxt::T( 'Password' ) ) . '"' : null ); ?>  />
				<?php } ?>
			</span>
			&nbsp;
			<?php if ( count( $twoFactorMethods ) > 1 ) { ?>
				<span id="form-login-secretkey">
					<?php if ( in_array( $showSecretKeyLabel, array( 1, 2, 3, 5 ) ) ) { ?>
						<?php if ( in_array( $showSecretKeyLabel, array( 2, 3, 5 ) ) ) { ?>
							<?php if ( $showSecretKeyLabel == 3 ) { ?>
								<label for="modlgn-secretkey"><?php echo htmlspecialchars( CBTxt::T( 'Secret Key' ) ); ?></label>
							<?php } ?>
							<div class="input-prepend input-append">
								<span class="add-on">
									<span class="icon-star hasTooltip cbModuleSecretKeyIcon" title="<?php echo htmlspecialchars( CBTxt::T( 'Secret Key' ) ); ?>"></span>
								</span>
								<input id="modlgn-secretkey" autocomplete="one-time-code" type="text" name="secretkey" tabindex="0" class="<?php echo ( $styleSecretKey ? htmlspecialchars( $styleSecretKey ) : 'input-small' ); ?>" size="<?php echo $secretKeyInputLength; ?>"<?php echo ( in_array( $showSecretKeyLabel, array( 4, 5 ) ) ? ' placeholder="' . htmlspecialchars( CBTxt::T( 'Secret Key' ) ) . '"' : null ); ?>  />
								<span class="btn width-auto hasTooltip" title="<?php echo htmlspecialchars( CBTxt::T( 'If you have enabled two factor authentication in your user account please enter your secret key. If you do not know what this means, you can leave this field blank.' ) ); ?>">
									<span class="icon-help"></span>
								</span>
							</div>
						<?php } else { ?>
							<label for="modlgn-secretkey">
								<?php if ( in_array( $showSecretKeyLabel, array( 1, 3 ) ) ) { ?>
									<?php echo htmlspecialchars( CBTxt::T( 'Secret Key' ) ); ?>
								<?php } ?>
							</label>
							<input id="modlgn-secretkey" autocomplete="one-time-code" type="text" name="secretkey" tabindex="0" class="<?php echo ( $styleSecretKey ? htmlspecialchars( $styleSecretKey ) : 'input-medium' ); ?>" size="<?php echo $secretKeyInputLength; ?>"<?php echo ( in_array( $showSecretKeyLabel, array( 4, 5 ) ) ? ' placeholder="' . htmlspecialchars( CBTxt::T( 'Secret Key' ) ) . '"' : null ); ?>  />
							<span class="btn width-auto hasTooltip" title="<?php echo htmlspecialchars( CBTxt::T( 'If you have enabled two factor authentication in your user account please enter your secret key. If you do not know what this means, you can leave this field blank.' ) ); ?>">
								<span class="icon-help"></span>
							</span>
						<?php } ?>
					<?php } else { ?>
						<input id="modlgn-secretkey" autocomplete="one-time-code" type="text" name="secretkey" tabindex="0" class="<?php echo ( $styleSecretKey ? htmlspecialchars( $styleSecretKey ) : 'input-medium' ); ?>" size="<?php echo $secretKeyInputLength; ?>"<?php echo ( in_array( $showSecretKeyLabel, array( 4, 5 ) ) ? ' placeholder="' . htmlspecialchars( CBTxt::T( 'Secret Key' ) ) . '"' : null ); ?>  />
						<span class="btn width-auto hasTooltip" title="<?php echo htmlspecialchars( CBTxt::T( 'If you have enabled two factor authentication in your user account please enter your secret key. If you do not know what this means, you can leave this field blank.' ) ); ?>">
							<span class="icon-help"></span>
						</span>
					<?php } ?>
				</span>
				&nbsp;
			<?php } ?>
			<?php if ( in_array( $showRememberMe, array( 1, 3 ) ) ) { ?>
				<span id="form-login-remember">
					<input id="modlgn-remember" type="checkbox" name="remember" class="inputbox" value="yes"<?php echo ( $showRememberMe == 3 ? ' checked="checked"' : null ); ?> />
					<label for="modlgn-remember"><?php echo htmlspecialchars( CBTxt::T( 'Remember Me' ) ); ?></label>
				</span>
				&nbsp;
			<?php } elseif ( $showRememberMe == 2 ) { ?>
				<input id="modlgn-remember" type="hidden" name="remember" class="inputbox" value="yes" />
			<?php } ?>
			<?php echo modCBLoginHelper::getPlugins( $params, $type, 'beforeButton', 'span', 1, null, '&nbsp;' ); ?>
			<span id="form-login-submit">
				<button type="submit" name="Submit" class="<?php echo ( $styleLogin ? htmlspecialchars( $styleLogin ) : 'btn btn-primary login-button' ); ?>"<?php echo $buttonStyle; ?>>
					<?php if ( in_array( $showButton, array( 1, 2, 3 ) ) ) { ?>
						<span class="<?php echo htmlspecialchars( $templateClass ); ?>">
							<span class="cbModuleLoginIcon fa fa-sign-in" title="<?php echo htmlspecialchars( CBTxt::T( 'Log in' ) ); ?>"></span>
						</span>
					<?php } ?>
					<?php if ( in_array( $showButton, array( 0, 1, 4 ) ) ) { ?>
						<?php echo htmlspecialchars( CBTxt::T( 'Log in' ) ); ?>
					<?php } ?>
				</button>
			</span>
			&nbsp;
			<?php echo modCBLoginHelper::getPlugins( $params, $type, 'afterButton', 'span', 1, null, '&nbsp;' ); ?>
		</span>
	<?php } else { ?>
		<?php echo modCBLoginHelper::getPlugins( $params, $type, 'beforeButton', 'span', 1, null, '&nbsp;' ); ?>
		<?php echo modCBLoginHelper::getPlugins( $params, $type, 'afterButton', 'span', 1, null, '&nbsp;' ); ?>
	<?php } ?>
	<?php if ( $showForgotLogin || $showRegister ) { ?>
		<span id="form-login-links">
			<?php if ( $showForgotLogin ) { ?>
				<span id="form-login-forgot">
					<a href="<?php echo $_CB_framework->viewUrl( 'lostpassword', true, null, 'html', $secureForm ); ?>"<?php echo ( $styleForgotLogin ? ' class="' . htmlspecialchars( $styleForgotLogin ) . '"' : null ); ?>>
						<?php if ( in_array( $showForgotLogin, array( 2, 3 ) ) ) { ?>
							<span class="<?php echo htmlspecialchars( $templateClass ); ?>">
								<span class="cbModuleForgotLoginIcon fa fa-unlock-alt" title="<?php echo htmlspecialchars( CBTxt::T( 'Forgot Login?' ) ); ?>"></span>
							</span>
						<?php } ?>
						<?php if ( in_array( $showForgotLogin, array( 1, 3 ) ) ) { ?>
							<?php echo CBTxt::T( 'Forgot Login?' ); ?>
						<?php } ?>
					</a>
				</span>
				&nbsp;
			<?php } ?>
			<?php if ( $showRegister ) { ?>
				<span id="form-login-register">
					<a href="<?php echo $_CB_framework->viewUrl( 'registers', true, null, 'html', $secureForm ); ?>"<?php echo ( $styleRegister ? ' class="' . htmlspecialchars( $styleRegister ) . '"' : null ); ?>>
						<?php if ( in_array( $params->get( 'show_newaccount', 1 ), array( 2, 3 ) ) ) { ?>
							<span class="<?php echo htmlspecialchars( $templateClass ); ?>">
								<span class="cbModuleRegisterIcon fa fa-edit" title="<?php echo htmlspecialchars( CBTxt::T( 'UE_REGISTER', 'Sign up' ) ); ?>"></span>
							</span>
						<?php } ?>
						<?php if ( in_array( $params->get( 'show_newaccount', 1 ), array( 1, 3 ) ) ) { ?>
							<?php echo CBTxt::T( 'UE_REGISTER', 'Sign up' ); ?>
						<?php } ?>
					</a>
				</span>
				&nbsp;
			<?php } ?>
		</span>
	<?php } ?>
	<?php echo modCBLoginHelper::getPlugins( $params, $type, 'almostEnd', 'span', 1 ); ?>
	<?php if ( $postLoginText ) { ?>
		<span class="posttext <?php echo htmlspecialchars( $templateClass ); ?>"><?php echo $postLoginText; ?></span>
	<?php } ?>
	<?php echo modCBLoginHelper::getPlugins( $params, $type, 'end', 'span', 1 ); ?>
</form>
<?php echo modCBLoginHelper::getPlugins( $params, $type, 'afterForm', 'span', 1 ); ?>