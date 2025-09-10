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
        @"崙":@"仑",
        @"慾":@"欲",
        @"騌":@"鬃",
        @"箇":@"个",
        @"稭":@"秸",
        @"洩":@"泄",
        @"癒":@"愈",
        @"夥":@"伙",
        @"迴":@"回",
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
      @"覆辙":@"覆辙",
      @"鍛鍊":@"锻炼",
      @"痲瘋":@"麻风",
      @"麻瘋":@"麻风",
      @"傾覆":@"傾覆",
      @"覆亡":@"覆亡",
      @"反覆":@"反覆",
      @"痳瘋":@"麻风",
      @"顛覆":@"顛覆",
      @"覆函":@"覆函",
      @"覆沒":@"覆沒",
      @"覆蓋":@"覆盖",
      @"抽瘋":@"抽风",
      @"遮覆":@"遮覆",
      @"覆舟":@"覆舟",
      @"覆庇":@"覆庇",
      @"答覆":@"答覆",
      @"覆滅":@"覆灭",
      @"𢃇":@"𢃇", // This is a 2x16 bit word.
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
      @"翻天覆地":@"翻天覆地",
      @"翻來覆去":@"翻来覆去",
      @"魯格曼著":@"鲁格曼著",
    };
    
    return extraTable4;
}

@end
