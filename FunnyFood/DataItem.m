//
//  DataItem.m
//  FunnyFood
//
//  Created by Hoàng Thái on 3/6/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "DataItem.h"

@implementation DataItem

- (instancetype)initWithName:(NSString *)name andPrice:(NSString *)price withImage:(NSString *)image andSaleOffPrice:(NSString *)saleOff {
    if (self = [super init]) {
        self.name = name;
        self.price = price;
        self.image = [UIImage imageNamed:image];
        self.saleOff = saleOff;
    }
    return self;
}

@end
