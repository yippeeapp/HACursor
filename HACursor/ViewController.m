//
//  ViewController.m
//  HACursor
//
//  Created by haha on 15/7/20.
//  Copyright (c) 2015年 haha. All rights reserved.
//

#import "ViewController.h"
#import "HACursor.h"
#import "UIView+Extension.h"
#import "HATestView.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *titles;
@property (nonatomic, strong) NSMutableArray *pageViews;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //不允许有重复的标题
    self.titles = @[@"网易",@"新浪",@"腾讯",@"苹果",@"搜狐",@"淘宝",@"京东",@"百度",@"有道",@"小米",@"华为",@"三星"];
    
    HACursor *cursor = [[HACursor alloc]init];
    cursor.frame = CGRectMake(0, 64, self.view.width, 45);
    cursor.titles = self.titles;
    cursor.pageViews = [self createPageViews];
    cursor.rootScrollViewHeight = self.view.frame.size.height - 109;
    cursor.titleNormalColor = [UIColor whiteColor];
    cursor.titleSelectedColor = [UIColor redColor];
    cursor.showSortbutton = YES;
    //cursor.backgroundColor = [UIColor yellowColor];
    //cursor.minFontSize = 10;
    //cursor.maxFontSize = 30;
    //cursor.isGraduallyChangFont = NO;
    //cursor.isGraduallyChangColor = NO;
    [self.view addSubview:cursor];
}

- (NSMutableArray *)createPageViews{
    NSMutableArray *pageViews = [NSMutableArray array];
    for (NSInteger i = 0; i < self.titles.count; i++) {
        HATestView *textView = [[HATestView alloc]init];
        textView.label.text = self.titles[i];
        [pageViews addObject:textView];
    }
    return pageViews;
}
@end
