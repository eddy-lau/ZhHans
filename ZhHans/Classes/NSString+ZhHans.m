//
//  NSString+ZhHans.m
//  TouchEbook
//
//  Created by Eddie Lau on 02/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "NSString+ZhHans.h"
#import "ZhHansTable.h"

@implementation NSString (ZhHans)

- (NSString *) convertToZhHans {
    
    NSDictionary *extraDict = [ZhHansTable extraDictionary];
    NSDictionary *extraDict2 = [ZhHansTable extraDictionary2];
    
    NSUInteger len = [self length];
    NSMutableString *result = [NSMutableString stringWithCapacity:len];
    for (NSInteger i = 0; i<len; i++) {
        
        if (i + 1 < len) {
            
            NSString *tStr = [self substringWithRange:NSMakeRange(i, 2)];
            NSString *sStr = extraDict2[tStr];
            if (sStr) {
                [result appendString:sStr];
                i++;
                continue;
            }
            
        }
        
        NSString *tStr = [self substringWithRange:NSMakeRange(i, 1)];
        NSString *sStr = extraDict[tStr];
        if (sStr) {
            [result appendString:sStr];
        } else {
            unichar t = [self characterAtIndex:i];
            NSString *s = [ZhHansTable T2S:t];
            if (s) {
                [result appendString:s];
            }
        }
    }
    return result;
    
}

@end
