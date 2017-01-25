//
//  OCStringViewController.m
//  Daily_knowledge_set
//
//  Created by Jason on 25/01/2017.
//  Copyright © 2017 Jason. All rights reserved.
//

#import "SwiftStringViewController.h"

@interface SwiftStringViewController ()

@end

@implementation SwiftStringViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self forEachInObjc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)forEachInObjc {
    NSArray *datas = @[@1,@2,@3];
    
    for (int i = 0; i < datas.count; ++i) {
        NSLog(@"forI:%@",datas[i]);
    }
    
    for (NSNumber *d in datas) {
        NSLog(@"forin:%@",d);
    }
    
    [datas enumerateObjectsUsingBlock:^(id  _Nonnull d, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"enumerate:%@",d);
    }];
}

- (void)forEachStringInObjc {
    NSString *s = @"testString";
    
    // forI
    for (int i = 0; i < s.length; ++i) {
        NSLog(@"%c",[s characterAtIndex:i]);
    }
}





@end
