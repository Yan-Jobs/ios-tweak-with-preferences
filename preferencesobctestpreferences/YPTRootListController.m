#import <Foundation/Foundation.h>
#import "YPTRootListController.h"

@implementation YPTRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

- (void)openGitHub {
	[[UIApplication sharedApplication]
	openURL: [NSURL URLWithString:@"https://github.com/Yan-Jobs"]
	options:@{}
	completionHandler:nil];
}

@end
