//
//  ExampleViewController.h
//  ClearentIdtechIOSFrameworkPod
//
//  Created by davidHigginbotham on 03/15/2019.
//  Copyright (c) 2019 davidHigginbotham. All rights reserved.
//

@import UIKit;

//CLEARENT: import the ClearentIdtechIOSFramework header
@import ClearentIdtechIOSFramework;

//CLEARENT make the view a Clearent_Public_IDTech_VP3300_Delegate

//CLEARENT make the view a ClearentManualEntryDelegate
@interface ExampleViewController : UIViewController<Clearent_Public_IDTech_VP3300_Delegate, ClearentManualEntryDelegate>

@end
