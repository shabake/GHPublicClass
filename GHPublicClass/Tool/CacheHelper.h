//
//  CacheHelper.h
//  GHPublicClass
//
//  Created by zhaozhiwei on 2019/6/13.
//  Copyright © 2019年 danxia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CacheHelper : NSObject

+ (instancetype)sharedManager;

- (void)saveDataWithObject: (id)object key: (NSString *)key;
- (id)readDataWithKey: (NSString *)Key;
- (void)deleteDataWithKey: (NSString *)Key;

@end

NS_ASSUME_NONNULL_END
