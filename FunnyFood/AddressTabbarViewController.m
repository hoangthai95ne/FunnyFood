//
//  AddressTabbarViewController.m
//  FunnyFood
//
//  Created by Hoàng Thái on 3/6/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "AddressTabbarViewController.h"
#import "Address.h"

@interface AddressTabbarViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation AddressTabbarViewController {
    NSMutableArray *arrayAddress;
    NSArray *cellName;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height) style:(UITableViewStylePlain)];
    cellName = [[NSArray alloc] initWithObjects:@"Cơ Sở Nguyễn Đình Chiểu", @"Cơ Sở Lê Văn Lương", nil];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    Address *address1 = [[Address alloc] initWithAddress:@"Số 14, ngõ 4, Nguyễn Đình Chiểu, Hai Bà Trưng, Hà Nội"
                                             andOpenTime:@"Mở cửa: 9:00 đến 18:00"
                                              andContact:@"Mr Cường : 090.220.9011"
                                            mapPhotoName:@"mapNDC.png"];
    Address *address2 = [[Address alloc] initWithAddress:@"Phòng 2304, tầng 23, toà nhà StarCity, 81 Lê Văn Lương, Nhân Chính, Thanh Xuân Hà Nội"
                                             andOpenTime:@"Mở cửa: 9:00 đến 18:00"
                                              andContact:@"Mr. Cần: 093.222.5065"
                                            mapPhotoName:@"mapLVL.png"];
    
    arrayAddress = [[NSMutableArray alloc] initWithObjects:address1, address2, nil];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    [self.view addSubview:self.tableView];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell= [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell = [cell initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"Cell"];
    NSString *nameCell = cellName[indexPath.row];
    cell.textLabel.text = nameCell;
    cell.textLabel.numberOfLines = 1;
    
    cell.imageView.image = [UIImage imageNamed:@"location.png"];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrayAddress.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Address *address = arrayAddress[indexPath.row];
    DetailAddressViewController *addressViewController = [[DetailAddressViewController alloc] initWithNibName:@"DetailAddressViewController" bundle:nil];
    addressViewController.addressString = address.address;
    addressViewController.openTimeString = address.openTime;
    addressViewController.contactString = address.contact;
    addressViewController.photoName = address.mapPhotoName;
//    [address.addressViewController.scrollView addSubview:photo];
    [self.navigationController pushViewController:addressViewController animated:YES];
}

@end
