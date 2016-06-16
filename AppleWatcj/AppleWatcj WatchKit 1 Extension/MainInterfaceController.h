//
//  MainInterfaceController.h
//  AppleWatcj
//
//  Created by qq on 16/5/16.
//  Copyright © 2016年 qq. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface MainInterfaceController : WKInterfaceController
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *titlename;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *image;

@end
