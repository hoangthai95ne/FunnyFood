//
//  address.h
//  FunnyFood
//
//  Created by Hoàng Thái on 3/21/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DetailAddressViewController.h"

@interface Address : NSObject
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *contact;
@property (nonatomic, strong) NSString *openTime;
@property (nonatomic, strong) NSString *mapPhotoName;
@property (nonatomic, strong) DetailAddressViewController* addressViewController;

- (instancetype)initWithAddress :(NSString*)address andOpenTime: (NSString*)openTime andContact: (NSString*)contact mapPhotoName:(NSString*)name;

@end
