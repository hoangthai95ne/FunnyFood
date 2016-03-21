//
//  CustomCell.h
//  FunnyFood
//
//  Created by Hoàng Thái on 3/6/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgViewThumbnail;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UILabel *labelPrice;
@property (weak, nonatomic) IBOutlet UILabel *labelSaleOff;

@end
