//
//  AboutTabbarViewController.m
//  FunnyFood
//
//  Created by Hoàng Thái on 3/6/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "AboutTabbarViewController.h"

@interface AboutTabbarViewController ()

@end

@implementation AboutTabbarViewController {
    UITextView *textView;
    NSTimer *timer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor colorWithRed:237 green:240 blue:185 alpha:0.9];
    
    textView = [[UITextView alloc] initWithFrame:CGRectMake(30, 100, self.view.bounds.size.width - 30*2, self.view.bounds.size.height - 100*2)];
    
    textView.text = @"Bản quyền tài liệu giảng dạy\n\nToàn bộ nội dung đào tạo bao gồm bài giảng slide, mã nguồn minh họa, video, ... thuộc bản quyền sở hữu trí tuệ của Techmaster và giảng viên trực tiếp làm ra đồng sở hữu.\n\nThời gian xem tài liệu khóa học có hiệu lực 24 tháng kể từ ngày đóng học phí.\n\nHọc viên không được phép chia sẻ, phát tán dưới bất kỳ hình thức nào mà không có sự đồng ý của Techmaster. Ngoại lệ, mã nguồn mẫu được phép tái sử dụng cho mục đích công việc và thương mại.\n\nVới các mã nguồn Techmaster mở công khai, việc sử dụng sẽ tuân thủ theo giấy phép cụ thể trong từng dự án.\n\nsTại một thời điểm, một tài khoản chỉ được phép truy cập từ một địa chỉ IP. Vi phạm điều này sẽ bị nhắc nhở và có thể dẫn đến ban nick trong thời gian 1 tuần đến 1 tháng";
    
    textView.textColor = [UIColor redColor];
    textView.font = [UIFont fontWithName:@"Courier" size:18];
    textView.backgroundColor = [UIColor clearColor];
    textView.editable = NO;
    
    [self.view addSubview:textView];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.0167 
                                             target:self
                                           selector:@selector(scrollTextView) 
                                           userInfo:nil
                                            repeats:YES];
    [textView setContentOffset:CGPointMake(textView.contentOffset.x, -200)];
}

- (void) scrollTextView {
    
    CGPoint point = CGPointMake(textView.contentOffset.x, textView.contentOffset.y + 0.5);
    if (textView.contentOffset.y > 650) {
        point = CGPointMake(textView.contentOffset.x, -200);
    }
    [textView setContentOffset:point animated:NO];
}

- (void) viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:YES];
    [timer invalidate];
    timer = nil;
}


@end
