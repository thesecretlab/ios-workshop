//
//  DetailViewController.h
//  MinimalApp
//
//  Created by Tim Nugent on 28/01/2014.
//  Copyright (c) 2014 Tim Nugent. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *detail;
@property (strong, nonatomic) NSString *detailItem;

@end
