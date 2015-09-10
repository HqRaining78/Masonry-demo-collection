//
//  ViewController.m
//  Masonry-demo-collection
//
//  Created by IOF－IOS2 on 15/9/7.
//  Copyright (c) 2015年 IOF－IOS2. All rights reserved.
//

#import "RootViewController.h"
#import "PrimaryViewController.h"
#import "IntermediateViewController.h"
#import "IntermediateSecondPartViewController.h"

static NSString *cellIdentifier = @"masonryCell";

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initViews];
}

- (void)initViews
{
    self.title = @"Masonry 学习";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = @"初级";
    }
    if (indexPath.row == 1) {
        cell.textLabel.text = @"中级－－－计算器";
    }
    if (indexPath.row == 2) {
        cell.textLabel.text = @"中级－－－植物图谱";
    }
    if (indexPath.row == 3) {
        cell.textLabel.text = @"敬请期待－－－高级";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
        PrimaryViewController *pvc = [PrimaryViewController new];
        [self.navigationController pushViewController:pvc animated:YES];
    } else if (indexPath.row == 1) {
        IntermediateViewController *ivc = [IntermediateViewController new];
        [self.navigationController pushViewController:ivc animated:YES];
    } else if (indexPath.row == 2) {
        IntermediateSecondPartViewController *spvc = [IntermediateSecondPartViewController  new];
        [self.navigationController pushViewController:spvc animated:YES];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
