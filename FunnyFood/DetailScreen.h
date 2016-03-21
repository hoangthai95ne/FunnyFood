//
//  DetailScreen.h
//  FunnyFood
//
//  Created by Hoàng Thái on 3/6/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCell.h"
#import "DataItem.h"
#import "ShowDetailScreen.h"

@interface DetailScreen : UITableViewController
@property (nonatomic, strong) NSString* stringTitleDetailScreen;
@property (nonatomic, strong) NSMutableArray *arrayAllItems;

- (void) loadData;

@end
