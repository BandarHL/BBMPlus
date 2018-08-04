#line 1 "/Users/mac/Desktop/BBMPlus/BBMPlus/BBMPlus.xm"
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



#define BlueColor [UIColor colorWithRed:56/255.0f green:146/255.0f blue:206/255.0f alpha:1.0f]

@interface MeGenericTableViewCell : UITableViewCell
@end

@interface MeViewController : UIViewController
@end

@interface MeViewController (BBMPlus)
@end


@interface BBMMessage : UIViewController
@end


BBMMessage *BBMChatViewClass;



#include <objc/message.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__attribute__((unused)) static void _logos_register_hook$(Class _class, SEL _cmd, IMP _new, IMP *_old) {
unsigned int _count, _i;
Class _searchedClass = _class;
Method *_methods;
while (_searchedClass) {
_methods = class_copyMethodList(_searchedClass, &_count);
for (_i = 0; _i < _count; _i++) {
if (method_getName(_methods[_i]) == _cmd) {
if (_class == _searchedClass) {
*_old = method_getImplementation(_methods[_i]);
*_old = method_setImplementation(_methods[_i], _new);
} else {
class_addMethod(_class, _cmd, _new, method_getTypeEncoding(_methods[_i]));
}
free(_methods);
return;
}
}
free(_methods);
_searchedClass = class_getSuperclass(_searchedClass);
}
}
@class BBMMessage; @class BBMRichUpdatesViewController; @class MeViewController; @class BBMGenEphemeralMetaData; @class BBMChannelPostImagePicker; @class BBMADSAd; @class MeGenericTableViewCell; @class BBMMessageCell; @class BBMCoreAccess; @class BBMAppDelegate; @class _UIBackdropViewSettingsLightEmojiKeyboard; @class PPRiskDeviceData; @class UIApplication; @class BBMAdConversationsCell; @class BBMConversationViewController; @class BBMPictureOverlayView; @class BBMCustomTitleView; @class UIStatusBar; @class GADDevice; @class _UIBackdropViewSettingsLightKeyboard; @class UIStatusBarForegroundView; @class BBMPingLimitHelper; @class BBMEphemeralMetaData; 
static Class _logos_superclass$_ungrouped$MeViewController; static NSInteger (*_logos_orig$_ungrouped$MeViewController$tableView$numberOfRowsInSection$)(_LOGOS_SELF_TYPE_NORMAL MeViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSInteger);static UITableViewCell * (*_logos_orig$_ungrouped$MeViewController$tableView$cellForRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MeViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *);static void (*_logos_orig$_ungrouped$MeViewController$tableView$didSelectRowAtIndexPath$)(_LOGOS_SELF_TYPE_NORMAL MeViewController* _LOGOS_SELF_CONST, SEL, UITableView *, NSIndexPath *);static Class _logos_superclass$_ungrouped$BBMAppDelegate; static void (*_logos_orig$_ungrouped$BBMAppDelegate$applicationDidBecomeActive$)(_LOGOS_SELF_TYPE_NORMAL BBMAppDelegate* _LOGOS_SELF_CONST, SEL, id);static bool (*_logos_orig$_ungrouped$BBMAppDelegate$application$didFinishLaunchingWithOptions$)(_LOGOS_SELF_TYPE_NORMAL BBMAppDelegate* _LOGOS_SELF_CONST, SEL, id, id);static Class _logos_superclass$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard; static id (*_logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$)(_LOGOS_SELF_TYPE_NORMAL _UIBackdropViewSettingsLightEmojiKeyboard* _LOGOS_SELF_CONST, SEL, double);static Class _logos_superclass$_ungrouped$_UIBackdropViewSettingsLightKeyboard; static id (*_logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$)(_LOGOS_SELF_TYPE_NORMAL _UIBackdropViewSettingsLightKeyboard* _LOGOS_SELF_CONST, SEL, double);static Class _logos_superclass$_ungrouped$BBMCustomTitleView; static UIButton * (*_logos_orig$_ungrouped$BBMCustomTitleView$btnLeft)(_LOGOS_SELF_TYPE_NORMAL BBMCustomTitleView* _LOGOS_SELF_CONST, SEL);static bool (*_logos_orig$_ungrouped$BBMCustomTitleView$isLeftButtonVisible)(_LOGOS_SELF_TYPE_NORMAL BBMCustomTitleView* _LOGOS_SELF_CONST, SEL);static UIButton * (*_logos_orig$_ungrouped$BBMCustomTitleView$btnMiddle)(_LOGOS_SELF_TYPE_NORMAL BBMCustomTitleView* _LOGOS_SELF_CONST, SEL);static bool (*_logos_orig$_ungrouped$BBMCustomTitleView$isMiddleButtonVisible)(_LOGOS_SELF_TYPE_NORMAL BBMCustomTitleView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$BBMPictureOverlayView; static void (*_logos_orig$_ungrouped$BBMPictureOverlayView$displayImage)(_LOGOS_SELF_TYPE_NORMAL BBMPictureOverlayView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$BBMChannelPostImagePicker; static _Bool (*_logos_orig$_ungrouped$BBMChannelPostImagePicker$_allowsEditingIsDefault)(_LOGOS_SELF_TYPE_NORMAL BBMChannelPostImagePicker* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMChannelPostImagePicker$allowsEditingIsDefault)(_LOGOS_SELF_TYPE_NORMAL BBMChannelPostImagePicker* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$UIStatusBar; static void (*_logos_orig$_ungrouped$UIStatusBar$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$UIStatusBarForegroundView; static void (*_logos_orig$_ungrouped$UIStatusBarForegroundView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$BBMConversationViewController; static void (*_logos_orig$_ungrouped$BBMConversationViewController$placeCall$)(_LOGOS_SELF_TYPE_NORMAL BBMConversationViewController* _LOGOS_SELF_CONST, SEL, long long);static Class _logos_superclass$_ungrouped$BBMAdConversationsCell; static void (*_logos_orig$_ungrouped$BBMAdConversationsCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL BBMAdConversationsCell* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$BBMCoreAccess; static id (*_logos_orig$_ungrouped$BBMCoreAccess$getAllAds)(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST, SEL);static id (*_logos_orig$_ungrouped$BBMCoreAccess$adsEnabled)(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST, SEL);static id (*_logos_orig$_ungrouped$BBMCoreAccess$getSponsoredInvites)(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMCoreAccess$revalidateStickers)(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMCoreAccess$shouldAllowUserToRevalidateStickers)(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$_ungrouped$BBMCoreAccess$markEphemeralMessageAsViewed$)(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST, SEL, id);static void (*_logos_orig$_ungrouped$BBMCoreAccess$markEphemeralMessage$asHidden$)(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST, SEL, id, _Bool);static void (*_logos_orig$_ungrouped$BBMCoreAccess$markMessagesRead$withConversationURI$)(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST, SEL, id, id);static void (*_logos_orig$_ungrouped$BBMCoreAccess$sendTypingNotificationForConversationURI$isTyping$)(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST, SEL, id, _Bool);static Class _logos_superclass$_ungrouped$BBMADSAd; static _Bool (*_logos_orig$_ungrouped$BBMADSAd$invitationIsAd)(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMADSAd$pendingRender)(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMADSAd$cachedAd)(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST, SEL);static BOOL (*_logos_orig$_ungrouped$BBMADSAd$isInvite)(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST, SEL);static BOOL (*_logos_orig$_ungrouped$BBMADSAd$isExpired)(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST, SEL);static BOOL (*_logos_orig$_ungrouped$BBMADSAd$invitationIsIncoming)(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMADSAd$isVideoAd)(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMADSAd$isHtmlAd)(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMADSAd$isChannelAd)(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMADSAd$isDisplayAd)(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$BBMRichUpdatesViewController; static BOOL (*_logos_orig$_ungrouped$BBMRichUpdatesViewController$allowScrollingAdInsertion)(_LOGOS_SELF_TYPE_NORMAL BBMRichUpdatesViewController* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$BBMPingLimitHelper; static BOOL (*_logos_orig$_ungrouped$BBMPingLimitHelper$isLimitReached)(_LOGOS_SELF_TYPE_NORMAL BBMPingLimitHelper* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$GADDevice; static _Bool (*_logos_orig$_ungrouped$GADDevice$OSIsSupported)(_LOGOS_SELF_TYPE_NORMAL GADDevice* _LOGOS_SELF_CONST, SEL);static bool (*_logos_orig$_ungrouped$GADDevice$isJailbroken)(_LOGOS_SELF_TYPE_NORMAL GADDevice* _LOGOS_SELF_CONST, SEL);static Class _logos_supermetaclass$_ungrouped$PPRiskDeviceData; static _Bool (*_logos_meta_orig$_ungrouped$PPRiskDeviceData$isJailBroken)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$BBMGenEphemeralMetaData; static _Bool (*_logos_orig$_ungrouped$BBMGenEphemeralMetaData$_screenshot)(_LOGOS_SELF_TYPE_NORMAL BBMGenEphemeralMetaData* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMGenEphemeralMetaData$_viewed)(_LOGOS_SELF_TYPE_NORMAL BBMGenEphemeralMetaData* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$BBMMessage; static _Bool (*_logos_orig$_ungrouped$BBMMessage$canBeMarkedRead)(_LOGOS_SELF_TYPE_NORMAL BBMMessage* _LOGOS_SELF_CONST, SEL);static Class _logos_supermetaclass$_ungrouped$BBMMessageCell; static _Bool (*_logos_meta_orig$_ungrouped$BBMMessageCell$automaticallyNotifiesObserversOfMessage)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$BBMEphemeralMetaData; static void (*_logos_orig$_ungrouped$BBMEphemeralMetaData$expire)(_LOGOS_SELF_TYPE_NORMAL BBMEphemeralMetaData* _LOGOS_SELF_CONST, SEL);static _Bool (*_logos_orig$_ungrouped$BBMEphemeralMetaData$messageTimerIsActive)(_LOGOS_SELF_TYPE_NORMAL BBMEphemeralMetaData* _LOGOS_SELF_CONST, SEL);static float (*_logos_orig$_ungrouped$BBMEphemeralMetaData$remainingTime)(_LOGOS_SELF_TYPE_NORMAL BBMEphemeralMetaData* _LOGOS_SELF_CONST, SEL);static double (*_logos_orig$_ungrouped$BBMEphemeralMetaData$_remainingTime)(_LOGOS_SELF_TYPE_NORMAL BBMEphemeralMetaData* _LOGOS_SELF_CONST, SEL);
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$MeGenericTableViewCell(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("MeGenericTableViewCell"); } return _klass; }
#line 41 "/Users/mac/Desktop/BBMPlus/BBMPlus/BBMPlus.xm"



static NSInteger _logos_method$_ungrouped$MeViewController$tableView$numberOfRowsInSection$(_LOGOS_SELF_TYPE_NORMAL MeViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSInteger section) {
    if (section == 1)
    {return 2;}
    else {
        return (_logos_orig$_ungrouped$MeViewController$tableView$numberOfRowsInSection$ ? _logos_orig$_ungrouped$MeViewController$tableView$numberOfRowsInSection$ : (__typeof__(_logos_orig$_ungrouped$MeViewController$tableView$numberOfRowsInSection$))class_getMethodImplementation(_logos_superclass$_ungrouped$MeViewController, @selector(tableView:numberOfRowsInSection:)))(self, _cmd, tableView, section);
    }
}


static UITableViewCell * _logos_method$_ungrouped$MeViewController$tableView$cellForRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MeViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if (indexPath.section == 1) {
        
        MeGenericTableViewCell *cell = [[_logos_static_class_lookup$MeGenericTableViewCell() alloc] init];
        
        if (indexPath.row == 0){
            return (_logos_orig$_ungrouped$MeViewController$tableView$cellForRowAtIndexPath$ ? _logos_orig$_ungrouped$MeViewController$tableView$cellForRowAtIndexPath$ : (__typeof__(_logos_orig$_ungrouped$MeViewController$tableView$cellForRowAtIndexPath$))class_getMethodImplementation(_logos_superclass$_ungrouped$MeViewController, @selector(tableView:cellForRowAtIndexPath:)))(self, _cmd, tableView, indexPath);
        }
        else {
            cell.textLabel.font = [UIFont boldSystemFontOfSize:14.0];
            cell.textLabel.text = @"BBMPlus";
            [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
            
        }
        
        return cell;
    }
    
    else {
        return (_logos_orig$_ungrouped$MeViewController$tableView$cellForRowAtIndexPath$ ? _logos_orig$_ungrouped$MeViewController$tableView$cellForRowAtIndexPath$ : (__typeof__(_logos_orig$_ungrouped$MeViewController$tableView$cellForRowAtIndexPath$))class_getMethodImplementation(_logos_superclass$_ungrouped$MeViewController, @selector(tableView:cellForRowAtIndexPath:)))(self, _cmd, tableView, indexPath);
    }
}

static void _logos_method$_ungrouped$MeViewController$tableView$didSelectRowAtIndexPath$(_LOGOS_SELF_TYPE_NORMAL MeViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UITableView * tableView, NSIndexPath * indexPath) {
    if ([indexPath section]==1 && [indexPath row]==1) {
        
        FRPSection *section1 = [FRPSection sectionWithTitle:@"BBMPlus settings" footer:nil];
        
        
        
        FRPLinkCell *chatcset = [FRPLinkCell cellWithTitle:@"Chat Settings" selectedBlock:^(UITableViewCell *sender) {
            FRPSection *PingSection = [FRPSection sectionWithTitle:nil footer:@"Send Unlimited Pings!!!"];
            FRPSwitchCell *switchPing = [FRPSwitchCell cellWithTitle:@"Unlimited Pings" setting:[FRPSettings settingsWithKey:@"UnlimitedPings" defaultValue:@NO] postNotification:nil changeBlock:nil];
            [PingSection addCell:switchPing];
            [switchPing.switchView setOnTintColor:BlueColor];
            
            
            
            
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
            
            
            
            FRPSection *TimedMessagesForever = [FRPSection sectionWithTitle:nil footer:@"Keep timed messaging forever"];
            [TimedMessagesForever addCell:[FRPSwitchCell cellWithTitle:@"Timed Messages Forever" setting:[FRPSettings settingsWithKey:@"TIMEFO" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            FRPSection *hideScreenShot = [FRPSection sectionWithTitle:nil footer:@"Hide screen shot notified other party"];
            [hideScreenShot addCell:[FRPSwitchCell cellWithTitle:@"Hide Screen Shot" setting:[FRPSettings settingsWithKey:@"HideScreenShot" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            FRPreferences *subTable = [FRPreferences tableWithSections:@[PingSection,HideReadStatus,HideTyping,TimedMessagesForever,hideScreenShot] title:@"BBMPlus" tintColor:BlueColor];
            [self.navigationController pushViewController:subTable animated:YES];
        }];
        
        
        
        
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
            
            
            
            FRPSection *HideVoiceButton = [FRPSection sectionWithTitle:nil footer:@"Hide Voice call button inside Chats"];
            [HideVoiceButton addCell:[FRPSwitchCell cellWithTitle:@"Hide Voice call Button" setting:[FRPSettings settingsWithKey:@"VoiceBT" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            FRPSection *HideVideoButton = [FRPSection sectionWithTitle:nil footer:@"Hide video call button inside chat"];
            [HideVideoButton addCell:[FRPSwitchCell cellWithTitle:@"Hide Video call Button" setting:[FRPSettings settingsWithKey:@"VideoBT" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            FRPreferences *userTable = [FRPreferences tableWithSections:@[ConfirmCallSection,HidestatusBar,DisableADS,FullScreen,HideVoiceButton,HideVideoButton] title:@"BBMPlus" tintColor:BlueColor];
            [self.navigationController pushViewController:userTable animated:YES];
        }];
        

        
        
        FRPLinkCell *colorskey = [FRPLinkCell cellWithTitle:SSCLocalized(@"Keyboard Colors") selectedBlock:^(UITableViewCell *sender) {
            
            
            FRPSection *RedSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [RedSectionColor addCell:[FRPSwitchCell cellWithTitle:@"Red" setting: [FRPSettings settingsWithKey:@"redColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            
            
            FRPSection *BlueSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [BlueSectionColor addCell:[FRPSwitchCell cellWithTitle:@"blue" setting: [FRPSettings settingsWithKey:@"blueColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            
            FRPSection *GraySectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [GraySectionColor addCell:[FRPSwitchCell cellWithTitle:@"Gray" setting: [FRPSettings settingsWithKey:@"grayColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            FRPSection *PinkSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [PinkSectionColor addCell:[FRPSwitchCell cellWithTitle:@"Pink" setting: [FRPSettings settingsWithKey:@"pinkColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            
            FRPSection *GreenSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [GreenSectionColor addCell:[FRPSwitchCell cellWithTitle:@"Green" setting: [FRPSettings settingsWithKey:@"greenColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            
            FRPSection *BlackSectionColor = [FRPSection sectionWithTitle:nil footer:nil];
            [BlackSectionColor addCell:[FRPSwitchCell cellWithTitle:@"Black" setting: [FRPSettings settingsWithKey:@"blackColor" defaultValue:@NO] postNotification:nil changeBlock:nil]];
            
            
            
            
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
        
        
        
        
        FRPSection *section3 = [FRPSection sectionWithTitle:@"Developer" footer:nil];
        
        
        FRPDeveloperCell *dev = [FRPDeveloperCell cellWithTitle:@"BandarHelal" detail:@"@BandarHL" image:[UIImage imageNamed:@"/Library/Application Support/BBMPlus/BBMPlus.bundle/logo.png"] url:@"https://www.twitter.com/BandarHL"];
        [section3 addCell:dev];
        FRPDeveloperCell *paypal = [FRPDeveloperCell cellWithTitle:@"Donate via paypal" detail:@"PayPal" image:[UIImage imageNamed:@"/Library/Application Support/BBMPlus/BBMPlus.bundle/PrefsDonate.png"] url:@"https://www.paypal.me/fjr699"];
        [section3 addCell:paypal];
        [section3 addCell:[FRPValueCell cellWithTitle:@"Version" detail:@"2.1"]];
        
        
        
        FRPreferences *table = [FRPreferences tableWithSections:@[section1,section3] title:@"BBMPlus" tintColor:BlueColor];
        
        UIBarButtonItem *heart = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"/Library/Application Support/BBMPlus/BBMPlus.bundle/H.png"] style:UIBarButtonItemStylePlain target:self action:@selector(shareTapped:)];
        table.navigationItem.rightBarButtonItem = heart;
        
        [self.navigationController pushViewController:table animated:YES];
        
            
        

    } else {
        return (_logos_orig$_ungrouped$MeViewController$tableView$didSelectRowAtIndexPath$ ? _logos_orig$_ungrouped$MeViewController$tableView$didSelectRowAtIndexPath$ : (__typeof__(_logos_orig$_ungrouped$MeViewController$tableView$didSelectRowAtIndexPath$))class_getMethodImplementation(_logos_superclass$_ungrouped$MeViewController, @selector(tableView:didSelectRowAtIndexPath:)))(self, _cmd, tableView, indexPath);
    }
}

static void _logos_method$_ungrouped$MeViewController$shareTapped$(_LOGOS_SELF_TYPE_NORMAL MeViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id sender) {
    TWTweetComposeViewController *tw = [[TWTweetComposeViewController alloc] init];
    [tw setInitialText:@"I'm using #BBMPlus By @BandarHL"];
    
    [self presentViewController:tw animated:YES completion:nil];
}






static void _logos_method$_ungrouped$BBMAppDelegate$applicationDidBecomeActive$(_LOGOS_SELF_TYPE_NORMAL BBMAppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    (_logos_orig$_ungrouped$BBMAppDelegate$applicationDidBecomeActive$ ? _logos_orig$_ungrouped$BBMAppDelegate$applicationDidBecomeActive$ : (__typeof__(_logos_orig$_ungrouped$BBMAppDelegate$applicationDidBecomeActive$))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMAppDelegate, @selector(applicationDidBecomeActive:)))(self, _cmd, arg1);
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"flex"]) {
    [[FLEXManager sharedManager] showExplorer];
    } else {
        return (_logos_orig$_ungrouped$BBMAppDelegate$applicationDidBecomeActive$ ? _logos_orig$_ungrouped$BBMAppDelegate$applicationDidBecomeActive$ : (__typeof__(_logos_orig$_ungrouped$BBMAppDelegate$applicationDidBecomeActive$))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMAppDelegate, @selector(applicationDidBecomeActive:)))(self, _cmd, arg1);
    }
}
static bool _logos_method$_ungrouped$BBMAppDelegate$application$didFinishLaunchingWithOptions$(_LOGOS_SELF_TYPE_NORMAL BBMAppDelegate* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    (_logos_orig$_ungrouped$BBMAppDelegate$application$didFinishLaunchingWithOptions$ ? _logos_orig$_ungrouped$BBMAppDelegate$application$didFinishLaunchingWithOptions$ : (__typeof__(_logos_orig$_ungrouped$BBMAppDelegate$application$didFinishLaunchingWithOptions$))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMAppDelegate, @selector(application:didFinishLaunchingWithOptions:)))(self, _cmd, arg1, arg2);
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"flex"]) {
    [[FLEXManager sharedManager] showExplorer];
    } else {
        return (_logos_orig$_ungrouped$BBMAppDelegate$application$didFinishLaunchingWithOptions$ ? _logos_orig$_ungrouped$BBMAppDelegate$application$didFinishLaunchingWithOptions$ : (__typeof__(_logos_orig$_ungrouped$BBMAppDelegate$application$didFinishLaunchingWithOptions$))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMAppDelegate, @selector(application:didFinishLaunchingWithOptions:)))(self, _cmd, arg1, arg2);
    }
    
    return YES;
}







static id _logos_method$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$(_LOGOS_SELF_TYPE_NORMAL _UIBackdropViewSettingsLightEmojiKeyboard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
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
        return (_logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$ ? _logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$ : (__typeof__(_logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$))class_getMethodImplementation(_logos_superclass$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard, @selector(_defaultColorTintColorWithOpacity:)))(self, _cmd, arg1);
    }
}






static id _logos_method$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$(_LOGOS_SELF_TYPE_NORMAL _UIBackdropViewSettingsLightKeyboard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    
    
    
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
        return (_logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$ ? _logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$ : (__typeof__(_logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$))class_getMethodImplementation(_logos_superclass$_ungrouped$_UIBackdropViewSettingsLightKeyboard, @selector(_defaultColorTintColorWithOpacity:)))(self, _cmd, arg1);
    }
}







static UIButton * _logos_method$_ungrouped$BBMCustomTitleView$btnLeft(_LOGOS_SELF_TYPE_NORMAL BBMCustomTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"VideoBT"]) {
        UIButton *btnLeft = (_logos_orig$_ungrouped$BBMCustomTitleView$btnLeft ? _logos_orig$_ungrouped$BBMCustomTitleView$btnLeft : (__typeof__(_logos_orig$_ungrouped$BBMCustomTitleView$btnLeft))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCustomTitleView, @selector(btnLeft)))(self, _cmd);
        btnLeft.hidden = YES;
        return btnLeft;
    } else {
        return (_logos_orig$_ungrouped$BBMCustomTitleView$btnLeft ? _logos_orig$_ungrouped$BBMCustomTitleView$btnLeft : (__typeof__(_logos_orig$_ungrouped$BBMCustomTitleView$btnLeft))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCustomTitleView, @selector(btnLeft)))(self, _cmd);
    }
}
static bool _logos_method$_ungrouped$BBMCustomTitleView$isLeftButtonVisible(_LOGOS_SELF_TYPE_NORMAL BBMCustomTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"VideoBT"]) {
        return false;
    } else {
        return (_logos_orig$_ungrouped$BBMCustomTitleView$isLeftButtonVisible ? _logos_orig$_ungrouped$BBMCustomTitleView$isLeftButtonVisible : (__typeof__(_logos_orig$_ungrouped$BBMCustomTitleView$isLeftButtonVisible))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCustomTitleView, @selector(isLeftButtonVisible)))(self, _cmd);
    }
}

static UIButton * _logos_method$_ungrouped$BBMCustomTitleView$btnMiddle(_LOGOS_SELF_TYPE_NORMAL BBMCustomTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"VoiceBT"]) {
        UIButton *btnMiddle = (_logos_orig$_ungrouped$BBMCustomTitleView$btnMiddle ? _logos_orig$_ungrouped$BBMCustomTitleView$btnMiddle : (__typeof__(_logos_orig$_ungrouped$BBMCustomTitleView$btnMiddle))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCustomTitleView, @selector(btnMiddle)))(self, _cmd);
        btnMiddle.hidden = YES;
        return btnMiddle;
    } else {
        return (_logos_orig$_ungrouped$BBMCustomTitleView$btnMiddle ? _logos_orig$_ungrouped$BBMCustomTitleView$btnMiddle : (__typeof__(_logos_orig$_ungrouped$BBMCustomTitleView$btnMiddle))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCustomTitleView, @selector(btnMiddle)))(self, _cmd);
    }
}

static bool _logos_method$_ungrouped$BBMCustomTitleView$isMiddleButtonVisible(_LOGOS_SELF_TYPE_NORMAL BBMCustomTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"VoiceBT"]) {
        return false;
    } else {
        return (_logos_orig$_ungrouped$BBMCustomTitleView$isMiddleButtonVisible ? _logos_orig$_ungrouped$BBMCustomTitleView$isMiddleButtonVisible : (__typeof__(_logos_orig$_ungrouped$BBMCustomTitleView$isMiddleButtonVisible))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCustomTitleView, @selector(isMiddleButtonVisible)))(self, _cmd);
    }
}







static void _logos_method$_ungrouped$BBMPictureOverlayView$displayImage(_LOGOS_SELF_TYPE_NORMAL BBMPictureOverlayView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$BBMPictureOverlayView$displayImage ? _logos_orig$_ungrouped$BBMPictureOverlayView$displayImage : (__typeof__(_logos_orig$_ungrouped$BBMPictureOverlayView$displayImage))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMPictureOverlayView, @selector(displayImage)))(self, _cmd);
    
    UIButton *SaveFeed = [UIButton buttonWithType:UIButtonTypeCustom];
    SaveFeed.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 110, [UIScreen mainScreen].bounds.size.height - 90, 120, 40);
    [SaveFeed setImage:[UIImage imageNamed:@"/Library/Application Support/BBMPlus/BBMPlus.bundle/Save_Button.png"] forState:UIControlStateNormal];
    [SaveFeed setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [SaveFeed addTarget:self action:@selector(save) forControlEvents:UIControlEventTouchDown];
    [self addSubview:SaveFeed];
    [self setUserInteractionEnabled:YES];
    
}


static void _logos_method$_ungrouped$BBMPictureOverlayView$save(_LOGOS_SELF_TYPE_NORMAL BBMPictureOverlayView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    
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

static BOOL _logos_method$_ungrouped$BBMPictureOverlayView$dropdownAlertWasTapped$(_LOGOS_SELF_TYPE_NORMAL BBMPictureOverlayView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, RKDropdownAlert* alert) {
    return true;
}




static void _logos_method$_ungrouped$BBMPictureOverlayView$thisImage$hasBeenSavedInPhotoAlbumWithError$usingContextInfo$(_LOGOS_SELF_TYPE_NORMAL BBMPictureOverlayView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, UIImage * image, NSError * error, void * ctxInfo) {
    
}



static _Bool _logos_method$_ungrouped$BBMChannelPostImagePicker$_allowsEditingIsDefault(_LOGOS_SELF_TYPE_NORMAL BBMChannelPostImagePicker* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
}



static _Bool _logos_method$_ungrouped$BBMChannelPostImagePicker$allowsEditingIsDefault(_LOGOS_SELF_TYPE_NORMAL BBMChannelPostImagePicker* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
}





static void _logos_method$_ungrouped$UIStatusBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UIStatusBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideStatus"]) {
        self.hidden = YES;
    } else {
        return (_logos_orig$_ungrouped$UIStatusBar$layoutSubviews ? _logos_orig$_ungrouped$UIStatusBar$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UIStatusBar$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UIStatusBar, @selector(layoutSubviews)))(self, _cmd);
    }
    
}



static void _logos_method$_ungrouped$UIStatusBarForegroundView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideStatus"]) {
        self.hidden = YES;
    } else {
        return (_logos_orig$_ungrouped$UIStatusBarForegroundView$layoutSubviews ? _logos_orig$_ungrouped$UIStatusBarForegroundView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UIStatusBarForegroundView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UIStatusBarForegroundView, @selector(layoutSubviews)))(self, _cmd);
    }
    
}








static void _logos_method$_ungrouped$BBMConversationViewController$placeCall$(_LOGOS_SELF_TYPE_NORMAL BBMConversationViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, long long arg1) {
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
                                       (_logos_orig$_ungrouped$BBMConversationViewController$placeCall$ ? _logos_orig$_ungrouped$BBMConversationViewController$placeCall$ : (__typeof__(_logos_orig$_ungrouped$BBMConversationViewController$placeCall$))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMConversationViewController, @selector(placeCall:)))(self, _cmd, arg1);
                                       
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
        return (_logos_orig$_ungrouped$BBMConversationViewController$placeCall$ ? _logos_orig$_ungrouped$BBMConversationViewController$placeCall$ : (__typeof__(_logos_orig$_ungrouped$BBMConversationViewController$placeCall$))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMConversationViewController, @selector(placeCall:)))(self, _cmd, arg1);
    }
}






static void _logos_method$_ungrouped$BBMAdConversationsCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL BBMAdConversationsCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        self.hidden = YES;
    } else {
        return (_logos_orig$_ungrouped$BBMAdConversationsCell$layoutSubviews ? _logos_orig$_ungrouped$BBMAdConversationsCell$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$BBMAdConversationsCell$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMAdConversationsCell, @selector(layoutSubviews)))(self, _cmd);
    }
    
}



static id _logos_method$_ungrouped$BBMCoreAccess$getAllAds(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NULL;
    } else {
        return (_logos_orig$_ungrouped$BBMCoreAccess$getAllAds ? _logos_orig$_ungrouped$BBMCoreAccess$getAllAds : (__typeof__(_logos_orig$_ungrouped$BBMCoreAccess$getAllAds))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCoreAccess, @selector(getAllAds)))(self, _cmd);
    }
}
static id _logos_method$_ungrouped$BBMCoreAccess$adsEnabled(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NULL;
    } else {
        return (_logos_orig$_ungrouped$BBMCoreAccess$adsEnabled ? _logos_orig$_ungrouped$BBMCoreAccess$adsEnabled : (__typeof__(_logos_orig$_ungrouped$BBMCoreAccess$adsEnabled))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCoreAccess, @selector(adsEnabled)))(self, _cmd);
    }
}
static id _logos_method$_ungrouped$BBMCoreAccess$getSponsoredInvites(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NULL;
    } else {
        return (_logos_orig$_ungrouped$BBMCoreAccess$getSponsoredInvites ? _logos_orig$_ungrouped$BBMCoreAccess$getSponsoredInvites : (__typeof__(_logos_orig$_ungrouped$BBMCoreAccess$getSponsoredInvites))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCoreAccess, @selector(getSponsoredInvites)))(self, _cmd);
    }
}



static _Bool _logos_method$_ungrouped$BBMADSAd$invitationIsAd(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMADSAd$invitationIsAd ? _logos_orig$_ungrouped$BBMADSAd$invitationIsAd : (__typeof__(_logos_orig$_ungrouped$BBMADSAd$invitationIsAd))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMADSAd, @selector(invitationIsAd)))(self, _cmd);
    }
}

static _Bool _logos_method$_ungrouped$BBMADSAd$pendingRender(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMADSAd$pendingRender ? _logos_orig$_ungrouped$BBMADSAd$pendingRender : (__typeof__(_logos_orig$_ungrouped$BBMADSAd$pendingRender))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMADSAd, @selector(pendingRender)))(self, _cmd);
    }
}

static _Bool _logos_method$_ungrouped$BBMADSAd$cachedAd(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMADSAd$cachedAd ? _logos_orig$_ungrouped$BBMADSAd$cachedAd : (__typeof__(_logos_orig$_ungrouped$BBMADSAd$cachedAd))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMADSAd, @selector(cachedAd)))(self, _cmd);
    }
}

static BOOL _logos_method$_ungrouped$BBMADSAd$isInvite(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMADSAd$isInvite ? _logos_orig$_ungrouped$BBMADSAd$isInvite : (__typeof__(_logos_orig$_ungrouped$BBMADSAd$isInvite))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMADSAd, @selector(isInvite)))(self, _cmd);
    }
}

static BOOL _logos_method$_ungrouped$BBMADSAd$isExpired(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return YES;
    } else {
        return (_logos_orig$_ungrouped$BBMADSAd$isExpired ? _logos_orig$_ungrouped$BBMADSAd$isExpired : (__typeof__(_logos_orig$_ungrouped$BBMADSAd$isExpired))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMADSAd, @selector(isExpired)))(self, _cmd);
    }
}

static BOOL _logos_method$_ungrouped$BBMADSAd$invitationIsIncoming(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMADSAd$invitationIsIncoming ? _logos_orig$_ungrouped$BBMADSAd$invitationIsIncoming : (__typeof__(_logos_orig$_ungrouped$BBMADSAd$invitationIsIncoming))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMADSAd, @selector(invitationIsIncoming)))(self, _cmd);
    }
}

static _Bool _logos_method$_ungrouped$BBMADSAd$isVideoAd(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMADSAd$isVideoAd ? _logos_orig$_ungrouped$BBMADSAd$isVideoAd : (__typeof__(_logos_orig$_ungrouped$BBMADSAd$isVideoAd))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMADSAd, @selector(isVideoAd)))(self, _cmd);
        
    }}

static _Bool _logos_method$_ungrouped$BBMADSAd$isHtmlAd(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMADSAd$isHtmlAd ? _logos_orig$_ungrouped$BBMADSAd$isHtmlAd : (__typeof__(_logos_orig$_ungrouped$BBMADSAd$isHtmlAd))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMADSAd, @selector(isHtmlAd)))(self, _cmd);
    }}

static _Bool _logos_method$_ungrouped$BBMADSAd$isChannelAd(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMADSAd$isChannelAd ? _logos_orig$_ungrouped$BBMADSAd$isChannelAd : (__typeof__(_logos_orig$_ungrouped$BBMADSAd$isChannelAd))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMADSAd, @selector(isChannelAd)))(self, _cmd);
        
    }}

static _Bool _logos_method$_ungrouped$BBMADSAd$isDisplayAd(_LOGOS_SELF_TYPE_NORMAL BBMADSAd* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMADSAd$isDisplayAd ? _logos_orig$_ungrouped$BBMADSAd$isDisplayAd : (__typeof__(_logos_orig$_ungrouped$BBMADSAd$isDisplayAd))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMADSAd, @selector(isDisplayAd)))(self, _cmd);
        
    }}




static BOOL _logos_method$_ungrouped$BBMRichUpdatesViewController$allowScrollingAdInsertion(_LOGOS_SELF_TYPE_NORMAL BBMRichUpdatesViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Ads"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMRichUpdatesViewController$allowScrollingAdInsertion ? _logos_orig$_ungrouped$BBMRichUpdatesViewController$allowScrollingAdInsertion : (__typeof__(_logos_orig$_ungrouped$BBMRichUpdatesViewController$allowScrollingAdInsertion))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMRichUpdatesViewController, @selector(allowScrollingAdInsertion)))(self, _cmd);
    }
}











static BOOL _logos_method$_ungrouped$BBMPingLimitHelper$isLimitReached(_LOGOS_SELF_TYPE_NORMAL BBMPingLimitHelper* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"UnlimitedPings"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMPingLimitHelper$isLimitReached ? _logos_orig$_ungrouped$BBMPingLimitHelper$isLimitReached : (__typeof__(_logos_orig$_ungrouped$BBMPingLimitHelper$isLimitReached))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMPingLimitHelper, @selector(isLimitReached)))(self, _cmd);
    }
}




static _Bool _logos_method$_ungrouped$GADDevice$OSIsSupported(_LOGOS_SELF_TYPE_NORMAL GADDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return YES;
}
static bool _logos_method$_ungrouped$GADDevice$isJailbroken(_LOGOS_SELF_TYPE_NORMAL GADDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
}



static _Bool _logos_meta_method$_ungrouped$PPRiskDeviceData$isJailBroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return NO;
}




static _Bool _logos_method$_ungrouped$BBMGenEphemeralMetaData$_screenshot(_LOGOS_SELF_TYPE_NORMAL BBMGenEphemeralMetaData* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideScreenShot"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMGenEphemeralMetaData$_screenshot ? _logos_orig$_ungrouped$BBMGenEphemeralMetaData$_screenshot : (__typeof__(_logos_orig$_ungrouped$BBMGenEphemeralMetaData$_screenshot))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMGenEphemeralMetaData, @selector(_screenshot)))(self, _cmd);
    }
}
static _Bool _logos_method$_ungrouped$BBMGenEphemeralMetaData$_viewed(_LOGOS_SELF_TYPE_NORMAL BBMGenEphemeralMetaData* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideScreenShot"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMGenEphemeralMetaData$_viewed ? _logos_orig$_ungrouped$BBMGenEphemeralMetaData$_viewed : (__typeof__(_logos_orig$_ungrouped$BBMGenEphemeralMetaData$_viewed))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMGenEphemeralMetaData, @selector(_viewed)))(self, _cmd);
    }
}





static _Bool _logos_method$_ungrouped$BBMMessage$canBeMarkedRead(_LOGOS_SELF_TYPE_NORMAL BBMMessage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ReadStatus"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMMessage$canBeMarkedRead ? _logos_orig$_ungrouped$BBMMessage$canBeMarkedRead : (__typeof__(_logos_orig$_ungrouped$BBMMessage$canBeMarkedRead))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMMessage, @selector(canBeMarkedRead)))(self, _cmd);
    }
}



static _Bool _logos_meta_method$_ungrouped$BBMMessageCell$automaticallyNotifiesObserversOfMessage(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"ReadStatus"]) {
        return NO;
    } else {
        return (_logos_meta_orig$_ungrouped$BBMMessageCell$automaticallyNotifiesObserversOfMessage ? _logos_meta_orig$_ungrouped$BBMMessageCell$automaticallyNotifiesObserversOfMessage : (__typeof__(_logos_meta_orig$_ungrouped$BBMMessageCell$automaticallyNotifiesObserversOfMessage))class_getMethodImplementation(_logos_supermetaclass$_ungrouped$BBMMessageCell, @selector(automaticallyNotifiesObserversOfMessage)))(self, _cmd);
    }
}




static _Bool _logos_method$_ungrouped$BBMCoreAccess$revalidateStickers(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return YES;
}
static _Bool _logos_method$_ungrouped$BBMCoreAccess$shouldAllowUserToRevalidateStickers(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return YES;
}
static void _logos_method$_ungrouped$BBMCoreAccess$markEphemeralMessageAsViewed$(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideTyping"]) {
        arg1 = NO;
    } else {
        return (_logos_orig$_ungrouped$BBMCoreAccess$markEphemeralMessageAsViewed$ ? _logos_orig$_ungrouped$BBMCoreAccess$markEphemeralMessageAsViewed$ : (__typeof__(_logos_orig$_ungrouped$BBMCoreAccess$markEphemeralMessageAsViewed$))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCoreAccess, @selector(markEphemeralMessageAsViewed:)))(self, _cmd, arg1);
    }
}
static void _logos_method$_ungrouped$BBMCoreAccess$markEphemeralMessage$asHidden$(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, _Bool arg2) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideTyping"]) {
        arg2 = NO;
    } else {
        return (_logos_orig$_ungrouped$BBMCoreAccess$markEphemeralMessage$asHidden$ ? _logos_orig$_ungrouped$BBMCoreAccess$markEphemeralMessage$asHidden$ : (__typeof__(_logos_orig$_ungrouped$BBMCoreAccess$markEphemeralMessage$asHidden$))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCoreAccess, @selector(markEphemeralMessage:asHidden:)))(self, _cmd, arg1, arg2);
    }
    
}
static void _logos_method$_ungrouped$BBMCoreAccess$markMessagesRead$withConversationURI$(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, id arg2) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideTyping"]) {
        arg1 = NO;
        arg2 = NO;
    } else {
        return (_logos_orig$_ungrouped$BBMCoreAccess$markMessagesRead$withConversationURI$ ? _logos_orig$_ungrouped$BBMCoreAccess$markMessagesRead$withConversationURI$ : (__typeof__(_logos_orig$_ungrouped$BBMCoreAccess$markMessagesRead$withConversationURI$))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCoreAccess, @selector(markMessagesRead:withConversationURI:)))(self, _cmd, arg1, arg2);
    }
}
static void _logos_method$_ungrouped$BBMCoreAccess$sendTypingNotificationForConversationURI$isTyping$(_LOGOS_SELF_TYPE_NORMAL BBMCoreAccess* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, _Bool arg2) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"HideTyping"]) {
        arg1 = NO;
        arg2 = NO;
    } else {
        return (_logos_orig$_ungrouped$BBMCoreAccess$sendTypingNotificationForConversationURI$isTyping$ ? _logos_orig$_ungrouped$BBMCoreAccess$sendTypingNotificationForConversationURI$isTyping$ : (__typeof__(_logos_orig$_ungrouped$BBMCoreAccess$sendTypingNotificationForConversationURI$isTyping$))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMCoreAccess, @selector(sendTypingNotificationForConversationURI:isTyping:)))(self, _cmd, arg1, arg2);
    }
}





static void _logos_method$_ungrouped$BBMEphemeralMetaData$expire(_LOGOS_SELF_TYPE_NORMAL BBMEphemeralMetaData* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"TIMEFO"]) {
        return;
    } else {
        return (_logos_orig$_ungrouped$BBMEphemeralMetaData$expire ? _logos_orig$_ungrouped$BBMEphemeralMetaData$expire : (__typeof__(_logos_orig$_ungrouped$BBMEphemeralMetaData$expire))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMEphemeralMetaData, @selector(expire)))(self, _cmd);
    }
}
static _Bool _logos_method$_ungrouped$BBMEphemeralMetaData$messageTimerIsActive(_LOGOS_SELF_TYPE_NORMAL BBMEphemeralMetaData* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"TIMEFO"]) {
        return NO;
    } else {
        return (_logos_orig$_ungrouped$BBMEphemeralMetaData$messageTimerIsActive ? _logos_orig$_ungrouped$BBMEphemeralMetaData$messageTimerIsActive : (__typeof__(_logos_orig$_ungrouped$BBMEphemeralMetaData$messageTimerIsActive))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMEphemeralMetaData, @selector(messageTimerIsActive)))(self, _cmd);
    }
}
static float _logos_method$_ungrouped$BBMEphemeralMetaData$remainingTime(_LOGOS_SELF_TYPE_NORMAL BBMEphemeralMetaData* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"TIMEFO"]) {
        return 10000000;
    } else {
        return (_logos_orig$_ungrouped$BBMEphemeralMetaData$remainingTime ? _logos_orig$_ungrouped$BBMEphemeralMetaData$remainingTime : (__typeof__(_logos_orig$_ungrouped$BBMEphemeralMetaData$remainingTime))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMEphemeralMetaData, @selector(remainingTime)))(self, _cmd);
    }
}
static double _logos_method$_ungrouped$BBMEphemeralMetaData$_remainingTime(_LOGOS_SELF_TYPE_NORMAL BBMEphemeralMetaData* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"TIMEFO"]) {
        return 999999999;
    } else {
        return (_logos_orig$_ungrouped$BBMEphemeralMetaData$_remainingTime ? _logos_orig$_ungrouped$BBMEphemeralMetaData$_remainingTime : (__typeof__(_logos_orig$_ungrouped$BBMEphemeralMetaData$_remainingTime))class_getMethodImplementation(_logos_superclass$_ungrouped$BBMEphemeralMetaData, @selector(_remainingTime)))(self, _cmd);
    }
}








static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$MeViewController = objc_getClass("MeViewController"); _logos_superclass$_ungrouped$MeViewController = class_getSuperclass(_logos_class$_ungrouped$MeViewController); { _logos_register_hook$(_logos_class$_ungrouped$MeViewController, @selector(tableView:numberOfRowsInSection:), (IMP)&_logos_method$_ungrouped$MeViewController$tableView$numberOfRowsInSection$, (IMP *)&_logos_orig$_ungrouped$MeViewController$tableView$numberOfRowsInSection$);}{ _logos_register_hook$(_logos_class$_ungrouped$MeViewController, @selector(tableView:cellForRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$MeViewController$tableView$cellForRowAtIndexPath$, (IMP *)&_logos_orig$_ungrouped$MeViewController$tableView$cellForRowAtIndexPath$);}{ _logos_register_hook$(_logos_class$_ungrouped$MeViewController, @selector(tableView:didSelectRowAtIndexPath:), (IMP)&_logos_method$_ungrouped$MeViewController$tableView$didSelectRowAtIndexPath$, (IMP *)&_logos_orig$_ungrouped$MeViewController$tableView$didSelectRowAtIndexPath$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$MeViewController, @selector(shareTapped:), (IMP)&_logos_method$_ungrouped$MeViewController$shareTapped$, _typeEncoding); }Class _logos_class$_ungrouped$BBMAppDelegate = objc_getClass("BBMAppDelegate"); _logos_superclass$_ungrouped$BBMAppDelegate = class_getSuperclass(_logos_class$_ungrouped$BBMAppDelegate); { _logos_register_hook$(_logos_class$_ungrouped$BBMAppDelegate, @selector(applicationDidBecomeActive:), (IMP)&_logos_method$_ungrouped$BBMAppDelegate$applicationDidBecomeActive$, (IMP *)&_logos_orig$_ungrouped$BBMAppDelegate$applicationDidBecomeActive$);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMAppDelegate, @selector(application:didFinishLaunchingWithOptions:), (IMP)&_logos_method$_ungrouped$BBMAppDelegate$application$didFinishLaunchingWithOptions$, (IMP *)&_logos_orig$_ungrouped$BBMAppDelegate$application$didFinishLaunchingWithOptions$);}Class _logos_class$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard = objc_getClass("_UIBackdropViewSettingsLightEmojiKeyboard"); _logos_superclass$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard = class_getSuperclass(_logos_class$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard); { _logos_register_hook$(_logos_class$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard, @selector(_defaultColorTintColorWithOpacity:), (IMP)&_logos_method$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$, (IMP *)&_logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$);}Class _logos_class$_ungrouped$_UIBackdropViewSettingsLightKeyboard = objc_getClass("_UIBackdropViewSettingsLightKeyboard"); _logos_superclass$_ungrouped$_UIBackdropViewSettingsLightKeyboard = class_getSuperclass(_logos_class$_ungrouped$_UIBackdropViewSettingsLightKeyboard); { _logos_register_hook$(_logos_class$_ungrouped$_UIBackdropViewSettingsLightKeyboard, @selector(_defaultColorTintColorWithOpacity:), (IMP)&_logos_method$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$, (IMP *)&_logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$);}Class _logos_class$_ungrouped$BBMCustomTitleView = objc_getClass("BBMCustomTitleView"); _logos_superclass$_ungrouped$BBMCustomTitleView = class_getSuperclass(_logos_class$_ungrouped$BBMCustomTitleView); { _logos_register_hook$(_logos_class$_ungrouped$BBMCustomTitleView, @selector(btnLeft), (IMP)&_logos_method$_ungrouped$BBMCustomTitleView$btnLeft, (IMP *)&_logos_orig$_ungrouped$BBMCustomTitleView$btnLeft);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCustomTitleView, @selector(isLeftButtonVisible), (IMP)&_logos_method$_ungrouped$BBMCustomTitleView$isLeftButtonVisible, (IMP *)&_logos_orig$_ungrouped$BBMCustomTitleView$isLeftButtonVisible);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCustomTitleView, @selector(btnMiddle), (IMP)&_logos_method$_ungrouped$BBMCustomTitleView$btnMiddle, (IMP *)&_logos_orig$_ungrouped$BBMCustomTitleView$btnMiddle);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCustomTitleView, @selector(isMiddleButtonVisible), (IMP)&_logos_method$_ungrouped$BBMCustomTitleView$isMiddleButtonVisible, (IMP *)&_logos_orig$_ungrouped$BBMCustomTitleView$isMiddleButtonVisible);}Class _logos_class$_ungrouped$BBMPictureOverlayView = objc_getClass("BBMPictureOverlayView"); _logos_superclass$_ungrouped$BBMPictureOverlayView = class_getSuperclass(_logos_class$_ungrouped$BBMPictureOverlayView); { _logos_register_hook$(_logos_class$_ungrouped$BBMPictureOverlayView, @selector(displayImage), (IMP)&_logos_method$_ungrouped$BBMPictureOverlayView$displayImage, (IMP *)&_logos_orig$_ungrouped$BBMPictureOverlayView$displayImage);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBMPictureOverlayView, @selector(save), (IMP)&_logos_method$_ungrouped$BBMPictureOverlayView$save, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(RKDropdownAlert*), strlen(@encode(RKDropdownAlert*))); i += strlen(@encode(RKDropdownAlert*)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBMPictureOverlayView, @selector(dropdownAlertWasTapped:), (IMP)&_logos_method$_ungrouped$BBMPictureOverlayView$dropdownAlertWasTapped$, _typeEncoding); }{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(UIImage *), strlen(@encode(UIImage *))); i += strlen(@encode(UIImage *)); memcpy(_typeEncoding + i, @encode(NSError *), strlen(@encode(NSError *))); i += strlen(@encode(NSError *)); _typeEncoding[i] = '^'; _typeEncoding[i + 1] = 'v'; i += 2; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$BBMPictureOverlayView, @selector(thisImage:hasBeenSavedInPhotoAlbumWithError:usingContextInfo:), (IMP)&_logos_method$_ungrouped$BBMPictureOverlayView$thisImage$hasBeenSavedInPhotoAlbumWithError$usingContextInfo$, _typeEncoding); }Class _logos_class$_ungrouped$BBMChannelPostImagePicker = objc_getClass("BBMChannelPostImagePicker"); _logos_superclass$_ungrouped$BBMChannelPostImagePicker = class_getSuperclass(_logos_class$_ungrouped$BBMChannelPostImagePicker); { _logos_register_hook$(_logos_class$_ungrouped$BBMChannelPostImagePicker, @selector(_allowsEditingIsDefault), (IMP)&_logos_method$_ungrouped$BBMChannelPostImagePicker$_allowsEditingIsDefault, (IMP *)&_logos_orig$_ungrouped$BBMChannelPostImagePicker$_allowsEditingIsDefault);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMChannelPostImagePicker, @selector(allowsEditingIsDefault), (IMP)&_logos_method$_ungrouped$BBMChannelPostImagePicker$allowsEditingIsDefault, (IMP *)&_logos_orig$_ungrouped$BBMChannelPostImagePicker$allowsEditingIsDefault);}Class _logos_class$_ungrouped$UIStatusBar = objc_getClass("UIStatusBar"); _logos_superclass$_ungrouped$UIStatusBar = class_getSuperclass(_logos_class$_ungrouped$UIStatusBar); { _logos_register_hook$(_logos_class$_ungrouped$UIStatusBar, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UIStatusBar$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$UIStatusBar$layoutSubviews);}Class _logos_class$_ungrouped$UIStatusBarForegroundView = objc_getClass("UIStatusBarForegroundView"); _logos_superclass$_ungrouped$UIStatusBarForegroundView = class_getSuperclass(_logos_class$_ungrouped$UIStatusBarForegroundView); { _logos_register_hook$(_logos_class$_ungrouped$UIStatusBarForegroundView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundView$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$UIStatusBarForegroundView$layoutSubviews);}Class _logos_class$_ungrouped$BBMConversationViewController = objc_getClass("BBMConversationViewController"); _logos_superclass$_ungrouped$BBMConversationViewController = class_getSuperclass(_logos_class$_ungrouped$BBMConversationViewController); { _logos_register_hook$(_logos_class$_ungrouped$BBMConversationViewController, @selector(placeCall:), (IMP)&_logos_method$_ungrouped$BBMConversationViewController$placeCall$, (IMP *)&_logos_orig$_ungrouped$BBMConversationViewController$placeCall$);}Class _logos_class$_ungrouped$BBMAdConversationsCell = objc_getClass("BBMAdConversationsCell"); _logos_superclass$_ungrouped$BBMAdConversationsCell = class_getSuperclass(_logos_class$_ungrouped$BBMAdConversationsCell); { _logos_register_hook$(_logos_class$_ungrouped$BBMAdConversationsCell, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$BBMAdConversationsCell$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$BBMAdConversationsCell$layoutSubviews);}Class _logos_class$_ungrouped$BBMCoreAccess = objc_getClass("BBMCoreAccess"); _logos_superclass$_ungrouped$BBMCoreAccess = class_getSuperclass(_logos_class$_ungrouped$BBMCoreAccess); { _logos_register_hook$(_logos_class$_ungrouped$BBMCoreAccess, @selector(getAllAds), (IMP)&_logos_method$_ungrouped$BBMCoreAccess$getAllAds, (IMP *)&_logos_orig$_ungrouped$BBMCoreAccess$getAllAds);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCoreAccess, @selector(adsEnabled), (IMP)&_logos_method$_ungrouped$BBMCoreAccess$adsEnabled, (IMP *)&_logos_orig$_ungrouped$BBMCoreAccess$adsEnabled);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCoreAccess, @selector(getSponsoredInvites), (IMP)&_logos_method$_ungrouped$BBMCoreAccess$getSponsoredInvites, (IMP *)&_logos_orig$_ungrouped$BBMCoreAccess$getSponsoredInvites);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCoreAccess, @selector(revalidateStickers), (IMP)&_logos_method$_ungrouped$BBMCoreAccess$revalidateStickers, (IMP *)&_logos_orig$_ungrouped$BBMCoreAccess$revalidateStickers);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCoreAccess, @selector(shouldAllowUserToRevalidateStickers), (IMP)&_logos_method$_ungrouped$BBMCoreAccess$shouldAllowUserToRevalidateStickers, (IMP *)&_logos_orig$_ungrouped$BBMCoreAccess$shouldAllowUserToRevalidateStickers);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCoreAccess, @selector(markEphemeralMessageAsViewed:), (IMP)&_logos_method$_ungrouped$BBMCoreAccess$markEphemeralMessageAsViewed$, (IMP *)&_logos_orig$_ungrouped$BBMCoreAccess$markEphemeralMessageAsViewed$);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCoreAccess, @selector(markEphemeralMessage:asHidden:), (IMP)&_logos_method$_ungrouped$BBMCoreAccess$markEphemeralMessage$asHidden$, (IMP *)&_logos_orig$_ungrouped$BBMCoreAccess$markEphemeralMessage$asHidden$);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCoreAccess, @selector(markMessagesRead:withConversationURI:), (IMP)&_logos_method$_ungrouped$BBMCoreAccess$markMessagesRead$withConversationURI$, (IMP *)&_logos_orig$_ungrouped$BBMCoreAccess$markMessagesRead$withConversationURI$);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMCoreAccess, @selector(sendTypingNotificationForConversationURI:isTyping:), (IMP)&_logos_method$_ungrouped$BBMCoreAccess$sendTypingNotificationForConversationURI$isTyping$, (IMP *)&_logos_orig$_ungrouped$BBMCoreAccess$sendTypingNotificationForConversationURI$isTyping$);}Class _logos_class$_ungrouped$BBMADSAd = objc_getClass("BBMADSAd"); _logos_superclass$_ungrouped$BBMADSAd = class_getSuperclass(_logos_class$_ungrouped$BBMADSAd); { _logos_register_hook$(_logos_class$_ungrouped$BBMADSAd, @selector(invitationIsAd), (IMP)&_logos_method$_ungrouped$BBMADSAd$invitationIsAd, (IMP *)&_logos_orig$_ungrouped$BBMADSAd$invitationIsAd);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMADSAd, @selector(pendingRender), (IMP)&_logos_method$_ungrouped$BBMADSAd$pendingRender, (IMP *)&_logos_orig$_ungrouped$BBMADSAd$pendingRender);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMADSAd, @selector(cachedAd), (IMP)&_logos_method$_ungrouped$BBMADSAd$cachedAd, (IMP *)&_logos_orig$_ungrouped$BBMADSAd$cachedAd);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMADSAd, @selector(isInvite), (IMP)&_logos_method$_ungrouped$BBMADSAd$isInvite, (IMP *)&_logos_orig$_ungrouped$BBMADSAd$isInvite);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMADSAd, @selector(isExpired), (IMP)&_logos_method$_ungrouped$BBMADSAd$isExpired, (IMP *)&_logos_orig$_ungrouped$BBMADSAd$isExpired);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMADSAd, @selector(invitationIsIncoming), (IMP)&_logos_method$_ungrouped$BBMADSAd$invitationIsIncoming, (IMP *)&_logos_orig$_ungrouped$BBMADSAd$invitationIsIncoming);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMADSAd, @selector(isVideoAd), (IMP)&_logos_method$_ungrouped$BBMADSAd$isVideoAd, (IMP *)&_logos_orig$_ungrouped$BBMADSAd$isVideoAd);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMADSAd, @selector(isHtmlAd), (IMP)&_logos_method$_ungrouped$BBMADSAd$isHtmlAd, (IMP *)&_logos_orig$_ungrouped$BBMADSAd$isHtmlAd);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMADSAd, @selector(isChannelAd), (IMP)&_logos_method$_ungrouped$BBMADSAd$isChannelAd, (IMP *)&_logos_orig$_ungrouped$BBMADSAd$isChannelAd);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMADSAd, @selector(isDisplayAd), (IMP)&_logos_method$_ungrouped$BBMADSAd$isDisplayAd, (IMP *)&_logos_orig$_ungrouped$BBMADSAd$isDisplayAd);}Class _logos_class$_ungrouped$BBMRichUpdatesViewController = objc_getClass("BBMRichUpdatesViewController"); _logos_superclass$_ungrouped$BBMRichUpdatesViewController = class_getSuperclass(_logos_class$_ungrouped$BBMRichUpdatesViewController); { _logos_register_hook$(_logos_class$_ungrouped$BBMRichUpdatesViewController, @selector(allowScrollingAdInsertion), (IMP)&_logos_method$_ungrouped$BBMRichUpdatesViewController$allowScrollingAdInsertion, (IMP *)&_logos_orig$_ungrouped$BBMRichUpdatesViewController$allowScrollingAdInsertion);}Class _logos_class$_ungrouped$BBMPingLimitHelper = objc_getClass("BBMPingLimitHelper"); _logos_superclass$_ungrouped$BBMPingLimitHelper = class_getSuperclass(_logos_class$_ungrouped$BBMPingLimitHelper); { _logos_register_hook$(_logos_class$_ungrouped$BBMPingLimitHelper, @selector(isLimitReached), (IMP)&_logos_method$_ungrouped$BBMPingLimitHelper$isLimitReached, (IMP *)&_logos_orig$_ungrouped$BBMPingLimitHelper$isLimitReached);}Class _logos_class$_ungrouped$GADDevice = objc_getClass("GADDevice"); _logos_superclass$_ungrouped$GADDevice = class_getSuperclass(_logos_class$_ungrouped$GADDevice); { _logos_register_hook$(_logos_class$_ungrouped$GADDevice, @selector(OSIsSupported), (IMP)&_logos_method$_ungrouped$GADDevice$OSIsSupported, (IMP *)&_logos_orig$_ungrouped$GADDevice$OSIsSupported);}{ _logos_register_hook$(_logos_class$_ungrouped$GADDevice, @selector(isJailbroken), (IMP)&_logos_method$_ungrouped$GADDevice$isJailbroken, (IMP *)&_logos_orig$_ungrouped$GADDevice$isJailbroken);}Class _logos_class$_ungrouped$PPRiskDeviceData = objc_getClass("PPRiskDeviceData"); Class _logos_metaclass$_ungrouped$PPRiskDeviceData = object_getClass(_logos_class$_ungrouped$PPRiskDeviceData); _logos_supermetaclass$_ungrouped$PPRiskDeviceData = class_getSuperclass(_logos_metaclass$_ungrouped$PPRiskDeviceData); { _logos_register_hook$(_logos_metaclass$_ungrouped$PPRiskDeviceData, @selector(isJailBroken), (IMP)&_logos_meta_method$_ungrouped$PPRiskDeviceData$isJailBroken, (IMP *)&_logos_meta_orig$_ungrouped$PPRiskDeviceData$isJailBroken);}Class _logos_class$_ungrouped$BBMGenEphemeralMetaData = objc_getClass("BBMGenEphemeralMetaData"); _logos_superclass$_ungrouped$BBMGenEphemeralMetaData = class_getSuperclass(_logos_class$_ungrouped$BBMGenEphemeralMetaData); { _logos_register_hook$(_logos_class$_ungrouped$BBMGenEphemeralMetaData, @selector(_screenshot), (IMP)&_logos_method$_ungrouped$BBMGenEphemeralMetaData$_screenshot, (IMP *)&_logos_orig$_ungrouped$BBMGenEphemeralMetaData$_screenshot);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMGenEphemeralMetaData, @selector(_viewed), (IMP)&_logos_method$_ungrouped$BBMGenEphemeralMetaData$_viewed, (IMP *)&_logos_orig$_ungrouped$BBMGenEphemeralMetaData$_viewed);}Class _logos_class$_ungrouped$BBMMessage = objc_getClass("BBMMessage"); _logos_superclass$_ungrouped$BBMMessage = class_getSuperclass(_logos_class$_ungrouped$BBMMessage); { _logos_register_hook$(_logos_class$_ungrouped$BBMMessage, @selector(canBeMarkedRead), (IMP)&_logos_method$_ungrouped$BBMMessage$canBeMarkedRead, (IMP *)&_logos_orig$_ungrouped$BBMMessage$canBeMarkedRead);}Class _logos_class$_ungrouped$BBMMessageCell = objc_getClass("BBMMessageCell"); Class _logos_metaclass$_ungrouped$BBMMessageCell = object_getClass(_logos_class$_ungrouped$BBMMessageCell); _logos_supermetaclass$_ungrouped$BBMMessageCell = class_getSuperclass(_logos_metaclass$_ungrouped$BBMMessageCell); { _logos_register_hook$(_logos_metaclass$_ungrouped$BBMMessageCell, @selector(automaticallyNotifiesObserversOfMessage), (IMP)&_logos_meta_method$_ungrouped$BBMMessageCell$automaticallyNotifiesObserversOfMessage, (IMP *)&_logos_meta_orig$_ungrouped$BBMMessageCell$automaticallyNotifiesObserversOfMessage);}Class _logos_class$_ungrouped$BBMEphemeralMetaData = objc_getClass("BBMEphemeralMetaData"); _logos_superclass$_ungrouped$BBMEphemeralMetaData = class_getSuperclass(_logos_class$_ungrouped$BBMEphemeralMetaData); { _logos_register_hook$(_logos_class$_ungrouped$BBMEphemeralMetaData, @selector(expire), (IMP)&_logos_method$_ungrouped$BBMEphemeralMetaData$expire, (IMP *)&_logos_orig$_ungrouped$BBMEphemeralMetaData$expire);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMEphemeralMetaData, @selector(messageTimerIsActive), (IMP)&_logos_method$_ungrouped$BBMEphemeralMetaData$messageTimerIsActive, (IMP *)&_logos_orig$_ungrouped$BBMEphemeralMetaData$messageTimerIsActive);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMEphemeralMetaData, @selector(remainingTime), (IMP)&_logos_method$_ungrouped$BBMEphemeralMetaData$remainingTime, (IMP *)&_logos_orig$_ungrouped$BBMEphemeralMetaData$remainingTime);}{ _logos_register_hook$(_logos_class$_ungrouped$BBMEphemeralMetaData, @selector(_remainingTime), (IMP)&_logos_method$_ungrouped$BBMEphemeralMetaData$_remainingTime, (IMP *)&_logos_orig$_ungrouped$BBMEphemeralMetaData$_remainingTime);}} }
#line 894 "/Users/mac/Desktop/BBMPlus/BBMPlus/BBMPlus.xm"
