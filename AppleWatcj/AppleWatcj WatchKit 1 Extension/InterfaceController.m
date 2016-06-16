//
//  InterfaceController.m
//  AppleWatcj WatchKit 1 Extension
//
//  Created by qq on 16/5/16.
//  Copyright © 2016年 qq. All rights reserved.
//

#import "InterfaceController.h"
#import "MyRowCell.h"
#import "MainInterfaceController.h"
@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    [self.tableVIew setNumberOfRows:5 withRowType:@"MyRowCell"];
    for (int i=0; i<self.tableVIew.numberOfRows; i++) {
        MyRowCell *rowCewll  = [self.tableVIew rowControllerAtIndex:i];
        [rowCewll.nameLabel setText:@"dd"];
        [rowCewll.images setImage:[UIImage imageNamed:@"10"]];
    }
}
-(void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex{
    [super table:table didSelectRowAtIndex:rowIndex];

    if (rowIndex/2 ==0) {
        NSArray *controllers = @[@"tmall_wuse",@"tmall_wuse",@"tmall_wuse",@"tmall_wuse",@"tmall_wuse"];
        
        NSArray *contents = @[@{@"title":@"亚洲像[火星包邮]",@"image":@"10.png"},
                              @{@"title":@"瞌睡鹿[火星包邮]",@"image":@"image1.png"},
                              @{@"title":@"蛋疼豹[火星包邮]",@"image":@"image1.png"},
                              @{@"title":@"大水单反狮子都喜欢",@"image":@"image1.png"},
                              @{@"title":@"买法拉利送大喵",@"image":@"image1.png"}];
        
        [self presentControllerWithNames:controllers contexts:contents];
    }else{
        NSArray *contents = @[@{@"title":@"亚洲像[火星包邮]",@"image":@"10.png"},
                              @{@"title":@"瞌睡鹿1",@"image":@"image1.png"},
                              @{@"title":@"蛋疼豹2",@"image":@"image1.png"},
                              @{@"title":@"大水单反狮子都喜欢",@"image":@"image1.png"},
                              @{@"title":@"买法拉利送大喵",@"image":@"image1.png"}];
        
        [self pushControllerWithName:@"frist" context:contents];
    
    }
   

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



