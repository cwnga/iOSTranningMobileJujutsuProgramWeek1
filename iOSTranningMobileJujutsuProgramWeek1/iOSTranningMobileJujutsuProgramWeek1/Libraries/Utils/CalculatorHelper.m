//
//  CalculatorHelper.m
//  YDevelopKit
//
//  Created by Jeff Lin on 5/21/15.
//  Copyright (c) 2015 Yahoo. All rights reserved.
//

#import "CalculatorHelper.h"

#pragma mark - mathematics
CGFloat randomFloatnumber(CGFloat maxBound, CGFloat minBound)
{
    //reference: http://kirenenko-tw.blogspot.com/2012/10/objectc.html
    //max-value of arc4random() is 0×100000000 (4294967296), and RAND_MAX would only be 0x7fffffff (2147483647)
    //to mode (RAND_MAX + 1) would get 0 ~ RAND_MAX, then calculate its percentage, and then multi with diff
    CGFloat diff = maxBound - minBound;
    //because RAND_MAX is too much and in order to improve performance and make it more random, use ceil insteadly
    CGFloat diffCeil = ceil(diff*3.14f);
    return (((CGFloat) (arc4random() % ((unsigned)diffCeil + 1)) / diffCeil) * diff) + minBound;
}

#pragma mark - discount calculate
CGFloat getDiscountFromPrices(CGFloat price, CGFloat marketPrice)
{
    CGFloat discount = 0.0;
    if (marketPrice > 0.0f && price > 0.0f) {
        discount = (100.0f - fabs(marketPrice - price) / fabs(marketPrice) * 100.0f);
        
        if (marketPrice <= price || discount < 10.0f) {
            // specail case:marketPrice <= price or 0.1%
            discount = NAN;
        } else if ((int)discount % 10 == 0) {
            discount = floor(discount * 0.1f);
        } else {
            discount = floor(discount);
        }
    }
    
    return discount;
}

#pragma mark - CGRect operation
CGRect shrinkToZeroHeight(CGRect Frame)
{
    Frame.size.height = 0.0f;
    return Frame;
}

CGRect extendToScreenWidth(CGRect Frame)
{
    Frame.size.width = screenSize().width;
    return Frame;
}

#pragma mark - nibsize and screen ratio calculate
CGSize cgSizeZeroHeight()
{
    return CGSizeMake(screenSize().width, 0.0f);
}

CGSize screenSize()
{
    UIScreen *screen = [UIScreen mainScreen];
    return screen.bounds.size;
}
