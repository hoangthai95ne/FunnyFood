//
//  DetailAddressViewController.m
//  FunnyFood
//
//  Created by Hoàng Thái on 3/21/16.
//  Copyright © 2016 techmaster. All rights reserved.
//

#import "DetailAddressViewController.h"
#define ZOOMSCALE 1.5

@interface DetailAddressViewController () <UIScrollViewDelegate, UIGestureRecognizerDelegate>
@property (nonatomic, strong) UIImageView *photo;

@end

@implementation DetailAddressViewController {
    UITapGestureRecognizer *singleTap;
    UITapGestureRecognizer *doubleTap;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.contact.text = self.contactString;
    self.openTime.text = self.openTimeString;
    self.address.text = self.addressString;
    self.title = @"Address";
    
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(5, 280, self.view.bounds.size.width + 30, self.view.bounds.size.height - 250 - 64)];
//    self.scrollView.backgroundColor = [UIColor grayColor];
    self.scrollView.delegate = self;
    
    
    self.scrollView.minimumZoomScale = 1.0;
    self.scrollView.maximumZoomScale = 4.0;
    self.scrollView.clipsToBounds = YES;
    self.scrollView.zoomScale = 1.0;
    
    [self.view addSubview:self.scrollView];
    self.photo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:self.photoName]];
    self.photo.frame = CGRectMake(0, -60, self.scrollView.frame.size.width, self.scrollView.frame.size.height);
    self.photo.contentMode = UIViewContentModeScaleAspectFit;
    
    self.photo.userInteractionEnabled = YES;
    self.photo.multipleTouchEnabled = YES;
    
    singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onSingleTap:)];
    singleTap.numberOfTapsRequired = 1;
    singleTap.delegate = self;
    
    doubleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onDoubleTap:)];
    doubleTap.numberOfTapsRequired = 2;
    doubleTap.delegate = self;
    
    [singleTap requireGestureRecognizerToFail:doubleTap];
    
    [self.photo addGestureRecognizer:singleTap];
    [self.photo addGestureRecognizer:doubleTap];
    
    [self.scrollView addSubview:self.photo];
    
}

- (void) onSingleTap: (UITapGestureRecognizer *)tap {
    
    [self zoomRectForScale:self.scrollView.zoomScale * ZOOMSCALE 
                withCenter:[tap locationInView:self.photo]];
    
}

- (void) onDoubleTap: (UITapGestureRecognizer *)tap {
    
    [self zoomRectForScale:self.scrollView.zoomScale / ZOOMSCALE 
                withCenter:[tap locationInView:self.photo]];
    
}

- (void) zoomRectForScale: (CGFloat)scale 
               withCenter: (CGPoint)center {
    
    CGSize scrollViewSize = self.scrollView.bounds.size;
    CGRect zoomRect = CGRectMake(center.x - (scrollViewSize.width / scale) * 0.5, 
                                 center.y - (scrollViewSize.height / scale) * 0.5, 
                                 scrollViewSize.width / scale, 
                                 scrollViewSize.height / scale);
    
    [self.scrollView zoomToRect:zoomRect animated:YES];
    
}

- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.photo;
}

@end
