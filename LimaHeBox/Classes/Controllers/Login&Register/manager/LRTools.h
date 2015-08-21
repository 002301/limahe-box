//
//  LRTools.h
//  PaPaQi
//
//  Created by jianting on 13-11-18.
//  Copyright (c) 2013年 iQiYi. All rights reserved.
//

#import "CommonTools.h"

typedef void (^LoginFinish)(void);

@interface LRTools : CommonTools

+ (LRTools *)sharedTools;

/*
 登录到PPQ主界面
 */
+ (void)startPPQifNeeded;

#pragma mark - 验证邮箱、手机号合法性
/*
 验证邮件
 */
+ (BOOL)NSStringIsValidEmail:(NSString *)checkString;
/*
 验证手机号
 */
+ (BOOL)NSStringIsValidPhoneNumber:(NSString*)checkString;
/*
 验证昵称
 */
+ (BOOL)NSStringIsValidUserNick:(NSString *)nickString;
/*
 验证密码
 */
+ (BOOL)NSStringIsValidPassword:(NSString *)passwordString;

/** 判断字符串是否包含 Emoji */
+ (BOOL)NSStringContainsEmoji:(NSString*) string;
/*
 过滤掉非手机号码部分
 */
+ (NSString*)truePhoneString:(NSString*)phone;

#pragma mark - 错误信息
/*
 服务器返回的错误信息
 */
+ (NSString *)errorStringFromDictionary:(NSDictionary *)dic;

#pragma mark - snsist 数组变字符串

+ (NSString *)stringWithList:(id)snsList;

@end