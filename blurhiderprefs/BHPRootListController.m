#include "BHPRootListController.h"

#define THEME_COLOR                                                    \
   [UIColor colorWithRed:0.96                                          \
                   green:0.74                                          \
                    blue:0.00                                          \
                   alpha:1.00];
				   
@implementation BHPRootListController

+ (UIColor *)hb_tintColor {
   return THEME_COLOR;
 }

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)respring {
  [HBRespringController respring];
}

@end