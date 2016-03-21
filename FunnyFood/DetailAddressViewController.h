//
//  DetailAddressViewController.h
//  FunnyFood
//
//  Created by Hoàng Thái on 3/21/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "Address.h"

@interface DetailAddressViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *contact;
@property (weak, nonatomic) IBOutlet UILabel *openTime;
@property (weak, nonatomic) IBOutlet UILabel *address;
@property (nonatomic, strong) NSString* contactString;
@property (nonatomic, strong) NSString* openTimeString;
@property (nonatomic, strong) NSString* addressString;
@property (nonatomic, strong) NSString* photoName;
@property (nonatomic, strong) UIScrollView *scrollView;
@end
