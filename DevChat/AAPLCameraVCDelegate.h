//
//  AAPLCameraVCDelegate.h
//  DevChat
//
//  Created by Tihomir Videnov on 9/11/16.
//  Copyright © 2016 Tihomir Videnov. All rights reserved.
//

#ifndef AAPLCameraVCDelegate_h
#define AAPLCameraVCDelegate_h

@protocol AAPLCameraVCDelegate <NSObject>

-(void)shouldEnableRecordUI:(BOOL)enable;
-(void)shouldEnableCameraUI:(BOOL)enable;
-(void)canStartRecording;
-(void)recordingHasStarted;

@end

#endif /* AAPLCameraVCDelegate_h */
