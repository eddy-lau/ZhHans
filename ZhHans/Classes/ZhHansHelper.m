//
//  ChineseEncoding.m
//  ChineseDailyBread
//
//  Created by Eddie Hiu-Fung Lau on 6/3/15.
//
//

#import "ZhHansHelper.h"
#import "NSString+ZhHans.h"

#define kPrefKey @"com.touchutility.ZhHansHelper.preferredEncoding"
#define kSysEncodingKey @"com.touchutility.ZhHansHelper.systemEncoding"

NSString *kZhHantEncoding = @"zh-Hant";
NSString *kZhHansEncoding = @"zh-Hans";
NSString *ZhEncodingDidChangeNotification = @"ZhEncodingDidChangeNotification";

static NSString *preferredEncoding;

@implementation ZhHansHelper

+ (NSString *) preferredEncoding {
    
    if (preferredEncoding == NULL) {
        
        NSString *sysLanguage = [[NSLocale preferredLanguages] objectAtIndex:0];
        
        NSString *encoding = [[NSUserDefaults standardUserDefaults] valueForKey:kPrefKey];
        if ([encoding isEqualToString:ZH_HANT]) {
            preferredEncoding = ZH_HANT;
        } else if ([encoding isEqualToString:ZH_HANS]) {
            preferredEncoding = ZH_HANS;
        }
        
        NSString *savedSystemEncoding = [[NSUserDefaults standardUserDefaults] valueForKey:kSysEncodingKey];
        if (![savedSystemEncoding isEqualToString:sysLanguage]) {
            preferredEncoding = nil;
            [[NSUserDefaults standardUserDefaults] setValue:sysLanguage forKey:kSysEncodingKey];
        }
        
        if (preferredEncoding == nil) {
            
            if ([sysLanguage hasPrefix:@"zh-Hant"] || [sysLanguage hasPrefix:@"zh-HK"]) {
                [self setPreferredEncodingInternal:ZH_HANT];
            } else if ([sysLanguage hasPrefix:@"zh-Hans"]) {
                [self setPreferredEncodingInternal:ZH_HANS];
            }
            
        }
        
        if (preferredEncoding == nil) {
            [self setPreferredEncodingInternal:ZH_HANT];
        }
    }
    return preferredEncoding;
}

+ (void) setPreferredEncodingInternal:(NSString *)encoding {
    
    if (![preferredEncoding isEqualToString:encoding]) {
        
        if ([encoding isEqualToString:ZH_HANT]) {
            preferredEncoding = ZH_HANT;
        } else if ([encoding isEqualToString:ZH_HANS]) {
            preferredEncoding = ZH_HANS;
        } else {
            preferredEncoding = ZH_HANT;
        }
        
        [[NSUserDefaults standardUserDefaults] setValue:preferredEncoding forKey:kPrefKey];
        
    }
}

+ (void) setPreferredEncoding:(NSString *)encoding {
    
    [self setPreferredEncodingInternal:encoding];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ZhEncodingDidChangeNotification
                                                        object:self
                                                      userInfo:@{@"encoding":preferredEncoding}];
    
}

+ (NSString *) encodedStringFromZhHantString:(NSString *)tcString {

    if ([self preferredEncoding] == ZH_HANS) {
        return [tcString convertToZhHans];
    } else {
        return tcString;
    }
    
}

@end

inline NSString *_zh(NSString *t) {
    return [ZhHansHelper encodedStringFromZhHantString:t];
}