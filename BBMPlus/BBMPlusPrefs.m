//  Created by Fahadaljuwausri on 6/12/17.
//  Copyright (c) 2017 Fahad. All rights reserved.

#import "BBMPlusPrefs.h"
#import <Social/Social.h>
#import <Accounts/Accounts.h>

#define kTintColor [UIColor colorWithRed:1.00f green:0.50f blue:0.00f alpha:1.0f]



@interface BBMPlusPrefs () {
    FRPreferences *preferencesTable;
}
    @end

@implementation BBMPlusPrefs
@dynamic bundle;
    
- (void)loadBBMPlusPrefsOnViewController:(UIViewController *)viewController { }


//dimsissPrefs
- (void)dismissPreferencesTable {
    [preferencesTable dismissViewControllerAnimated:YES completion:nil];
}

 //resourcesBundle
- (NSString *)BBMPlusPrefsresourcesBundlePath {
        return [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"/Library/Application Support/BBMPlus/BBMPlus.bundle"];;
}
    
- (NSBundle *)BBMPlusresourcesBundle {
    return [NSBundle bundleWithPath:[self BBMPlusPrefsresourcesBundlePath]];
}
    

- (UIImage *)imageNamed:(NSString *)name {
    //return [UIImage imageNamed:name inBundle:[self BBMPlusresourcesBundle]];
    return [UIImage imageNamed:name inBundle:[self BBMPlusresourcesBundle] compatibleWithTraitCollection:nil];
}
- (BOOL)bundel {
    return YES;
}

//localizedString
- (NSString *)localizedStringForKey:(NSString *)key {
    static NSBundle *fallbackBundle;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        fallbackBundle = [NSBundle bundleWithPath:[[self BBMPlusPrefsresourcesBundlePath] stringByAppendingPathComponent:@"en.lproj"]];
    });
    NSString *localString = [[self BBMPlusresourcesBundle] localizedStringForKey:key value:key table:nil];
    
    if (!localString || [localString isEqualToString:key] || localString.length < 1) {
        localString = [fallbackBundle localizedStringForKey:key value:key table:nil];
    }
    return localString ? : key;
}
    
    @end
