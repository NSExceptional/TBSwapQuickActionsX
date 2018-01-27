//
//  Tweak.xm
//  TBSwiapQuickActionsX
//
//  Created by Tanner Bennett on 2018-01-27
//  Copyright © 2018 Tanner Bennett. All rights reserved.
//

@interface SBDashBoardQuickActionsView : UIView
@property UIView *cameraButton;
@property UIView *flashlightButton;
@end

%hook SBDashBoardQuickActionsView

- (void)layoutSubviews {
    // Swap
    UIView *tmp = self.cameraButton;
    self.cameraButton = self.flashlightButton;
    self.flashlightButton = tmp;

    %orig;

    // Swap back
    tmp = self.cameraButton;
    self.cameraButton = self.flashlightButton;
    self.flashlightButton = tmp;
}

%end