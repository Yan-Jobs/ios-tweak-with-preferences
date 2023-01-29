@import UIKit;

%hook _UIStatusBarStringView
- (void)setText:(id)arg1{
	NSDictionary *bundleDefaults = [[NSUserDefaults standardUserDefaults] persistentDomainForName:@"me.yanjobs.preferencesobctestpreferences"];
	id isEnabled = [bundleDefaults valueForKey:@"isEnabled"];
	id sbtfText = [[bundleDefaults valueForKey:@"sbtfText"] stringValue];
	if ([isEnabled isEqual:@0]) {
		return %orig(arg1);
	} else {
		if([arg1 containsString:@":"]){
			NSDate *currentDate = [NSDate date];
			NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
			dateFormatter.dateFormat = sbtfText;
			NSString *formattedDate = [dateFormatter stringFromDate:currentDate];
			return %orig(formattedDate);
		} else {
			return %orig(arg1);
		}
	}
}
%end