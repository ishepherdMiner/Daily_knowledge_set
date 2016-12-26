//
//  DelegateView.m
//  Daily_knowledge_set
//
//  Created by Jason on 08/12/2016.
//  Copyright © 2016 Jason. All rights reserved.
//

#import "DelegateView.h"

@interface DelegateView()

@property (nonatomic,weak) UITextView *textView;

@end

@implementation DelegateView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, 50)];
        [self addSubview:_textView = textView];
        UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 55, frame.size.width, 30)];
        [button setTitle:@"代理" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:button];
    }
    return self;
}

- (void)clickButton:(UIButton *)sender {
    _textView.text = [NSString stringWithFormat:@"代理:按钮被点击了%ld次",++sender.tag];
}

@end
