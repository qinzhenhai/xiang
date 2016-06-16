//
//  MyRowCell.h
//  AppleWatcj
//
//  Created by qq on 16/5/16.
//  Copyright © 2016年 qq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>
@interface MyRowCell : NSObject
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *nameLabel;

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *images;
@end
