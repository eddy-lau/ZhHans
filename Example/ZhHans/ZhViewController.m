//
//  ZhViewController.m
//  ZhHans
//
//  Created by Eddie Lau on 06/01/2016.
//  Copyright (c) 2016 Eddie Lau. All rights reserved.
//

#import "ZhViewController.h"
#import "ZhHansHelper.h"

@interface ZhViewController () <UITextViewDelegate>

@property (nonatomic,weak) IBOutlet UITextView *hantTextView;
@property (nonatomic,weak) IBOutlet UITextView *hansTextView;

@end

@implementation ZhViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [ZhHansHelper setPreferredEncoding:kZhHansEncoding];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITextViewDelegate

- (void)textViewDidChange:(UITextView *)textView {
    
    if (textView == self.hantTextView) {
        self.hansTextView.text = ZH(self.hantTextView.text);
    }
}

@end
