//
//  OCStringViewController.m
//  Daily_knowledge_set
//
//  Created by Jason on 25/01/2017.
//  Copyright © 2017 Jason. All rights reserved.
//

#import "OCStringViewController.h"

@interface OCStringViewController ()

@end

@implementation OCStringViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self forEachInObjc];
    [self forEachStringInObjc];
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
    
//    for (NSString *subs in s) {
//        
//    }
    
    [s enumerateSubstringsInRange:NSMakeRange(0, s.length) options:NSStringEnumerationByComposedCharacterSequences usingBlock:^(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop) {
        NSLog(@"%@",substring);
    }];
}





@end
