//
//  ContactsTableViewController.h
//  ContactsAppPart2
//
//  Created by alex on 20/9/20.
//  Copyright © 2020 alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactsTableViewController : UITableViewController

@property NSMutableArray* contactsArray;
@property Contact* selectedContact;
@property (strong, nonatomic) IBOutlet UITableView *contactsTableView;

@end

NS_ASSUME_NONNULL_END
