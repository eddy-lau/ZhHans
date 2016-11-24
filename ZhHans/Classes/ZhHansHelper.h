//
//  ChineseEncoding.h
//  ChineseDailyBread
//
//  Created by Eddie Hiu-Fung Lau on 6/3/15.
//
//

#import <Foundation/Foundation.h>

@interface ZhHansHelper : NSObject

+ (void) setPreferredEncoding:(NSString * _Nonnull)encoding;
+ (NSString * _Nonnull) preferredEncoding;
+ (NSString * _Nonnull) encodedStringFromZhHantString:(NSString * _Nonnull)tcString;

@end

extern NSString * _Nonnull kZhHantEncoding;
extern NSString * _Nonnull kZhHansEncoding;
extern NSString * _Nonnull _zh(NSString * _Nonnull t);

#define ZH_HANT kZhHantEncoding
#define ZH_HANS kZhHansEncoding
#define ZH(s) _zh((s))
#define ZHLocalizedString(t,c) ZH(NSLocalizedString((t),(c)))
#define IS_HANT ([ZhHansHelper preferredEncoding]==kZhHantEncoding)
#define IS_HANS ([ZhHansHelper preferredEncoding]==kZhHansEncoding)

extern NSString * _Nonnull ZhEncodingDidChangeNotification;

