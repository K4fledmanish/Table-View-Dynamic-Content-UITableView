//
//  ViewController.m
//  Table-View-Dynamic-Content-UITableView
//
//  Created by K4fle D. Manish on 14/9/20.
//  Copyright © 2020 K4fledmanish. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    arrListOfSectionHeaderTitles = @[@"A", @"M", @"S"];
    
    
    arrListOfEmployeeNames = @[
                                @[@"Aaohn", @"Ann"],
                                @[@"Manish", @"Mani"],
                                @[@"Subin", @"Sumit"]
                            ];
    
    arrListOfEmployeeImages = @[
                                @[@"Teja.png", @"2.png"],
                                @[@"3.jpg", @"4.jpg"],
                                @[@"5.png", @"6.png"]
                            ];
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [arrListOfSectionHeaderTitles count];
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [arrListOfEmployeeNames[section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return arrListOfSectionHeaderTitles[section];
}




- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
       NSString *simpleidentifier = @"simpleIdentifier";
       UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleidentifier forIndexPath:indexPath];
       
       // Configure the cell...
       
       
       cell.textLabel.text = arrListOfEmployeeNames[indexPath.section][indexPath.row];
       cell.detailTextLabel.text = @"View";
       
       
       
       
       NSString *imageName = arrListOfEmployeeImages[indexPath.section][indexPath.row];
       
       UIImage *image = [UIImage imageNamed:imageName];
       cell.imageView.image = image;
       
       
       return cell;
       
}


/*
- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    <#code#>
}

- (void)traitCollectionDidChange:(nullable UITraitCollection *)previousTraitCollection {
    <#code#>
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    <#code#>
}

- (CGSize)sizeForChildContentContainer:(nonnull id<UIContentContainer>)container withParentContainerSize:(CGSize)parentSize {
    <#code#>
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(nonnull id<UIContentContainer>)container {
    <#code#>
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    <#code#>
}

- (void)willTransitionToTraitCollection:(nonnull UITraitCollection *)newCollection withTransitionCoordinator:(nonnull id<UIViewControllerTransitionCoordinator>)coordinator {
    <#code#>
}

- (void)didUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context withAnimationCoordinator:(nonnull UIFocusAnimationCoordinator *)coordinator {
    <#code#>
}

- (void)setNeedsFocusUpdate {
    <#code#>
}

- (BOOL)shouldUpdateFocusInContext:(nonnull UIFocusUpdateContext *)context {
    <#code#>
}

- (void)updateFocusIfNeeded {
    <#code#>
}

*/

@end
