//
//  ViewController.h
//  Table-View-Dynamic-Content-UITableView
//
//  Created by K4fle D. Manish on 14/9/20.
//  Copyright © 2020 K4fledmanish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController < UITableViewDataSource, UITableViewDelegate >{
    NSArray *arrListOfSectionHeaderTitles;
    NSArray *arrListOfEmployeeNames;
    NSArray *arrListOfEmployeeImages;
}
@end

