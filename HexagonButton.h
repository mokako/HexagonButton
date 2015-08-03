#import <UIKit/UIKit.h>

@interface HexagonButton : UIButton
{
    UIColor *color;
    UIColor *lineColor;
    CGFloat lineWidth;
}

-(void)setBorder:(UIColor *)color width:(CGFloat)width;
@end
