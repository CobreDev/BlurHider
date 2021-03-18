#include "BHPRootListController.h"
#import <UIKit/UIKit.h>

@implementation BHPRootListController

- (instancetype)init {
    self = [super init];

    if (self) {
        HBAppearanceSettings *appearanceSettings = [[HBAppearanceSettings alloc] init];
        appearanceSettings.tintColor = [UIColor colorWithRed: 0.76 green: 0.38 blue: 0.00 alpha: 1.00];
        // appearanceSettings.tableViewBackgroundColor = [UIColor colorWithWhite:242.f / 255.f alpha:1];
		appearanceSettings.largeTitleStyle = HBAppearanceSettingsLargeTitleStyleNever;
        self.hb_appearanceSettings = appearanceSettings;
    }

    return self;
}

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)respring {
	[HBRespringController respringAndReturnTo:[NSURL URLWithString:@"prefs:root=BlurHider"]];
}

@end
