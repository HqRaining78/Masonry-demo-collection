//
//  CustomCell.h
//  Masonry-demo-collection
//
//  Created by IOF－IOS2 on 15/9/14.
//  Copyright (c) 2015年 IOF－IOS2. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CustomModel;

@interface CustomCell : UITableViewCell

- (void)setupData:(CustomModel *)dataEntity;

@end
