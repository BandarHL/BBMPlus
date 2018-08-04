//
//  PAPropertyDescriptor.h
//  PAPreferencesSample
//
//

#import <Foundation/Foundation.h>

@interface PAPropertyDescriptor : NSObject

@property (nonatomic, readonly) NSString *defaultsKey;
@property (nonatomic, readonly) BOOL isSetter;
@property (nonatomic, readonly) NSString *type;

- (id)initWithDefaultsKey:(NSString *)defaultsKey type:(NSString *)type isSetter:(BOOL)isSetter;

@end
