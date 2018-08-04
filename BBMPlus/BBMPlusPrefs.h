//  Created by Fahadaljuwausri on 6/12/17.
//  Copyright (c) 2017 Fahad. All rights reserved.

#import "PAPreferences.h"
#import "FRPrefs.h"

#define SPrefs           [BBMPlusPrefs sharedInstance]
#define SSCLocalized(x)  [SPrefs localizedStringForKey:x]

#define PROP(x) NSStringFromSelector(@selector(x))


@interface BBMPlusPrefs : PAPreferences
@property (nonatomic, assign) BOOL bundle;
@property (nonatomic, assign) UINavigationController *navigationController;

- (void)loadBBMPlusPrefsOnViewController:(UIViewController *)viewController;
    
- (NSString *)BBMPlusPrefsresourcesBundlePath;
- (UIImage *)imageNamed:(NSString *)name;
- (NSString *)localizedStringForKey:(NSString *)key;
    
    @end
