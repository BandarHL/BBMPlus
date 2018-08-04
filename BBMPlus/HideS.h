//
//  HideS.h
//  BBMPlus
//
//  Created by Mac on 1/12/18.
//

#import <UIKit/UIKit.h>

@interface UIStatusBar
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

@interface UIStatusBarForegroundView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end
