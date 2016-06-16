//
//  MainInterfaceController.m
//  AppleWatcj
//
//  Created by qq on 16/5/16.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "MainInterfaceController.h"

@interface MainInterfaceController ()

@end

@implementation MainInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
    NSString *title = [context objectForKey:@"title"];
    [self.titlename setText:title];
    
    //NSString *imageName = [context objectForKey:@"image"];
    //[self.image setImage:[UIImage imageNamed:imageName]]; //从 WatchKit Extension获取，由iPhone获取后传送
    
    NSString *imageName = [context objectForKey:@"image"];
    [self.image setImageNamed:imageName];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



