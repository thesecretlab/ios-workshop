# Minimal Code App
*This app will be a simple app with two view controllers, one as a master showing all the information, and the other a detail*

1. Create a new project
	1. Create a single-page application
	2. Name it MinimalApp
2. Create the interface
	1. Open the main.storyboard
	2. Replace the initial view controller with a TableViewController
	3. Add a NavigationViewController into the storyboard
	4. Ctrl drag from the NavigationViewController onto the TableViewController
	5. Select Root View Controller as the relationship for the two view controllers
	6. Select the TableView prototype cell
	7. Inside the Properties Inspector set the reuse identifier for the cell to be 'BasicCell'
	8. Change the Type of the cell to 'Basic'
	9. Add a new ViewController into the Storyboard
	10. Add a label onto the new ViewController
	11. Ctrl drag from the TableViewCell onto the new ViewController
	12. Select Push as the segue type
	13. Change the class of the TableViewController to be ViewController
	14. Change the class of the new view controller to be DetailViewController
3. Configure the ViewController
	1. Inside ViewController.h change the class to be an extension of TableViewController
	2. Add a new array property, called items, to the view controller
	3. Fill the array with a bunch of strings
	4. Add code to populate the tableview with data in our array
	
Inside viewController.m add the following code

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

4. Configure the DetailViewController
	1. Create a New File
	2. Select Objective-C class
	3. Name the class DetailViewController
	4. Make it a subclass of UIViewController
	5. Add a string property called detailItem to DetailViewController.h
	5. Open the main.storyboard in the Assistant view
	6. Ctrl drag from the UILabel into the DetailViewController.m
	7. Add the label as a property called detailLabel
	8. Configure the label to show the detail item
	
Add the following code to the viewDidLoad: method inside DetailViewController.m

	self.detailLabel.text = self.detailItem;
	
5. Connect the master to the detail
	1. Import the DetailViewController into ViewController.m
	2. Configure the detail view

Add the following code to the ViewController.m

	- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
	{
		DetailViewController *dvc =	segue.destinationViewController;
		NSIndexPath *path = [self.tableView indexPathForSelectedRow];
		NSLog(@"things:%@",_items[path.row]);
		dvc.detailItem = _items[path.row];
	}