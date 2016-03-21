//
//  Address.m
//  FunnyFood
//
//  Created by Hoàng Thái on 3/21/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "Address.h"

@implementation Address

- (instancetype)initWithAddress:(NSString *)address 
                    andOpenTime:(NSString *)openTime 
                     andContact:(NSString *)contact 
                   mapPhotoName:(NSString *)name {
    
    if (self == [super init]) {
        self.address = address;
        self.openTime = openTime;
        self.contact = contact;
        self.mapPhotoName = name;
    }
//    self.addressViewController = [[DetailAddressViewController alloc] initWithNibName:@"DetailAddressViewController" bundle:nil];
//    self.addressViewController.address.text = self.address;
//    self.addressViewController.openTime.text = self.openTime;
//    self.addressViewController.contact.text = self.contact;
//    UIImageView *photo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
//    [self.addressViewController.scrollView addSubview:photo];
    
    return self;
}

@end
