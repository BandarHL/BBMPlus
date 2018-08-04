//
//  Save.h
//  BBMPlus
//
//  Created by Mac on 1/14/18.
//
#import <UIKit/UIKit.h>

@interface BBMPictureOverlayView : UIView
{
    UIImageView *_imageView;
    
}

@property (nonatomic, retain) UIImageView *imageView;
- (void)displayImage;
- (void)save; // NEW
@end
