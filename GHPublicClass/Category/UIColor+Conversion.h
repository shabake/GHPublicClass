//
//  UIColor+Conversion.h
//  GHPublicClass
//
//  Created by zhaozhiwei on 2019/6/13.
//  Copyright © 2019年 danxia. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Conversion)
#pragma mark -
- (BOOL)isEqualToColor:(UIColor *)otherColor;


#pragma mark - 十六进制转UIColor
#pragma mark -
/**
 *  十六进制转color
 *
 *  @param color 0XFFFFFF 或 #FFFFFF 或 0xFFFFFF  0xFF FF FF
 *  @param alpha 0.0-1.0
 *
 *  @return 传入参数无效返回 clearcolor
 */
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

/**
 *  创建alpha默认为1的颜色
 *
 *  @param color 0XFFFFFF 或 #FFFFFF
 *
 *  @return 创建的颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)color;
@end

NS_ASSUME_NONNULL_END
