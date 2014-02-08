//
//  GoodsCell.m
//  flashShopping
//
//  Created by Width on 14-1-20.
//  Copyright (c) 2014年 chinawidth. All rights reserved.
/*
@property ( nonatomic , retain )UIImageView         *goodsImgView;                      //商品图片
@property ( nonatomic , retain )UILabel                   *sellStatusLabel;                      //出售状态
@property ( nonatomic , retain )UILabel                   *directionsLabel;                     //商品描述
@property ( nonatomic , retain ) UILabel                   *priceLabel;                             //价格（字体）
@property ( nonatomic , retain ) UILabel                   *priceMoneyLabel;                  //价格
@property ( nonatomic , retain ) UILabel                   *numLabel;                               //库存 （字体）
@property ( nonatomic , retain ) UILabel                   *numNumberabel;                   //库存
*/

#import "GoodsCell.h"

@implementation GoodsCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self _initSunView];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)_initSunView
{
    _goodsModel = [[GoodsManamentModel alloc]init];
    
    _goodsImgView = [[UIImageView alloc]initWithFrame:CGRectZero];
    [self.contentView addSubview:_goodsImgView];
    
    _sellStatusLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    [self.contentView addSubview:_sellStatusLabel];

    _directionsLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    [self.contentView addSubview:_directionsLabel];

    _priceLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    [self.contentView addSubview:_priceLabel];

    _priceMoneyLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    [self.contentView addSubview:_priceMoneyLabel];

    _numLabel = [[UILabel alloc]initWithFrame:CGRectZero];
    [self.contentView addSubview:_numLabel];

    _numNumberabel = [[UILabel alloc]initWithFrame:CGRectZero];
    [self.contentView addSubview:_numNumberabel];
    
}
- (void)layoutSubviews
{
    [_goodsImgView setFrame:CGRectMake(10, 10, 80, 60)];
    _goodsImgView.image = [UIImage imageNamed:_goodsModel.viewUrl];
    
    [_sellStatusLabel setFrame:CGRectMake(_goodsImgView.right, _goodsImgView.top, 0, 0)];
    _sellStatusLabel.textColor = [UIColor redColor];
    _sellStatusLabel.text = @"[出售中]";
    [_sellStatusLabel sizeToFit];
    
    CGSize size = [_goodsModel.directions sizeWithFont:[UIFont systemFontOfSize:16.0f] constrainedToSize:CGSizeMake(200, 300) lineBreakMode:NSLineBreakByWordWrapping];
    [_directionsLabel setFrame:CGRectMake(_sellStatusLabel.right, _sellStatusLabel.top, self.bounds.size.width - _sellStatusLabel.right , size.height)];
    _directionsLabel.numberOfLines = 0 ;
    _directionsLabel.backgroundColor = [UIColor clearColor];
    _directionsLabel.text = _goodsModel.directions;
    
    
    [_priceLabel setFrame:CGRectMake(_goodsImgView.right ,  _directionsLabel.bottom ,  0, 0)];
    _priceLabel.text = @"价格：";
    [_priceLabel sizeToFit];
    
    [_priceMoneyLabel setFrame:CGRectMake(_priceLabel.right, _directionsLabel.bottom, 0, 0)];
    _priceMoneyLabel.text = [NSString stringWithFormat:@"%0.2f",_goodsModel.price];
    _priceMoneyLabel.textColor = [UIColor redColor];
    [_priceMoneyLabel sizeToFit];
    
    [_numLabel setFrame:CGRectMake(_priceLabel.left, _priceLabel.bottom, 0, 0)];
    _numLabel.text = @"库存：";
    [_numLabel sizeToFit];
    
    [_numNumberabel setFrame:CGRectMake(_numLabel.right, _priceLabel.bottom, 0, 0)];
    _numNumberabel.text = [NSString stringWithFormat:@"%d",_goodsModel.num] ;
    [_numNumberabel sizeToFit];
    
}
@end
