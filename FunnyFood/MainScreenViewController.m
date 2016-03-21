//
//  MainScreenViewController.m
//  FunnyFood
//
//  Created by Hoàng Thái on 3/6/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "MainScreenViewController.h"
#import "DetailScreen.h"

@interface MainScreenViewController ()
@property (nonatomic, strong) DetailScreen *detailScreen;
@end

@implementation MainScreenViewController {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Back" 
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:nil
                                                                            action:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnIceCream:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Ice Cream";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)btnDrink:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Drink";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)btnBirthday:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"BirthDay";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)btnCookies:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Cookies";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)btnBread:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Bread";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)btnFruits:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Fruits";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)noodle:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Noodle";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}
- (IBAction)wine:(id)sender {
    if (!self.detailScreen) {
        self.detailScreen = [[DetailScreen alloc] init];
    }
    self.detailScreen.stringTitleDetailScreen = @"Wines";
    [self.navigationController pushViewController:self.detailScreen animated:YES];
}


@end
