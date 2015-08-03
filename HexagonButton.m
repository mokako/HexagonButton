#import "HexagonButton.h"

@implementation HexagonButton
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        color = [UIColor whiteColor];
        lineWidth = 0.0;
        lineColor = [UIColor clearColor];
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    [color setFill];
    
    CGFloat p1 = (self.frame.size.width - lineWidth * 3) / 2;
    CGFloat p3 = lineWidth * 1.5;
    CGFloat p4 = p1 / 2;
    CGFloat p2 = p4 * sqrtf(3);
    
    CGFloat p1f = (self.frame.size.width - lineWidth * 2) / 2;
    CGFloat p3f = lineWidth;
    CGFloat p4f = p1f / 2;
    CGFloat p2f = p4f * sqrtf(3);
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetAllowsAntialiasing(ctx, true);

    CGContextMoveToPoint(ctx,p4 + p3,p3);
    CGContextAddLineToPoint(ctx,p4 + p1 + p3,p3);
    CGContextAddLineToPoint(ctx,p1 * 2 + p3,p2 + p3);
    CGContextAddLineToPoint(ctx,p4 + p1 + p3,p2 * 2 + p3);
    CGContextAddLineToPoint(ctx,p4 + p3,p2 * 2 + p3);
    CGContextAddLineToPoint(ctx,p3,p2 + p3);
    CGContextAddLineToPoint(ctx,p4 + p3,p3);
    CGContextClosePath(ctx);
    CGContextFillPath(ctx);

    CGContextSetLineWidth(ctx, lineWidth);
    CGContextSetStrokeColorWithColor(ctx,lineColor.CGColor);
    CGContextMoveToPoint(ctx,p4f + p3f , p3f);
    CGContextAddLineToPoint(ctx,p4f + p1f + p3f,p3f);
    CGContextAddLineToPoint(ctx,p1f * 2 + p3f,p2f + p3f);
    CGContextAddLineToPoint(ctx,p4f + p1f + p3f,p2f * 2 + p3f);
    CGContextAddLineToPoint(ctx,p4f + p3f,p2f * 2 + p3f);
    CGContextAddLineToPoint(ctx,p3f,p2f + p3f);
    CGContextAddLineToPoint(ctx,p4f + p3f,p3f);
    CGContextClosePath(ctx);
    
    CGContextStrokePath(ctx);
}


-(void)setBackgroundColor:(UIColor *)backgroundColor{
    color = backgroundColor;
    [self setNeedsDisplay];
}

-(void)setBorder:(UIColor *)lcolor width:(CGFloat)width{
    lineWidth = width;
    lineColor = lcolor;
    [self setNeedsDisplay];
}

@end
