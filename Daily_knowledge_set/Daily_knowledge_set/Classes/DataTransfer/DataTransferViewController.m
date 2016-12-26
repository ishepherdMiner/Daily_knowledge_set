//
//  DataTransferViewController.m
//  Daily_knowledge_set
//
//  Created by Jason on 08/12/2016.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "DataTransferViewController.h"
#import "DelegateView.h"

@interface DataTransferViewController ()

@end

@implementation DataTransferViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = [NSString stringWithFormat:@"%@-属性",self.title];
    self.view.backgroundColor = [UIColor whiteColor];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    
    // - target action
    DelegateView *dView = [[DelegateView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 80)];
    [scrollView addSubview:dView];
    
    [self.view addSubview:scrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
