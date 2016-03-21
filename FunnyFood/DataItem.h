//
//  DataItem.h
//  FunnyFood
//
//  Created by Hoàng Thái on 3/6/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DataItem : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *saleOff;

- (instancetype)initWithName: (NSString*)name 
                    andPrice: (NSString*)price 
                   withImage: (NSString*)image 
             andSaleOffPrice: (NSString*)saleOff;

@end
