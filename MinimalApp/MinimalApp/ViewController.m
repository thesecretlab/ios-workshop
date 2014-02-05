//
//  ViewController.m
//  MinimalApp
//
//  Created by Tim Nugent on 28/01/2014.
//  Copyright (c) 2014 Tim Nugent. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *items;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	_items = @[@"Banana",@"Mango",@"Orange",@"Turkey"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return _items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BasicCell"];
	cell.textLabel.text = _items[indexPath.row];
	
	return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	DetailViewController *dvc =	segue.destinationViewController;
	NSIndexPath *path = [self.tableView indexPathForSelectedRow];
	NSLog(@"things:%@",_items[path.row]);
	dvc.detailItem = _items[path.row];
}



@end
