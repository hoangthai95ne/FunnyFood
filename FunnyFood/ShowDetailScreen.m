//
//  ShowDetailScreen.m
//  FunnyFood
//
//  Created by Hoàng Thái on 3/7/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "ShowDetailScreen.h"

@interface ShowDetailScreen () 
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UILabel *labelPrice;
@property (weak, nonatomic) IBOutlet UILabel *labelSaleOff;

@end

@implementation ShowDetailScreen

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imgView.image = self.imgPhoto;
    self.labelName.text = self.stringName;
    self.labelPrice.text = self.stringPrice;
    self.labelSaleOff.text = self.stringSaleOff;
}



@end
