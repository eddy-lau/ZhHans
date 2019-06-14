//
//  ZhHansTable.m
//  TouchEbook
//
//  Created by Eddie Lau on 02/12/2010.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ZhHansTable.h"

#include "T2S2.h"

@implementation ZhHansTable

+ (NSString *) T2S:(unichar)t {
    if (t>=0x42B7) {
        return T2S_TABLE2[t - 0x42B7];
    } else {
        return [NSString stringWithFormat:@"%C", t];
    }    
}

static NSDictionary *extraTable = nil;

+ (NSDictionary *) extraDictionary {
    
    if (extraTable) {
        return extraTable;
    }
    
    extraTable =
    @{
        @"淨":@"净",
        @"穀":@"谷",
        @"榖":@"谷",
        @"藉":@"借",
        @"鍊":@"链",
        @"籲":@"吁",
        @"牠":@"它",
        @"巖":@"岩",
        @"餬":@"糊",
        @"衊":@"蔑",
        @"餘":@"余",
        @"徑":@"径",
        @"託":@"托",
        @"週":@"周",
        @"讚":@"赞",
        @"籤":@"签",
        @"畫":@"画",
        @"歎":@"叹",
        @"佈":@"布",
        @"倖":@"幸",
        @"蹟":@"迹",
        @"甦":@"苏",
        @"姪":@"侄",
        @"餵":@"喂",
        @"跨":@"跨",
        @"譭":@"毀",
        @"鐏":@"鐏",
        @"鬨":@"哄",
        @"崙":@"仑"
    };
    
    return extraTable;
}

static NSDictionary *extraTable2 = nil;

+ (NSDictionary *) extraDictionary2 {
    
    if (extraTable2) {
        return extraTable2;
    }
    
    extraTable2 =
    @{
      @"甚麼":@"什么",
      @"甚麽":@"什么",
      @"著作":@"著作",
      @"著名":@"著名",
      @"名著":@"名著",
      @"拾遺":@"拾遺",
      @"彷彿":@"仿佛",
      @"覆轍":@"覆辙",
      @"鍛鍊":@"锻炼",
      @"痲瘋":@"麻风",
      @"傾覆":@"傾覆",
      @"覆亡":@"覆亡",
      @"反覆":@"反覆",
      @"痳瘋":@"麻风",
      @"顛覆":@"顛覆",
      @"覆函":@"覆函"
    };
    
    return extraTable2;
}
    
static NSDictionary *extraTable4 = nil;
    
+ (NSDictionary *) extraDictionary4 {
    
    if (extraTable4) {
        return extraTable4;
    }
    
    extraTable4 =
    @{
      @"翻天覆地":@"翻天覆地"
    };
    
    return extraTable4;
}

@end
