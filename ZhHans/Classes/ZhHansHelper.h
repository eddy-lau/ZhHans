//
//  ChineseEncoding.h
//  ChineseDailyBread
//
//  Created by Eddie Hiu-Fung Lau on 6/3/15.
//
//

#import <Foundation/Foundation.h>

@interface ZhHansHelper : NSObject

+ (void) setPreferredEncoding:(NSString *)encoding;
+ (NSString *) preferredEncoding;
+ (NSString *) encodedStringFromZhHantString:(NSString *)tcString;

@end

extern NSString *kZhHantEncoding;
extern NSString *kZhHansEncoding;
extern NSString *_zh(NSString *t);

#define ZH_HANT kZhHantEncoding
#define ZH_HANS kZhHansEncoding
#define ZH(s) _zh((s))
#define ZHLocalizedString(t,c) ZH(NSLocalizedString((t),(c)))
#define IS_HANT ([ZhHansHelper preferredEncoding]==kZhHantEncoding)
#define IS_HANS ([ZhHansHelper preferredEncoding]==kZhHansEncoding)

extern NSString *ZhEncodingDidChangeNotification;

