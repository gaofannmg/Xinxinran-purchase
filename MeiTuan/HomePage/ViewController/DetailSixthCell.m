//
//  DetailSixthCell.m
//  MeiTuan
//
//  Created by gaofan on 15/10/21.
//  Copyright (c) 2015年 gaofan. All rights reserved.
//

#import "DetailSixthCell.h"

@interface DetailSixthCell ()
{
    UILabel *originalLabel;//原价
    UILabel *currentLabel;//现价
    UILabel *titleLabel;
    UIView *cutView;//价格划线
}
@end

@implementation DetailSixthCell

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        originalLabel = [[UILabel alloc] init];
        currentLabel = [[UILabel alloc] init];
        titleLabel = [[UILabel alloc] init];
        cutView = [[UIView alloc] init];
    }
    return self;
}

- (void) refreshThirdCell:(NSDictionary *)dic
{
    currentLabel.frame = CGRectMake(0, 0, 60, 30);
    currentLabel.text = @"566";
    currentLabel.textColor = [UIColor redColor];
    currentLabel.font = [UIFont fontWithName:nil size:15];
    [self.contentView addSubview:currentLabel];
    
    originalLabel.frame = CGRectMake(CGRectGetMaxX(currentLabel.frame) +10, 0, 30, 30);
    originalLabel.text = @"700";
    originalLabel.textColor = [UIColor grayColor];
    originalLabel.font = [UIFont fontWithName:nil size:12];
    [self.contentView addSubview:originalLabel];
    
    cutView.frame = CGRectMake(originalLabel.frame.origin.x - 5, originalLabel.center.y, originalLabel.frame.size.width, 1);
    cutView.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:cutView];
    
    titleLabel.frame = CGRectMake(CGRectGetMaxX(originalLabel.frame) +10, 0,180, 30);
    titleLabel.backgroundColor = [UIColor whiteColor];
    titleLabel.text = @"主题豪华套房";
    titleLabel.font = [UIFont fontWithName:nil size:12];
    [self.contentView addSubview:titleLabel];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
