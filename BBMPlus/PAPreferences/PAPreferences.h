//
//  PAPreferences.h
//  PAPreferencesSample
//
//

#import <Foundation/Foundation.h>

extern NSString * const PAPreferencesDidChangeNotification;
extern NSString * const PAPreferencesChangedPropertyKey;

@interface PAPreferences : NSObject {
    NSDictionary *_properties;
}

@property (nonatomic, assign) BOOL shouldAutomaticallySynchronize;

+ (NSString *)defaultsKeyForPropertyName:(NSString *)key;
+ (instancetype)sharedInstance;

- (BOOL)synchronize;
- (NSUserDefaults *)userDefaults;

@end
