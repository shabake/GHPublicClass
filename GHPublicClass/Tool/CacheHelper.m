//
//  CacheHelper.m
//  GHPublicClass
//
//  Created by zhaozhiwei on 2019/6/13.
//  Copyright © 2019年 danxia. All rights reserved.
//

#import "CacheHelper.h"
static CacheHelper *_instance = nil;

@implementation CacheHelper
+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (void)saveDataWithObject: (id)object key: (NSString *)key {
    NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.plist",key]];
    [NSKeyedArchiver archiveRootObject:object toFile:filePath];
}

- (id)readDataWithKey: (NSString *)Key {
    NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.plist",Key]];
    NSObject *object = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    return object;
}

- (void)deleteDataWithKey: (NSString *)Key {
    NSString *filePath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.plist",Key]];

    NSFileManager *fileManager = [NSFileManager defaultManager];
    [fileManager removeItemAtPath:filePath error:nil];
}

@end
