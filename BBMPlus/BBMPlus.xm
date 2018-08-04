#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>
#import <Accounts/Accounts.h>
#import <Social/Social.h>
#import <AVFoundation/AVFoundation.h>
#import <Photos/Photos.h>
#import <Twitter/Twitter.h>
#import "BBMPlusPrefs.h"
#import "FRPrefs.h"
#import "SCLAlertView.h"
#import "ConfirmCall.h"
#import "HideS.h"
#import "ADs.h"
#import "RKDropdownAlert.h"
#import "Save.h"
#import "HIdeButtons.h"
#import "ProgressHUD.h"
#import "FLEXManager.h"

%config(generator=internal)

#define BlueColor [UIColor colorWithRed:56/255.0f green:146/255.0f blue:206/255.0f alpha:1.0f]

@interface MeGenericTableViewCell : UITableViewCell
@end

@interface MeViewController : UIViewController
@end

@interface MeViewController (BBMPlus)
@end

//Headers
@interface BBMMessage : UIViewController
@end

//variables
BBMMessage *BBMChatViewClass;


%hook MeViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 1)
    {return 2;}
    else {
        return %orig;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 1) {
        
        MeGenericTableViewCell *cell = [[%c(MeGenericTableViewCell) alloc] init];
        
        if (indexPath.row == 0){
            return %orig;
        }
        else {
            cell.textLabel.font = [UIFont boldSystemFontOfSize:14.0];
            cell.textLabel.text = @"BBMPlus";
            [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
            
        }
        
        return cell;
    }
    
    else {
        return %orig;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([indexPath section]==1 && [indexPath row]==1) {
        
        FRPSection *section1 = [FRPSection sectionWithTitle:@"BBMPlus settings" footer:nil];
        
        
        // unlimited ping settings //
        FRPLinkCell *chatcset = [FRPLinkCell cellWithTitle:@"Chat Settings" selectedBlock:^(UITableViewCell *sender) {
            FRPSection *PingSection = [FRPSection sectionWithTitle:nil footer:@"Send Unlimited Pings!!!"];
            FRPSwitchCell *switchPing = [FRPSwitchCell cellWithTitle:@"Unlimited Pings" setting:[FRPSettings settingsWithKey:@"UnlimitedPings" defaultValue:@NO] postNotification:nil changeBlock:nil];
            [PingSection addCell:switchPing];
            [switchPing.switchView setOnTintColor:BlueColor];
            
            
            
            // hide read mark //
            FRPSection *HideReadStatus = [FRPSection sectionWithTitle:nil footer:@"hide Raed Status on chat"];
            [HideReadStatus addCell:[FRPSwitchCell cellWithTitle:@"Hide Read Status" setting:[FRPSettings settingsWithKey:@"ReadStatus" defaultValue:@NO] postNotification:nil changeBlock:^(UISwitch *sender) {
                if ([sender isOn]) {
                    SCLAlertView *SCalert = [[SCLAlertView alloc] initWithNewWindow];
                    SCalert.customViewColor = [UIColor colorWithRed:42/255.0f green:138/255.0f blue:227/255.0f alpha:1.0f];
                    [SCalert showSuccess:@"BBMPlus" subTitle:@"You need Relaunch BBM to apply changes" closeButtonTitle:@"OK" duration:0.0f];
                    
                    
                } else {
                    SCLAlertView *SCalert = [[SCLAlertView alloc] initWithNewWindow];
                    SCalert.customViewColor = [UIColor colorWithRed:42/255.0f green:138/255.0f blue:227/255.0f alpha:1.0f];
                    [SCalert showSuccess:@"BBMPlus" subTitle:@"You need Relaunch BBM to apply changes" closeButtonTitle:@"OK" duration:0.0f];
                    
                }
            }]];
            
            
            
            // hide typing //
            FRPSection *HideTyping = [FRPSection sectionWithTitle:nil footer:@"hide typing on chat"];
            [HideTyping addCell:[FRPSwitchCell cellWithTitle:@"Hide Typing" setting:[FRPSettings settingsWithKey:@"HideTyping" defaultValue:@NO] postNotification:nil changeBlock:^(UISwitch *sender) {
                if ([sender isOn]) {
                    SCLAlertView *SCalert = [[SCLAlertView alloc] initWithNewWindow];
                    SCalert.customViewColor = [UIColor colorWithRed:42/255.0f green:138/255.0f blue:227/255.0f alpha:1.0f];
                    [SCalert showSuccess:@"BBMPlus" subTitle:@"You need Relaunch BBM to apply changes" closeButtonTitle:@"OK" duration:0.0f];
                    
                } else {
                    SCLAlertView *SCalert = [[SCLAlertView alloc] initWithNewWindow];
                    SCalert.customViewColor = [UIColor colorWithRed:42/255.0f green:138/255.0f blue:227/255.0f alpha:1.0f];
                    [SCalert showSuccess:@"BBMPlus" subTitle:@"You need Relaunch BBM to apply changes" closeButtonTitle:@"OK" duration:0.0f];
                }
            }]];
            
            
            // time messages forever //
            FRPSection *TimedMessagesForever = [FRPSection sectionWithTitle:nil footer:@"Keep timed messaging forever"];
            [TimedMessagesForever addCell:[FRPSwitchCell cellWithTitle:@"Timed Messages Forever" setting:[FRPSettings settingsWithKey:@"TIMEFO" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            FRPSection *hideScreenShot = [FRPSection sectionWithTitle:nil footer:@"Hide screen shot notified other party"];
            [hideScreenShot addCell:[FRPSwitchCell cellWithTitle:@"Hide Screen Shot" setting:[FRPSettings settingsWithKey:@"HideScreenShot" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            FRPreferences *subTable = [FRPreferences tableWithSections:@[PingSection,HideReadStatus,HideTyping,TimedMessagesForever,hideScreenShot] title:@"BBMPlus" tintColor:BlueColor];
            [self.navigationController pushViewController:subTable animated:YES];
        }];
        ///////////////////////////////////////////////////////////////////////////////////////////////
        
        
        // user interface //
        FRPLinkCell *interfaceUser = [FRPLinkCell cellWithTitle:@"User Interface Settings" selectedBlock:^(UITableViewCell *sender) {
            FRPSection *ConfirmCallSection = [FRPSection sectionWithTitle:nil footer:@"Alert to confirm voice and video calling!"];
            [ConfirmCallSection addCell:[FRPSwitchCell cellWithTitle:@"Confirm voice Call and Video Call" setting:[FRPSettings settingsWithKey:@"ConfirmCall" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            FRPSection *HidestatusBar = [FRPSection sectionWithTitle:nil footer:nil];
            [HidestatusBar addCell:[FRPSwitchCell cellWithTitle:@"hide Status Bar" setting:[FRPSettings settingsWithKey:@"HideStatus" defaultValue:@NO] postNotification:nil changeBlock:^(UISwitch *sender) {
                if ([sender isOn]) {
                    SCLAlertView *SCalert = [[SCLAlertView alloc] initWithNewWindow];
                    SCalert.customViewColor = [UIColor colorWithRed:42/255.0f green:138/255.0f blue:227/255.0f alpha:1.0f];
                    [SCalert showSuccess:@"BBMPlus" subTitle:@"You need Relaunch BBM to apply changes" closeButtonTitle:@"OK" duration:0.0f];
                    
                } else {
                    SCLAlertView *SCalert = [[SCLAlertView alloc] initWithNewWindow];
                    SCalert.customViewColor = [UIColor colorWithRed:42/255.0f green:138/255.0f blue:227/255.0f alpha:1.0f];
                    [SCalert showSuccess:@"BBMPlus" subTitle:@"You need Relaunch BBM to apply changes" closeButtonTitle:@"OK" duration:0.0f];
                }
            }]];
            
            
            // disable ADS //
            FRPSection *DisableADS = [FRPSection sectionWithTitle:nil footer:nil];
            [DisableADS addCell:[FRPSwitchCell cellWithTitle:@"Disable Ads" setting:[FRPSettings settingsWithKey:@"Ads" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            FRPSection *FullScreen = [FRPSection sectionWithTitle:nil footer:nil];
            [FullScreen addCell:[FRPSwitchCell cellWithTitle:@"Full Screen For iPAD" setting:[FRPSettings settingsWithKey:@"Full" defaultValue:@NO] postNotification:nil changeBlock:^(UISwitch *sender) {
                if ([sender isOn]) {
                    SCLAlertView *SCalert = [[SCLAlertView alloc] initWithNewWindow];
                    SCalert.customViewColor = [UIColor colorWithRed:42/255.0f green:138/255.0f blue:227/255.0f alpha:1.0f];
                    [SCalert showSuccess:@"BBMPlus" subTitle:@"You need Relaunch BBM to apply changes" closeButtonTitle:@"OK" duration:0.0f];
                    
                } else {
                    SCLAlertView *SCalert = [[SCLAlertView alloc] initWithNewWindow];
                    SCalert.customViewColor = [UIColor colorWithRed:42/255.0f green:138/255.0f blue:227/255.0f alpha:1.0f];
                    [SCalert showSuccess:@"BBMPlus" subTitle:@"You need Relaunch BBM to apply changes" closeButtonTitle:@"OK" duration:0.0f];
                }
            }]];
            
            
            // hide voice & video call button //
            FRPSection *HideVoiceButton = [FRPSection sectionWithTitle:nil footer:@"Hide Voice call button inside Chats"];
            [HideVoiceButton addCell:[FRPSwitchCell cellWithTitle:@"Hide Voice call Button" setting:[FRPSettings settingsWithKey:@"VoiceBT" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            FRPSection *HideVideoButton = [FRPSection sectionWithTitle:nil footer:@"Hide video call button inside chat"];
            [HideVideoButton addCell:[FRPSwitchCell cellWithTitle:@"Hide Video call Button" setting:[FRPSettings settingsWithKey:@"VideoBT" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            FRPreferences *userTable = [FRPreferences tableWithSections:@[ConfirmCallSection,HidestatusBar,DisableADS,FullScreen,HideVoiceButton,HideVideoButton] title:@"BBMPlus" tintColor:BlueColor];
            [self.navigationController pushViewController:userTable animated:YES];
        }];
        

        
        // keyborad colors
        FRPLinkCell *colorskey = [FRPLinkCell cellWithTitle:SSCLocalized(@"Keyboard Colors") selectedBlock:^(UITableViewCell *sender) {
            
            // red section
            FRPSection *RedSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [RedSectionColor addCell:[FRPSwitchCell cellWithTitle:@"Red" setting: [FRPSettings settingsWithKey:@"redColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            
            // blue section
            FRPSection *BlueSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [BlueSectionColor addCell:[FRPSwitchCell cellWithTitle:@"blue" setting: [FRPSettings settingsWithKey:@"blueColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            // Gray section
            FRPSection *GraySectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [GraySectionColor addCell:[FRPSwitchCell cellWithTitle:@"Gray" setting: [FRPSettings settingsWithKey:@"grayColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            // Pink section
            FRPSection *PinkSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [PinkSectionColor addCell:[FRPSwitchCell cellWithTitle:@"Pink" setting: [FRPSettings settingsWithKey:@"pinkColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            // Green section
            FRPSection *GreenSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [GreenSectionColor addCell:[FRPSwitchCell cellWithTitle:@"Green" setting: [FRPSettings settingsWithKey:@"greenColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            // Black section
            FRPSection *BlackSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [BlackSectionColor addCell:[FRPSwitchCell cellWithTitle:@"Black" setting: [FRPSettings settingsWithKey:@"blackColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            
            //Brown section
            FRPSection *BrownSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [BrownSectionColor addCell:[FRPSwitchCell cellWithTitle:@"Brown" setting: [FRPSettings settingsWithKey:@"brownColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            
            
            FRPreferences *keyboTable = [FRPreferences tableWithSections:@[RedSectionColor,BlueSectionColor,GraySectionColor,PinkSectionColor,GreenSectionColor,BlackSectionColor,BrownSectionColor] title:@"Keyboard Colors" tintColor:BlueColor];
            [self.navigationController pushViewController:keyboTable animated:YES];
            
            
            }];
        
        FRPSwitchCell *felxswitch = [FRPSwitchCell cellWithTitle:@"FLEXible" setting: [FRPSettings settingsWithKey:@"flex" defaultValue:@NO] postNotification:nil changeBlock:nil];
            
        
        
        
        chatcset.imageView.image = [UIImage imageNamed:@"/Library/Application Support/BBMPlus/BBMPlus.bundle/chatSettings.png"];
        interfaceUser.imageView.image = [UIImage imageNamed:@"/Library/Application Support/BBMPlus/BBMPlus.bundle/UserinterFace.png"];
        [section1 addCell:chatcset];
        [section1 addCell:interfaceUser];
        [section1 addCell:colorskey];
        [section1 addCell:felxswitch];
        
        
        //////////////////////////////////////////////////////////////////////////////////////////////////
        // Developer //
        FRPSection *section3 = [FRPSection sectionWithTitle:@"Developer" footer:nil];
        
        
        FRPDeveloperCell *dev = [FRPDeveloperCell cellWithTitle:@"BandarHelal" detail:@"@BandarHL" image:[UIImage imageNamed:@"/Library/Application Support/BBMPlus/BBMPlus.bundle/logo.png"] url:@"https://www.twitter.com/BandarHL"];
        [section3 addCell:dev];
        FRPDeveloperCell *paypal = [FRPDeveloperCell cellWithTitle:@"Donate via paypal" detail:@"PayPal" image:[UIImage imageNamed:@"/Library/Application Support/BBMPlus/BBMPlus.bundle/PrefsDonate.png"] url:@"https://www.paypal.me/fjr699"];
        [section3 addCell:paypal];
        [section3 addCell:[FRPValueCell cellWithTitle:@"Version" detail:@"2.1"]];
        
        
        // table view //
        FRPreferences *table = [FRPreferences tableWithSections:@[section1,section3] title:@"BBMPlus" tintColor:BlueColor];
        
        UIBarButtonItem *heart = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"/Library/Application Support/BBMPlus/BBMPlus.bundle/H.png"] style:UIBarButtonItemStylePlain target:self action:@selector(shareTapped:)];
        table.navigationItem.rightBarButtonItem = heart;
        
        [self.navigationController pushViewController:table animated:YES];
        
            
        

    } else {
        return %orig;
    }
}
%new
- (void)shareTapped:(id)sender {
    TWTweetComposeViewController *tw = [[TWTweetComposeViewController alloc] init];
    [tw setInitialText:@"I'm using #BBMPlus By @BandarHL"];
    
    [self presentViewController:tw animated:YES completion:nil];
}
%end



%hook BBMAppDelegate

- (void)applicationDidBecomeActive:(id)arg1 {
    %orig;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"flex"]) {
    [[FLEXManager sharedManager] showExplorer];
    } else {
        return %orig;
    }
}
- (bool)application:(id)arg1 didFinishLaunchingWithOptions:(id)arg2 {
    %orig;
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"flex"]) {
    [[FLEXManager sharedManager] showExplorer];
    } else {
        return %orig;
    }
    
    return YES;
}
%end



// Change EmojiKeboard color
%hook _UIBackdropViewSettingsLightEmojiKeyboard

- (id)_defaultColorTintColorWithOpacity:(double)arg1 {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
    if ([defaults boolForKey:@"redColor"]) {
        
        return [UIColor colorWithRed:233/255.0f green:63/255.0f blue:51/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"blueColor"]) {
        
        return [UIColor colorWithRed:42/255.0f green:138/255.0f blue:227/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"grayColor"]) {
        
        return [UIColor colorWithRed:142/255.0f green:142/255.0f blue:147/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"pinkColor"]) {
        
        return [UIColor colorWithRed:244/255.0f green:191/255.0f blue:202/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"greenColor"]) {
        
        return [UIColor colorWithRed:0/255.0f green:249/255.0f blue:0/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"blackColor"]) {
        
        return [UIColor colorWithRed:0/255.0f green:0/255.0f blue:0/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"brownColor"]) {
        
        return [UIColor colorWithRed:170/255.0f green:121/255.0f blue:66/255.0f alpha:1.0f];
        
    } else {
        return %orig;
    }
}

%end

// change keboard color
%hook _UIBackdropViewSettingsLightKeyboard

- (id)_defaultColorTintColorWithOpacity:(double)arg1 {
    
    
    // Colors
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
    if ([defaults boolForKey:@"redColor"]) {
        
        return [UIColor colorWithRed:233/255.0f green:63/255.0f blue:51/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"blueColor"]) {
        
        return [UIColor colorWithRed:42/255.0f green:138/255.0f blue:227/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"grayColor"]) {
        
        return [UIColor colorWithRed:142/255.0f green:142/255.0f blue:147/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"pinkColor"]) {
        
        return [UIColor colorWithRed:244/255.0f green:191/255.0f blue:202/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"greenColor"]) {
        
        return [UIColor colorWithRed:0/255.0f green:249/255.0f blue:0/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"blackColor"]) {
        
        return [UIColor colorWithRed:0/255.0f green:0/255.0f blue:0/255.0f alpha:1.0f];
        
    } else if ([defaults boolForKey:@"brownColor"]) {
        
        return [UIColor colorWithRed:170/255.0f green:121/255.0f blue:66/255.0f alpha:1.0f];
        
    } else {
        return %orig;
    }
}
%end



// hide Call Video Button //
%hook BBMCustomTitleView
// Video
- (UIButton *)btnLeft {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"VideoBT"]) {
        UIButton *btnLeft = %orig;
        btnLeft.hidden = YES;
        return btnLeft;
    } else {
        return %orig;
    }
}
- (bool)isLeftButtonVisible {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"VideoBT"]) {
        return false;
    } else {
        return %orig;
    }
}
// Voice
- (UIButton *)btnMiddle {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"VoiceBT"]) {
        UIButton *btnMiddle = %orig;
        btnMiddle.hidden = YES;
        return btnMiddle;
    } else {
        return %orig;
    }
}

- (bool)isMiddleButtonVisible {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"VoiceBT"]) {
        return false;
    } else {
        return %orig;
    }
}
%end



// Save and upload Full Photo (; //
%hook BBMPictureOverlayView

- (void)displayImage {
    %orig;
    
    UIButton *SaveFeed = [UIButton buttonWithType:UIButtonTypeCustom];
    SaveFeed.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 110, [UIScreen mainScreen].bounds.size.height - 90, 120, 40);
    [SaveFeed setImage:[UIImage imageNamed:@"/Library/Application Support/BBMPlus/BBMPlus.bundle/Save_Button.png"] forState:UIControlStateNormal];
    [SaveFeed setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [SaveFeed addTarget:self action:@selector(save) forControlEvents:UIControlEventTouchDown];
    [self addSubview:SaveFeed];
    [self setUserInteractionEnabled:YES];
    
}

%new
- (void)save {
    
    [ProgressHUD showSuccess:@"Done"];
    
    
    UIImage *Feed = self.imageView.image;
    
    [[PHPhotoLibrary sharedPhotoLibrary] performChanges:^{
        PHAssetChangeRequest *changeRequest = [PHAssetChangeRequest creationRequestForAssetFromImage:Feed];
        changeRequest.creationDate          = [NSDate date];
    } completionHandler:^(BOOL success, NSError *error) {
        if (success) {
            NSLog(@"successfully saved");
        }
        else {
            NSLog(@"error saving to photos: %@", error);
        }
    }];
}
%new
- (BOOL)dropdownAlertWasTapped:(RKDropdownAlert*)alert {
    return true;
}
%new

- (void)thisImage:(UIImage *)image
hasBeenSavedInPhotoAlbumWithError:(NSError *)error
usingContextInfo:(void *)ctxInfo {
    
}
%end

%hook BBMChannelPostImagePicker
- (_Bool)_allowsEditingIsDefault {
    return NO;
}
%end

%hook BBMChannelPostImagePicker
- (_Bool)allowsEditingIsDefault {
    return NO;
}
%end


// hide StatusBar //
%hook UIStatusBar
- (void)layoutSubviews {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideStatus"]) {
        self.hidden = YES;
    } else {
        return %orig;
    }
    
}
%end

%hook UIStatusBarForegroundView
- (void)layoutSubviews {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideStatus"]) {
        self.hidden = YES;
    } else {
        return %orig;
    }
    
}
%end


// ConfirmCall //


%hook BBMConversationViewController

- (void)placeCall:(long long)arg1 {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ConfirmCall"]) {
        
        UIAlertController *alertController = [UIAlertController
                                              alertControllerWithTitle:@"BBMPlus"
                                              message:@"Are you sure you want to Call ?"
                                              preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction
                                   actionWithTitle:@"YES"
                                   style:UIAlertActionStyleDefault
                                   handler:^(UIAlertAction *action)
                                   {
                                       %orig;
                                       
                                   }];
        
        UIAlertAction *cancelAction = [UIAlertAction
                                       actionWithTitle:@"NO"
                                       style:UIAlertActionStyleDefault
                                       handler:^(UIAlertAction *action)
                                       {
                                           
                                       }];
        
        [alertController addAction:cancelAction];
        [alertController addAction:okAction];
        
        [self presentViewController:alertController animated:YES completion:nil];
        
    } else {
        return %orig;
    }
}

%end

// Disable Ads //

%hook BBMAdConversationsCell
- (void)layoutSubviews {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        self.hidden = YES;
    } else {
        return %orig;
    }
    
}
%end

%hook BBMCoreAccess
- (id)getAllAds {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NULL;
    } else {
        return %orig;
    }
}
- (id)adsEnabled {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NULL;
    } else {
        return %orig;
    }
}
- (id)getSponsoredInvites {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NULL;
    } else {
        return %orig;
    }
}
%end

%hook BBMADSAd
- (_Bool)invitationIsAd {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return %orig;
    }
}

- (_Bool)pendingRender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return %orig;
    }
}

- (_Bool)cachedAd {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return %orig;
    }
}

- (BOOL)isInvite {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return %orig;
    }
}

- (BOOL)isExpired {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return YES;
    } else {
        return %orig;
    }
}

- (BOOL)invitationIsIncoming {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return %orig;
    }
}

- (_Bool)isVideoAd {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return %orig;
        
    }}

- (_Bool)isHtmlAd {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return %orig;
    }}

- (_Bool)isChannelAd {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return %orig;
        
    }}

- (_Bool)isDisplayAd {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return %orig;
        
    }}

%end

%hook BBMRichUpdatesViewController
- (BOOL)allowScrollingAdInsertion {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return %orig;
    }
}
%end

// Full Screen For iPAD //
%hook UIApplication
// Sorry i can't add this code, because the code for fahad ):
%end


// Unlimited Pings //

%hook BBMPingLimitHelper
- (BOOL)isLimitReached {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"UnlimitedPings"]) {
        return NO;
    } else {
        return %orig;
    }
}
%end

// No JailBroken //
%hook GADDevice
- (_Bool)OSIsSupported {
    return YES;
}
- (bool)isJailbroken {
    return NO;
}
%end

%hook PPRiskDeviceData
+ (_Bool)isJailBroken {
    return NO;
}
%end

// hide screen Shot //
%hook BBMGenEphemeralMetaData
- (_Bool)_screenshot {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideScreenShot"]) {
        return NO;
    } else {
        return %orig;
    }
}
- (_Bool)_viewed {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideScreenShot"]) {
        return NO;
    } else {
        return %orig;
    }
}
%end


// Hide Read Status //
%hook BBMMessage
- (_Bool)canBeMarkedRead {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ReadStatus"]) {
        return NO;
    } else {
        return %orig;
    }
}
%end

%hook BBMMessageCell
+ (_Bool)automaticallyNotifiesObserversOfMessage {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ReadStatus"]) {
        return NO;
    } else {
        return %orig;
    }
}
%end

// Hide Typing  //
%hook BBMCoreAccess
- (_Bool)revalidateStickers {
    return YES;
}
- (_Bool)shouldAllowUserToRevalidateStickers {
    return YES;
}
- (void)markEphemeralMessageAsViewed:(id)arg1 {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideTyping"]) {
        arg1 = NO;
    } else {
        return %orig;
    }
}
- (void)markEphemeralMessage:(id)arg1 asHidden:(_Bool)arg2 {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideTyping"]) {
        arg2 = NO;
    } else {
        return %orig;
    }
    
}
- (void)markMessagesRead:(id)arg1 withConversationURI:(id)arg2 {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideTyping"]) {
        arg1 = NO;
        arg2 = NO;
    } else {
        return %orig;
    }
}
- (void)sendTypingNotificationForConversationURI:(id)arg1 isTyping:(_Bool)arg2 {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideTyping"]) {
        arg1 = NO;
        arg2 = NO;
    } else {
        return %orig;
    }
}
%end

// Timed Message ForEver //

%hook BBMEphemeralMetaData
- (void)expire {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"TIMEFO"]) {
        return;
    } else {
        return %orig;
    }
}
- (_Bool)messageTimerIsActive {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"TIMEFO"]) {
        return NO;
    } else {
        return %orig;
    }
}
- (float)remainingTime {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"TIMEFO"]) {
        return 10000000;
    } else {
        return %orig;
    }
}
- (double)_remainingTime {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"TIMEFO"]) {
        return 999999999;
    } else {
        return %orig;
    }
}

%end






