//
//  DetailScreen.m
//  FunnyFood
//
//  Created by Hoàng Thái on 3/6/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "DetailScreen.h"


@interface DetailScreen ()
@end

@implementation DetailScreen {
    NSMutableArray *arrayDataItems;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self chooseDataItem];
    [self.tableView reloadData];
    self.title = self.stringTitleDetailScreen;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"CustomCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
}

- (void) loadData {
    
    self.arrayAllItems = [[NSMutableArray alloc] init];
    
    [self createDataBirthday];
    [self createDataBread];
    [self createDataCookie];
    [self createDataDrink];
    [self createDataFruit];
    [self createDataIceCream];
    [self createDataNoodle];
    [self createDataWine];
}

- (void) chooseDataItem {
    if ([self.stringTitleDetailScreen isEqualToString:@"Ice Cream"]) {
        [self createDataIceCream];
    }
    if ([self.stringTitleDetailScreen isEqualToString:@"Drink"]) {
        [self createDataDrink];
    }
    if ([self.stringTitleDetailScreen isEqualToString:@"BirthDay"]) {
        [self createDataBirthday];
    }
    if ([self.stringTitleDetailScreen isEqualToString:@"Cookies"]) {
        [self createDataCookie];
    }
    if ([self.stringTitleDetailScreen isEqualToString:@"Bread"]) {
        [self createDataBread];
    }
    if ([self.stringTitleDetailScreen isEqualToString:@"Fruits"]) {
        [self createDataFruit];
    }
    if ([self.stringTitleDetailScreen isEqualToString:@"Wines"]) {
        [self createDataWine];
    }
    if ([self.stringTitleDetailScreen isEqualToString:@"Noodle"]) {
        [self createDataNoodle];
    }
}

- (void) createDataIceCream {
    
    DataItem *iceCream2 = [[DataItem alloc] initWithName:@"Kem sữa dừa" andPrice:@"$12" withImage:@"cream02.jpg" andSaleOffPrice:@"-30%"];
    DataItem *iceCream3 = [[DataItem alloc] initWithName:@"Kem rum nho" andPrice:@"$14" withImage:@"cream03.jpg" andSaleOffPrice:@"-10%"];
    DataItem *iceCream4 = [[DataItem alloc] initWithName:@"Kem Caramel hạnh nhân" andPrice:@"$15" withImage:@"cream04.jpg" andSaleOffPrice:@""];
    DataItem *iceCream5 = [[DataItem alloc] initWithName:@"Kem tuyết cappuccino" andPrice:@"$14" withImage:@"cream05.jpg" andSaleOffPrice:@""];
    DataItem *iceCream6 = [[DataItem alloc] initWithName:@"Kem chocolate" andPrice:@"$24" withImage:@"cream06.jpg" andSaleOffPrice:@""];
    DataItem *iceCream7 = [[DataItem alloc] initWithName:@"Kem tuyết xoài" andPrice:@"$29" withImage:@"cream07.jpg" andSaleOffPrice:@""];
    DataItem *iceCream8 = [[DataItem alloc] initWithName:@"Kem tuyết dâu tây" andPrice:@"$9" withImage:@"cream08.jpg" andSaleOffPrice:@""];
    arrayDataItems = [[NSMutableArray alloc] initWithObjects: iceCream2, iceCream3, iceCream4, iceCream5, iceCream6, iceCream7, iceCream8, nil];
    
    [self.arrayAllItems addObjectsFromArray:arrayDataItems];
}

- (void) createDataDrink {
    DataItem *drink1 = [[DataItem alloc] initWithName:@"Cà phê American" andPrice:@"$23" withImage:@"drink01.jpg" andSaleOffPrice:@""];
    DataItem *drink2 = [[DataItem alloc] initWithName:@"Espresso" andPrice:@"$24" withImage:@"drink02.jpg" andSaleOffPrice:@""];
    DataItem *drink3 = [[DataItem alloc] initWithName:@"Cappuccino" andPrice:@"$28" withImage:@"drink03.jpg" andSaleOffPrice:@""];
    DataItem *drink4 = [[DataItem alloc] initWithName:@"Techmaster Café" andPrice:@"$27" withImage:@"drink04.jpg" andSaleOffPrice:@"free"];
    DataItem *drink5 = [[DataItem alloc] initWithName:@"Hồng trà Srilanca" andPrice:@"$17" withImage:@"drink05.jpg" andSaleOffPrice:@""];
    DataItem *drink6 = [[DataItem alloc] initWithName:@"Hồng trà Bá Tước" andPrice:@"$29" withImage:@"drink06.jpg" andSaleOffPrice:@""];
    DataItem *drink7 = [[DataItem alloc] initWithName:@"Hồng trà đào" andPrice:@"$33" withImage:@"drink07.jpg" andSaleOffPrice:@"free"];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:drink1, drink2, drink3, drink4, drink5, drink6, drink7, nil];
    [self.arrayAllItems addObjectsFromArray:arrayDataItems];

}

- (void) createDataBirthday {
    DataItem *birthday01 = [[DataItem alloc] initWithName:@"Hihi" andPrice:@"$100" withImage:@"birthday11.JPG" andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:birthday01, nil];
    [self.arrayAllItems addObjectsFromArray:arrayDataItems];

}

- (void) createDataCookie {
    DataItem *cookie1 = [[DataItem alloc] initWithName:@"Hạt Điều Napoleon" andPrice:@"$11" withImage:@"cookies01.jpg" andSaleOffPrice:@""];
    DataItem *cookie2 = [[DataItem alloc] initWithName:@"Sôcôla Skate" andPrice:@"$5" withImage:@"cookies02.jpg" andSaleOffPrice:@""];
    DataItem *cookie3 = [[DataItem alloc] initWithName:@"Hạnh nhân mật ong" andPrice:@"$8" withImage:@"cookies03.jpg" andSaleOffPrice:@"-20%"];
    DataItem *cookie4 = [[DataItem alloc] initWithName:@"Sôcôla Chip" andPrice:@"$12" withImage:@"cookies04.jpg" andSaleOffPrice:@""];
    DataItem *cookie5 = [[DataItem alloc] initWithName:@"Cookie Cà phê" andPrice:@"$7" withImage:@"cookies05.jpg" andSaleOffPrice:@""];
    DataItem *cookie6 = [[DataItem alloc] initWithName:@"Cookie Ngũ cốc" andPrice:@"$9" withImage:@"cookies06.jpg" andSaleOffPrice:@""];
    DataItem *cookie7 = [[DataItem alloc] initWithName:@"Feng Li Nguyên vị" andPrice:@"$11" withImage:@"cookies07.jpg" andSaleOffPrice:@""];
    DataItem *cookie8 = [[DataItem alloc] initWithName:@"Feng Li Cà phê" andPrice:@"$10" withImage:@"cookies08.jpg" andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:cookie1, cookie2, cookie3, cookie4, cookie5, cookie6, cookie7, cookie8, nil];
    [self.arrayAllItems addObjectsFromArray:arrayDataItems];

}

- (void) createDataBread {
    DataItem *bread1 = [[DataItem alloc] initWithName:@"Donut" andPrice:@"$3" withImage:@"bread01.jpg" andSaleOffPrice:@""];
    DataItem *bread2 = [[DataItem alloc] initWithName:@"Puoluo" andPrice:@"$5" withImage:@"bread02.jpg" andSaleOffPrice:@""];
    DataItem *bread3 = [[DataItem alloc] initWithName:@"Croissants" andPrice:@"$10" withImage:@"bread03.jpg" andSaleOffPrice:@"-20%"];
    DataItem *bread4 = [[DataItem alloc] initWithName:@"Cà phê Đan Mạch" andPrice:@"$7" withImage:@"bread04.jpg" andSaleOffPrice:@""];
    DataItem *bread5 = [[DataItem alloc] initWithName:@"Dâu tây xanh Đan Mạch" andPrice:@"$6" withImage:@"bread05.jpg" andSaleOffPrice:@""];
    DataItem *bread6 = [[DataItem alloc] initWithName:@"Bánh Táo Đan Mạch" andPrice:@"$9" withImage:@"bread06.jpg" andSaleOffPrice:@""];
    DataItem *bread7 = [[DataItem alloc] initWithName:@"Vua Hokkaido" andPrice:@"$4" withImage:@"bread07.jpg" andSaleOffPrice:@""];
    DataItem *bread8 = [[DataItem alloc] initWithName:@"Cranberry" andPrice:@"$6" withImage:@"bread08.jpg" andSaleOffPrice:@""];
    DataItem *bread9 = [[DataItem alloc] initWithName:@"Sôcôla Thụy Sĩ" andPrice:@"$12" withImage:@"bread09.jpg" andSaleOffPrice:@""];
    DataItem *bread10 = [[DataItem alloc] initWithName:@"Mochi Cà phê" andPrice:@"$7" withImage:@"bread10.jpg" andSaleOffPrice:@""];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:bread1, bread2, bread3, bread4, bread5, bread6, bread7, bread8, bread9, bread10, nil];
    [self.arrayAllItems addObjectsFromArray:arrayDataItems];

}

- (void) createDataFruit {
    DataItem *fruit1 = [[DataItem alloc] initWithName:@"Banana" andPrice:@"$30" withImage:@"Banana.png" andSaleOffPrice:@""];
    DataItem *fruit2 = [[DataItem alloc] initWithName:@"Mango" andPrice:@"$10" withImage:@"mango.jpg" andSaleOffPrice:@"-10%"];
    DataItem *fruit3 = [[DataItem alloc] initWithName:@"Orange" andPrice:@"$8" withImage:@"Orange.png" andSaleOffPrice:@"-40%"];
    DataItem *fruit4 = [[DataItem alloc] initWithName:@"Peach" andPrice:@"$50" withImage:@"Peach.png" andSaleOffPrice:@"+20%"];
    DataItem *fruit5 = [[DataItem alloc] initWithName:@"Strawberry" andPrice:@"$24" withImage:@"Strawberry.png" andSaleOffPrice:@"-5%"];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:fruit1, fruit2, fruit3, fruit4, fruit5, nil];
    [self.arrayAllItems addObjectsFromArray:arrayDataItems];


}

- (void) createDataNoodle {
    DataItem *noodle1 = [[DataItem alloc] initWithName:@"Noodle01" andPrice:@"$10" withImage:@"noodle01.jpg" andSaleOffPrice:@"-50%"];
    DataItem *noodle2 = [[DataItem alloc] initWithName:@"Noodle02" andPrice:@"$28" withImage:@"noodle02.jpg" andSaleOffPrice:@""];
    DataItem *noodle3 = [[DataItem alloc] initWithName:@"Noodle03" andPrice:@"$30" withImage:@"noodle03.jpg" andSaleOffPrice:@""];
    DataItem *noodle4 = [[DataItem alloc] initWithName:@"Noodle04" andPrice:@"$12" withImage:@"noodle04.jpg" andSaleOffPrice:@""];
    DataItem *noodle5 = [[DataItem alloc] initWithName:@"Noodle05" andPrice:@"$8" withImage:@"noodle05.jpg" andSaleOffPrice:@"-20%"];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:noodle1, noodle2, noodle3, noodle4, noodle5, nil];
    [self.arrayAllItems addObjectsFromArray:arrayDataItems];

}

- (void) createDataWine {
    DataItem *wine1 = [[DataItem alloc] initWithName:@"Wine01" andPrice:@"$100" withImage:@"wine01.jpg" andSaleOffPrice:@""];
    DataItem *wine2 = [[DataItem alloc] initWithName:@"Wine02" andPrice:@"$200" withImage:@"wine02.jpg" andSaleOffPrice:@""];
    DataItem *wine3 = [[DataItem alloc] initWithName:@"Wine03" andPrice:@"$150" withImage:@"wine03.jpg" andSaleOffPrice:@"-30%"];
    DataItem *wine4 = [[DataItem alloc] initWithName:@"Wine04" andPrice:@"$210" withImage:@"wine04.jpg" andSaleOffPrice:@""];
    DataItem *wine5 = [[DataItem alloc] initWithName:@"Wine05" andPrice:@"$500" withImage:@"wine05.jpg" andSaleOffPrice:@"-50%"];
    
    arrayDataItems = [[NSMutableArray alloc] initWithObjects:wine1, wine2, wine3, wine4, wine5, nil];
    [self.arrayAllItems addObjectsFromArray:arrayDataItems];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrayDataItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell*)[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    DataItem *item = [[DataItem alloc] init];
    item = arrayDataItems[indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.imgViewThumbnail.image = item.image;
    cell.labelName.text = item.name;
    cell.labelPrice.text = item.price;
    cell.labelSaleOff.text = item.saleOff;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    DataItem *item = [[DataItem alloc] init];
    item = arrayDataItems[indexPath.row];
    ShowDetailScreen *showDetailScreen = [[ShowDetailScreen alloc] init];
    showDetailScreen.stringName = item.name;
    showDetailScreen.stringPrice = item.price;
    showDetailScreen.stringSaleOff = item.saleOff;
    showDetailScreen.imgPhoto = item.image;
    
    [self.navigationController pushViewController:showDetailScreen animated:YES];
}
/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }   
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
