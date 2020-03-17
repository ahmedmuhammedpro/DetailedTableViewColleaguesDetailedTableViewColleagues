#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController {
    NSMutableArray *males;
    NSMutableArray *females;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    males = [NSMutableArray new];
    [males addObject: [[Colleague alloc] initWithName:@"Ahmed" andEmail: @"ahmed@gmail.com" andAddress: @"Giza" andPhone:12345 andAge:20]];
    [males addObject: [[Colleague alloc] initWithName:@"Mohamed" andEmail: @"mohamed@gmail.com" andAddress: @"Cairo" andPhone:102030 andAge:21]];
    [males addObject: [[Colleague alloc] initWithName:@"Moneam" andEmail: @"moneam@gmail.com" andAddress: @"Alex" andPhone:405060 andAge:22]];
    [males addObject: [[Colleague alloc] initWithName:@"Medhat" andEmail: @"medhat@gmail.com" andAddress: @"Ismalia" andPhone:100200 andAge:23]];
    [males addObject: [[Colleague alloc] initWithName:@"Nasser" andEmail: @"nasser@gmail.com" andAddress: @"Luxer" andPhone:1597563 andAge:34]];
    
    
    females = [NSMutableArray new];
    [females addObject: [[Colleague alloc] initWithName:@"Fatma" andEmail: @"fatma@gmail.com" andAddress: @"Giza" andPhone:12345 andAge:20]];
    [females addObject: [[Colleague alloc] initWithName:@"Esraa" andEmail: @"esraa@gmail.com" andAddress: @"Cairo" andPhone:102030 andAge:21]];
    [females addObject: [[Colleague alloc] initWithName:@"Passant" andEmail: @"passant@gmail.com" andAddress: @"Alex" andPhone:405060 andAge:22]];
    [females addObject: [[Colleague alloc] initWithName:@"Maha" andEmail: @"maha@gmail.com" andAddress: @"Ismalia" andPhone:100200 andAge:23]];
    [females addObject: [[Colleague alloc] initWithName:@"Mai" andEmail: @"mai@gmail.com" andAddress: @"Luxer" andPhone:1597563 andAge:34]];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *) tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return [males count];
            
        case 1:
            return [females count];
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: @"cell"];
    }
    
    if (indexPath.section == 0)
        cell.textLabel.text = [[males objectAtIndex: indexPath.row] name];
    else
        cell.textLabel.text = [[females objectAtIndex: indexPath.row] name];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return section == 0? @"Males" : @"Females";
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier: @"viewController"];
    if (indexPath.section == 0)
        [vc setColleage: [males objectAtIndex: indexPath.row]];
    else
        [vc setColleage: [females objectAtIndex: indexPath.row]];
    
    [self.navigationController pushViewController: vc animated: YES];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        if (indexPath.section == 0)
            [males removeObjectAtIndex: indexPath.row];
        else
            [females removeObjectAtIndex: indexPath.row];
        
        [tableView deleteRowsAtIndexPaths: @[indexPath] withRowAnimation: UITableViewRowAnimationFade];
    }
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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
