//
//  PAPropertyDescriptor.m
//  PAPreferencesSample
//
//

#import "PAPropertyDescriptor.h"

@implementation PAPropertyDescriptor

- (id)initWithDefaultsKey:(NSString *)defaultsKey type:(NSString *)type isSetter:(BOOL)isSetter {
    if (self = [super init]) {
        _defaultsKey = defaultsKey;
        _type = type;
        _isSetter = isSetter;
    }
    return self;
}

@end
