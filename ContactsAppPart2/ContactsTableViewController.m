//
//  ContactsTableViewController.m
//  ContactsAppPart2
//
//  Created by alex on 20/9/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import "ContactsTableViewController.h"
#import "Contact.h"
#import "ContactCellTableViewCell.h"

@interface ContactsTableViewController ()

@end

@implementation ContactsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    Contact* contact1 = [[Contact alloc] initWithPhoto:[UIImage imageNamed:@"Gary"] name:@"Gary Edwards" position:@"Web Developer" email:@"gary@blueradix.com" phone:@"0865432345"];
    Contact* contact2 = [[Contact alloc] initWithPhoto:[UIImage imageNamed:@"Rebecca"] name:@"Rebecca Rogers" position:@"HR" email:@"rebecca@hrx.com.au" phone:@"0876767418"];
    Contact* contact3 = [[Contact alloc] initWithPhoto:[UIImage imageNamed:@"Katherine"] name:@"Katherine Price" position:@"Marketing" email:@"katherine@goldenroads.com" phone:@"0565432123"];
    Contact* contact4 = [[Contact alloc] initWithPhoto:[UIImage imageNamed:@"Tyler"] name:@"Tyler Porter" position:@"Sales" email:@"tyler@stockpiles.com" phone:@"07654243978"];
    Contact* contact5 = [[Contact alloc] initWithPhoto:[UIImage imageNamed:@"Madison"] name:@"Madison Thompson" position:@"Software Architect" email:@"madison@fantastic.com" phone:@"0456969785"];
    /*
    NSMutableDictionary* contactsDictionary = [[NSMutableDictionary alloc] init];

    [contactsDictionary setObject:contact1 forKey:[contact1 email]];
    [contactsDictionary setObject:contact1 forKey:[contact2 email]];
    [contactsDictionary setObject:contact1 forKey:[contact3 email]];
    [contactsDictionary setObject:contact1 forKey:[contact4 email]];
    [contactsDictionary setObject:contact1 forKey:[contact5 email]];
     */
    _contactsArray = [[NSMutableArray alloc] init];
    [[self contactsArray] addObject:contact1];
    [[self contactsArray] addObject:contact2];
    [[self contactsArray] addObject:contact3];
    [[self contactsArray] addObject:contact4];
    [[self contactsArray] addObject:contact5];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[self contactsArray] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        static NSString* cellIdentifier = @"ContactCell";
        ContactCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
        
        // Configure the cell...
        if(cell == nil){
            cell = [[ContactCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        Contact* selectedContact = [[self contactsArray] objectAtIndex:indexPath.row];
        [[cell nameLabel] setText:[selectedContact name]];
        [[cell photoImageView] setImage:[selectedContact photo]];
        [[cell positionLabel] setText:[selectedContact position]];
        
    //    cell.textLabel.text = [self contactsArray]
        
        return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
