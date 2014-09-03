program_name='amx-dxlink-control'

#if_not_defined __AMX_DXLINK_CONTROL__
#define __AMX_DXLINK_CONTROL__

/*
 * --------------------
 * amx-dxlink-control
 *
 * For usage, check out the readme for the amx-dxlink-library.
 * --------------------
 */

define_constant

char VERSION_AMX_DXLINK_CONTROL[] = 'v1.0.0'

#include 'amx-dxlink-api'
#include 'amx-device-control'
#include 'common'

/*
 * --------------------
 * Function Naming Format
 * 
 * dxlinkRequestXXXXXXXX
 * dxlinkRequestTxXXXXXXXX
 * dxlinkRequestRxXXXXXXXX
 *  - call the dxlinkRequest functions to request information from a DXLink device.
 * 
 * dxlinkSetXXXXXXX
 * dxlinkSetTxXXXXXXX
 * dxlinkSetRxXXXXXXX
 *  - call the dxlinkSet functions to set a value on a DXLink device (e.g., volume).
 * 
 * dxlinkEnableXXXXXXX
 * dxlinkEnableTxXXXXXXX
 * dxlinkEnableRxXXXXXXX
 *  - call the dxlinkEnable functions to enable a setting on the DXLink device which can be enabled or disabled.
 * 
 * dxlinkDisableXXXXXXX
 * dxlinkDisableTxXXXXXXX
 * dxlinkDisableRxXXXXXXX
 *  - call the dxlinkDisable functions to disable a setting on the DXLink device which can be enabled or disabled.
 * 
 * dxlinkCycleXXXXXX
 * dxlinkCycleTxXXXXXX
 * dxlinkCycleRxXXXXXX
 *  - call the dxlinkCycle functions to toggle a setting on the DXLink device from enabled to disabled or vice versa.
 * --------------------
 */


/*
 * --------------------
 * DXLink receiver video functions
 * --------------------
 */


/*
 * Function:    dxlinkRequestRxVideoOutputScaleMode
 * 
 * Arguments:   dev dxlinkVideoOutputPort - video output port on DXLink RX
 * 
 * Description: Requests the status of the scaling mode on the video
 *              output port.
 */
define_function dxlinkRequestRxVideoOutputScaleMode (dev dxlinkVideoOutputPort)
{
	sendCommand (dxlinkVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_SCALE_MODE_REQUEST")
}

/*
 * Function:    dxlinkSetRxVideoOutputScaleMode
 * 
 * Arguments:   dev dxlinkRxVidOut - video output port on the DXLink RX
 *              char scaleMode[] - scaling mode
 *                      Values:
 *                          DXLINK_SCALE_MODE_AUTO
 *                          DXLINK_SCALE_MODE_BYPASS
 *                          DXLINK_SCALE_MODE_MANUAL
 * 
 * Description: Sets the scaling mode on the video output port.
 */
define_function dxlinkSetRxVideoOutputScaleMode (dev dxlinkVideoOutputPort, char scaleMode[])
{
	switch (scaleMode)
	{
		case DXLINK_SCALE_MODE_AUTO:
		case DXLINK_SCALE_MODE_BYPASS:
		case DXLINK_SCALE_MODE_MANUAL:
		{
			sendCommand (dxlinkVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_SCALE_MODE,scaleMode")
		}
	}
}

/*
 * Function:    dxlinkRequestRxVideoOutputResolution
 * 
 * Arguments:   dev dvDXLinkVideoOutputPort - video output port on the DXLink RX
 * 
 * Description: Requests the resolution and refresh rate of the video
 *              output port.
 */
define_function dxlinkRequestRxVideoOutputResolution (dev dvDXLinkVideoOutputPort)
{
	sendCommand (dvDXLinkVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_RESOLUTION_REQUEST")
}

/*
 * Function:    dxlinkSetRxVideoOutputResolution
 * 
 * Arguments:   dev dvDXLinkVideoOutputPort - video output port on the DXLink RX
 *              char resolution[] - resolution and refresh rate in the form of <hor>x<ver>,<ref>
 *                                      E.g:  1920x1080,60
 * 
 * Description: Sets the resolution and refresh rate of the video output
 *              port.
 */
define_function dxlinkSetRxVideoOutputResolution (dev dvDXLinkVideoOutputPort, char resolution[])
{
	sendCommand (dvDXLinkVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_RESOLUTION,resolution")
}

/*
 * Function:    dxlinkRequestRxVideoOutputAspectRatio
 * 
 * Arguments:   dev dxlinkRxVideoOutputPort - video output port on the DXLink RX
 * 
 * Description: Requests the aspect ratio of the video output port.
 */
define_function dxlinkRequestRxVideoOutputAspectRatio (dev dxlinkRxVideoOutputPort)
{
	sendCommand (dxlinkRxVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_ASPECT_RATIO_REQUEST")
}

/*
 * Function:    dxlinkSetRxVideoOutputAspectRatio
 * 
 * Arguments:   dev dxlinkRxVideoOutputPort - video output port on the DXLink RX
 *              char aspectRatioSetting[] - aspect ratio setting
 *                      Values:
 *                          DXLink RX_ASPECT_RATIO_ANAMORPHIC
 *                          DXLink RX_ASPECT_RATIO_MAINTAIN
 *                          DXLink RX_ASPECT_RATIO_STRETCH
 *                          DXLink RX_ASPECT_RATIO_ZOOM
 * 
 * Description: Set the aspect ratio of the video output port.
 */
define_function dxlinkSetRxVideoOutputAspectRatio (dev dxlinkRxVideoOutputPort, char aspectRatioSetting[])
{
	switch (aspectRatioSetting)
	{
		case DXLINK_ASPECT_RATIO_ANAMORPHIC:
		case DXLINK_ASPECT_RATIO_MAINTAIN:
		case DXLINK_ASPECT_RATIO_STRETCH:
		case DXLINK_ASPECT_RATIO_ZOOM:
		{
			sendCommand (dxlinkRxVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_ASPECT_RATIO,aspectRatioSetting")
		}
	}
}

/*
 * Function:    dxlinkRequestRxVideoOutputTestPattern
 * 
 * Arguments:   dev dxlinkRxVideoOutputPort - video output port on the DXLink RX
 * 
 * Description: Requests the test pattern setting for the video output
 *              port.
 */
define_function dxlinkRequestRxVideoOutputTestPattern (dev dxlinkRxVideoOutputPort)
{
	sendCommand (dxlinkRxVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_TEST_PATTERN_REQUEST")
}

/*
 * Function:    dxlinkSetRxVideoOutputTestPattern
 * 
 * Arguments:   dev dxlinkRxVideoOutputPort - video output port on the DXLink RX
 *              char testPattern[] - test pattern
 *                      Values:
 *                          DXLINK_TEST_PATTERN_OFF
 *                          DXLINK_TEST_PATTERN_COLOR_BAR
 *                          DXLINK_TEST_PATTERN_GRAY_RAMP
 *                          DXLINK_TEST_PATTERN_SMPTE_BAR
 *                          DXLINK_TEST_PATTERN_HILO_TRACK
 *                          DXLINK_TEST_PATTERN_PLUGE
 *                          DXLINK_TEST_PATTERN_X_HATCH
 * 
 * Description: Sets the test pattern for the video output port.
 */
define_function dxlinkSetRxVideoOutputTestPattern (dev dxlinkRxVideoOutputPort, char testPattern[])
{
	switch (testPattern)
	{
		case DXLINK_TEST_PATTERN_OFF:
		case DXLINK_TEST_PATTERN_COLOR_BAR:
		case DXLINK_TEST_PATTERN_GRAY_RAMP:
		case DXLINK_TEST_PATTERN_SMPTE_BAR:
		case DXLINK_TEST_PATTERN_HILO_TRACK:
		case DXLINK_TEST_PATTERN_PLUGE:
		case DXLINK_TEST_PATTERN_X_HATCH:
		{
			sendCommand (dxlinkRxVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_TEST_PATTERN,testPattern")
		}
	}
}

/*
 * Function:    dxlinkRequestRxVideoOutputMute
 * 
 * Arguments:   dev dxlinkRxVideoOutputPort - video output port on the DXLink Rx
 * 
 * Description: Requests if the video output is muted.
 */
define_function dxlinkRequestRxVideoOutputMute (dev dxlinkRxVideoOutputPort)
{
	sendCommand (dxlinkRxVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_MUTE_REQUEST")
}

/*
 * Function:    dxlinkEnableRxVideoOutputMute
 * 
 * Arguments:   dev dxlinkRxVideoOutputPort - video output port on the DXLink Rx
 * 
 * Description: Enable video mute on the video output.
 */
define_function dxlinkEnableRxVideoOutputMute (dev dxlinkRxVideoOutputPort)
{
	sendCommand (dxlinkRxVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_MUTE,STATUS_ENABLE")
}

/*
 * Function:    dxlinkDisableRxVideoOutputMute
 * 
 * Arguments:   dev dxlinkRxVideoOutputPort - video output port on the DXLink Rx
 * 
 * Description: Disable video mute on the video output.
 */
define_function dxlinkDisableRxVideoOutputMute (dev dxlinkRxVideoOutputPort)
{
	sendCommand (dxlinkRxVideoOutputPort, "DXLINK_COMMAND_RX_VIDEO_OUT_MUTE,STATUS_DISABLE")
}


/*
 * --------------------
 * DXLink receiver audio functions
 * --------------------
 */


/*
 * Function:    dxlinkRequestRxAudioOutputMute
 * 
 * Arguments:   dev dxlinkRxAudioOutputPort - audio output port on the DXLink Rx
 * 
 * Description: Requests mute status for the audio output port.
 */
define_function dxlinkRequestRxAudioOutputMute (dev dxlinkRxAudioOutputPort)
{
	sendCommand (dxlinkRxAudioOutputPort, "DXLINK_COMMAND_RX_AUDIO_OUT_MUTE_REQUEST")
}

/*
 * Function:    dxlinkEnableRxAudioOutputMute
 * 
 * Arguments:   dev dxlinkRxAudioOutputPort - audio output port on the DXLink Rx
 * 
 * Description: Enables mute for the audio output port.
 */
define_function dxlinkEnableRxAudioOutputMute (dev dxlinkRxAudioOutputPort)
{
	sendCommand (dxlinkRxAudioOutputPort, "DXLINK_COMMAND_RX_AUDIO_OUT_MUTE,STATUS_ENABLE")
}

/*
 * Function:    dxlinkDisableRxAudioOutputMute
 * 
 * Arguments:   dev dxlinkRxAudioOutputPort - audio output port on the DXLink Rx
 * 
 * Description: Disables mute for the audio output port.
 */
define_function dxlinkDisableRxAudioOutputMute (dev dxlinkRxAudioOutputPort)
{
	sendCommand (dxlinkRxAudioOutputPort, "DXLINK_COMMAND_RX_AUDIO_OUT_MUTE,STATUS_DISABLE")
}

/*
 * Function:    dxlinkRequestRxAudioOutputFormat
 * 
 * Arguments:   dev dxlinkRxAudioOutputPort - audio output port on the DXLink RX
 * 
 * Description: Requests the format of the audio output port.
 */
define_function dxlinkRequestRxAudioOutputFormat (dev dxlinkRxAudioOutputPort)
{
	sendCommand (dxlinkRxAudioOutputPort, "DXLINK_COMMAND_RX_AUDIO_OUT_FORMAT_REQUEST")
}

/*
 * Function:    dxlinkSetRxAudioOutputFormat
 * 
 * Arguments:   dev dxlinkRxAudioOutputPort - audio output port on the DXLink RX
 *              char formatSetting[] - audio format setting
 *                      Values:
 *                          DXLink DXLINK_AUDIO_OUTPUT_FORMAT_ALL
 *                          DXLink DXLINK_AUDIO_OUTPUT_FORMAT_ANALOG
 *                          DXLINK_AUDIO_OUTPUT_FORMAT_HDMIRX_ASPECT_RATIO_STRETCH
 * 
 * Description: Set the format for the DXLink Rx audio output port.
 */
define_function dxlinkSetRxAudioOutputFormat (dev dxlinkRxAudioOutputPort, char formatSetting[])
{
	switch (formatSetting)
	{
		case DXLINK_AUDIO_OUTPUT_FORMAT_ALL:
		case DXLINK_AUDIO_OUTPUT_FORMAT_ANALOG:
		case DXLINK_AUDIO_OUTPUT_FORMAT_HDMI:
		{
			sendCommand (dxlinkRxAudioOutputPort, "DXLINK_COMMAND_RX_AUDIO_OUT_FORMAT,formatSetting")
		}
	}
}


/*
 * --------------------
 * DXLink transmitter video functions
 * --------------------
 */


/*
 * Function:    dxlinkRequestTxVideoInputAutoSelect
 * 
 * Arguments:   dev dxlinkTxPort1 - port 1 on the DXLink Tx
 * 
 * Description: Requests setting for the video input auto select mode on DXLink Tx
 */
define_function dxlinkRequestTxVideoInputAutoSelect (dev dxlinkTxPort1)
{
	sendCommand (dxlinkTxPort1, "DXLINK_COMMAND_TX_VIDEO_IN_AUTO_SELECT_REQUEST")
}

/*
 * Function:    dxlinkEnableTxVideoInputAutoSelectPriotityDigital
 * 
 * Arguments:   dev dxlinkTxPort1 - port 1 on the DXLink Tx
 * 
 * Description: Enables the video input auto select mode on DXLink Tx and sets
 *              the priority to the digital video input.
 */
define_function dxlinkEnableTxVideoInputAutoSelectPriotityDigital (dev dxlinkTxPort1)
{
	sendCommand (dxlinkTxPort1, "DXLINK_COMMAND_TX_VIDEO_IN_AUTO_SELECT,STATUS_ENABLE")
}

/*
 * Function:    dxlinkEnableTxVideoInputAutoSelectPriotityAnalog
 * 
 * Arguments:   dev dxlinkTxPort1 - port 1 on the DXLink Tx
 * 
 * Description: Enables the video input auto select mode on DXLink Tx and sets
 *              the priority to the analog video input.
 */
define_function dxlinkEnableTxVideoInputAutoSelectPriotityAnalog (dev dxlinkTxPort1)
{
	sendCommand (dxlinkTxPort1, "DXLINK_COMMAND_TX_VIDEO_IN_AUTO_SELECT,DXLINK_AUTO_SELECT_ANALOG_PRIORITY")
}

/*
 * Function:    dxlinkDisableTxVideoInputAutoSelect
 * 
 * Arguments:   dev dxlinkTxPort1 - port 1 on the DXLink Tx
 * 
 * Description: Disables the video input auto select mode on DXLink Tx.
 */
define_function dxlinkDisableTxVideoInputAutoSelect (dev dxlinkTxPort1)
{
	sendCommand (dxlinkTxPort1, "DXLINK_COMMAND_TX_VIDEO_IN_AUTO_SELECT,STATUS_DISABLE")
}

/*
 * Function:    dxlinkRequestTxVideoInputSignalStatusDigital
 * 
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on DXLink Tx
 * 
 * Description: Requests signal status for the digital video input on DXLink Tx
 */
define_function dxlinkRequestTxVideoInputSignalStatusDigital (dev dxlinkTxDigitalVideoInputPort)
{
	sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_STATUS_REQUEST")
}

/*
 * Function:    dxlinkRequestTxVideoInputSignalStatusAnalog
 * 
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on DXLink Tx
 * 
 * Description: Requests signal status for the analog video input on DXLink Tx
 */
define_function dxlinkRequestTxVideoInputSignalStatusAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_STATUS_REQUEST")
}

/*
 * Function:    dxlinkRequestTxSelectedVideoInput
 * 
 * Arguments:   dev dxlinkTxPort1 - port 1 on the DXLink Tx
 * 
 * Description: Requests the video input being used on DXLink Tx.
 */
define_function dxlinkRequestTxSelectedVideoInput (dev dxlinkTxPort1)
{
	sendCommand (dxlinkTxPort1, "DXLINK_COMMAND_TX_VIDEO_IN_SIGNAL_ROUTE_REQUEST")
}

/*
 * Function:    dxlinkSetTxVideoInputAnalog
 * 
 * Arguments:   dev dxlinkTxPort1 - port 1 on the DXLink Tx
 * 
 * Description: Set the DXLink Tx to route to analog video
 */
define_function dxlinkSetTxVideoInputAnalog (dev dxlinkTxPort1)
{
	sendCommand (dxlinkTxPort1, "DXLINK_COMMAND_TX_VIDEO_IN_SIGNAL_ROUTE,'8O6'")
}

/*
 * Function:    dxlinkSetTxVideoInputDigital
 * 
 * Arguments:   dev dxlinkTxPort1 - port 1 on the DXLink Tx
 * 
 * Description: Set the DXLink Tx to route to digital video
 */
define_function dxlinkSetTxVideoInputDigital (dev dxlinkTxPort1)
{
	sendCommand (dxlinkTxPort1, "DXLINK_COMMAND_TX_VIDEO_IN_SIGNAL_ROUTE,'7O6'")
}

/*
 * Function:    dxlinkRequestTxVideoInputFormatAnalog
 * 
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on DXLink Tx
 * 
 * Description: Requests the video format of the analog video input on DXLink Tx
 */
define_function dxlinkRequestTxVideoInputFormatAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_FORMAT_REQUEST")
}

/*
 * Function:    dxlinkTxRequestVideoInputFormatDigital
 * 
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on DXLink Tx
 * 
 * Description: Requests the video format of the digital video input on DXLink Tx
 */
define_function dxlinkRequestTxVideoInputFormatDigital (dev dxlinkTxDigitalVideoInputPort)
{
	sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_FORMAT_REQUEST")
}

/*
 * Function:    dxlinkTxSetVideoInputFormatAnalog
 * 
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on DXLink Tx
 * 
 * Description: Sets the video format of the analog video input on DXLink Tx
 */
define_function dxlinkSetTxVideoInputFormatAnalog (dev dxlinkTxAnalogVideoInputPort, char videoFormatAnalog[])
{
	switch (videoFormatAnalog)
	{
		case VIDEO_SIGNAL_FORMAT_COMPONENT:
		case VIDEO_SIGNAL_FORMAT_COMPOSITE:
		case VIDEO_SIGNAL_FORMAT_SVIDEO:
		case VIDEO_SIGNAL_FORMAT_VGA:
		{
			sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_FORMAT,videoFormatAnalog")
		}
	}
}

/*
 * Function:    dxlinkSetTxVideoInputFormatDigital
 * 
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on DXLink Tx
 * 
 * Description: Sets the video format of the digital video input on DXLink Tx
 */
define_function dxlinkSetTxVideoInputFormatDigital (dev dxlinkTxDigitalVideoInputPort, char videoFormatDigital[])
{
	switch (videoFormatDigital)
	{
		case VIDEO_SIGNAL_FORMAT_DVI:
		case VIDEO_SIGNAL_FORMAT_HDMI:
		{
			sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_FORMAT,videoFormatDigital")
		}
	}
}

/*
 * Function:    dxlinkRequestTxVideoInputAutoResolutionAnalog
 * 
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on DXLink Tx
 * 
 * Description: Requests the auto resolution detection mode on DXLink Tx analog input
 */
define_function dxlinkRequestTxVideoInputAutoResolutionAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_AUTO_REQUEST")
}

/*
 * Function:    dxlinkEnableTxVideoInputAutoResolutionAnalog
 * 
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on DXLink Tx
 * 
 * Description: Enables the video input auto resolution detection mode on DXLink Tx analog input
 */
define_function dxlinkEnableTxVideoInputAutoResolutionAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_AUTO,STATUS_ENABLE")
}

/*
 * Function:    dxlinkDisableTxVideoInputAutoResolutionAnalog
 * 
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on DXLink Tx
 * 
 * Description: Disables the video input auto resolution detection mode on DXLink Tx analog input
 */
define_function dxlinkDisableTxVideoInputAutoResolutionAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_AUTO,STATUS_DISABLE")
}

/*
 * Function:    dxlinkRequestTxVideoInputAutoResolutionDigital
 * 
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on DXLink Tx
 * 
 * Description: Requests the auto resolution detection mode on DXLink Tx digital input
 */
define_function dxlinkRequestTxVideoInputAutoResolutionDigital (dev dxlinkTxDigitalVideoInputPort)
{
	sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_AUTO_REQUEST")
}

/*
 * Function:    dxlinkEnableTxVideoInputAutoResolutionDigital
 * 
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on DXLink Tx
 * 
 * Description: Enables the video input auto resolution detection mode on DXLink Tx digital input
 */
define_function dxlinkEnableTxVideoInputAutoResolutionDigital (dev dxlinkTxDigitalVideoInputPort)
{
	sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_AUTO,STATUS_ENABLE")
}

/*
 * Function:    dxlinkDisableTxVideoInputAutoResolutionDigital
 * 
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on DXLink Tx
 * 
 * Description: Disables the video input auto resolution detection mode on DXLink Tx digital input
 */
define_function dxlinkDisableTxVideoInputAutoResolutionDigital (dev dxlinkTxDigitalVideoInputPort)
{
	sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_AUTO,STATUS_DISABLE")
}

/*
 * Function:    dxlinkRequestTxVideoInputResolutionAnalog
 * 
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on DXLink Tx
 * 
 * Description: Requests the resolution and refresh rate of the video through the DXLink Tx
 */
define_function dxlinkRequestTxVideoInputResolutionAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_REQUEST")
}

/*
 * Function:    dxlinkSetTxVideoInputResolutionAnalog
 * 
 * Arguments:   dev dxlinkAnalogVideoInputPort - analog video input port on the DXLInk Tx
 *              char resolution[] - resolution string
 *                                 - Format: <hor>x<ver>[i|p],<ref>
 * 
 * Description: Sets the resolution of the video input port.
 */
define_function dxlinkSetTxVideoInputResolution (dev dxlinkAnalogVideoInputPort, char resolution[])
{
	sendCommand (dxlinkAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION,resolution")
}

/*
 * Function:    dxlinkRequestTxVideoInputResolutionDigital
 * 
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on DXLink Tx
 * 
 * Description: Requests the resolution and refresh rate of the video through the DXLink Tx
 */
define_function dxlinkRequestTxVideoInputResolutionDigital (dev dxlinkTxDigitalVideoInputPort)
{
	sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_REQUEST")
}

/*
 * Function:    dxlinkSetTxVideoInputResolutionDigital
 * 
 * Arguments:   dev dxlinkDigitalVideoInputPort - digital video input port on the DXLInk Tx
 *              char resolution[] - resolution string
 *                                 - Format: <hor>x<ver>[i|p],<ref>
 * 
 * Description: Sets the resolution of the video input port.
 */
define_function dxlinkSetTxVideoInputResolutionDigital (dev dxlinkDigitalVideoInputPort, char resolution[])
{
	sendCommand (dxlinkDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION,resolution")
}

/*
 * Function:    dxlinkRequestTxVideoInputEdidPreferredResolutionAnalog
 * 
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on the DXLink Tx
 * 
 * Description: Requests the preferred resolution of the EDID source for the analog video input.
 */
define_function dxlinkRequestTxVideoInputEdidPreferredResolutionAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_EDID_PREFERRED_RESOLUTION_REQUEST")
}

/*
 * Function:    dxlinkSetTxVideoInputEdidPreferredResolutionAnalog
 *
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on the DXLink Tx
 *              char resolution[] - resolution string
 *                                 - Format: <hor>x<ver>[i|p],<ref>
 * 
 * Description: Sets the preferred resolution for the EDID source for the analog video input.
 */
define_function dxlinkSetTxVideoInputEdidPreferredResolutionAnalog (dev dxlinkTxAnalogVideoInputPort, char resolution[])
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_EDID_PREFERRED_RESOLUTION,resolution")
}

/*
 * Function:    dxlinkRequestTxVideoInputEdidSourceAnalog
 *
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on the DXLink Tx
 *
 * Description: Requests which EDID source the analog video input on DXLink Tx is using
 */
define_function dxlinkRequestTxVideoInputEdidSourceAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_EDID_SOURCE_REQUEST")
}

/*
 * Function:    dxlinkSetTxVideoInputEdidSourceAnalog
 * 
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on the DXLink Tx
 * 
 * Description: Sets the EDID source for the analog video input on DXLink Tx.
 */
define_function dxlinkSetTxVideoInputEdidSourceAnalog (dev dxlinkTxAnalogVideoInputPort, char edidSource[])
{
	switch (edidSource)
	{
		case DXLINK_EDID_SOURCE_ALL_RESOLUTIONS:
		case DXLINK_EDID_SOURCE_FULL_SCREEN:
		case DXLINK_EDID_SOURCE_WIDE_SCREEN:
		case DXLINK_EDID_SOURCE_USER_EDID_1:
		case DXLINK_EDID_SOURCE_USER_EDID_MODIFIED:
		{
			sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_EDID_SOURCE,edidSource")
		}
	}
}

/*
 * Function:    dxlinkSetTxVideoInputEdidSourceDigital
 *
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on the DXLink Tx
 *
 * Description: Sets the EDID source for the digital video input on DXLink Tx.                  
 */
define_function dxlinkSetTxVideoInputEdidSourceDigital (dev dxlinkTxDigitalVideoInputPort, char edidSource[])
{
	switch (edidSource)
	{
		case DXLINK_EDID_SOURCE_ALL_RESOLUTIONS:
		case DXLINK_EDID_SOURCE_FULL_SCREEN:
		case DXLINK_EDID_SOURCE_WIDE_SCREEN:
		case DXLINK_EDID_SOURCE_MIRROR_OUT_1:
		case DXLINK_EDID_SOURCE_MIRROR_OUT_LOCAL:
		case DXLINK_EDID_SOURCE_USER_EDID_1:
		case DXLINK_EDID_SOURCE_USER_EDID_MODIFIED:
		{
			sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_EDID_SOURCE,edidSource")
		}
	}
}

/*
 * Function:    dxlinkRequestTxVideoInputHdcpComplianceDigital
 *
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on the DXLink Tx
 *
 * Description: Requests the HDCP compliance setting of the DXLink Tx digital video input port.
 */
define_function dxlinkRequestTxVideoInputHdcpComplianceDigital (dev dxlinkTxDigitalVideoInputPort)
{
	sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_HDCP_COMPLIANCE_REQUEST")
}

/*
 * Function:    dxlinkTxEnableVideoInputHdcpComplianceDigital
 *
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on the DXLink Tx
 *
 * Description: Enable the HDCP compliance setting on the DXLink Tx digital video input port.
 */
define_function dxlinkEnableTxVideoInputHdcpComplianceDigital (dev dxlinkTxDigitalVideoInputPort)
{
	sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_HDCP_COMPLIANCE,STATUS_ENABLE")
}

/*
 * Function:    dxlinkDisableTxVideoInputoHdcpComplianceDigital
 *
 * Arguments:   dev dxlinkTxDigitalVideoInputPort - digital video input port on the DXLink Tx
 *
 * Description: Disable the HDCP compliance setting on the DXLink Tx digital video input port.
 */
define_function dxlinkDisableTxVideoInputHdcpComplianceDigital (dev dxlinkTxDigitalVideoInputPort)
{
	sendCommand (dxlinkTxDigitalVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_HDCP_COMPLIANCE,STATUS_DISABLE")
}

/*
 * Function:    dxlinkRequestTxVideoInputVerticalShiftAnalog
 *
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on the DXLink Tx
 *
 * Description: Requests the vertical shift value of the DXLink Tx analog video input port.
 */
define_function dxlinkRequestTxVideoInputVerticalShiftAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_VERTICAL_SHIFT_REQUEST")
}

/*
 * Function:    dxlinkSetTxVideoInputVerticalShift
 *
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on the DXLink Tx
 *              sinteger verticalShift - vertical shift value (-10..10)
 *
 * Description: Sets the vertical shifting of the DXLink Tx analog video input port.
 */
define_function dxlinkSetTxVideoInputVerticalShift (dev dxlinkTxAnalogVideoInputPort, sinteger verticalShift)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_VERTICAL_SHIFT,itoa(verticalShift)")
}

/*
 * Function:    dxlinkRequestTxVideoInputHorizontalShiftAnalog
 *
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on the DXLink Tx
 *
 * Description: Requests the horizontal shift value of the DXLink Tx analog video input port.
 */
define_function dxlinkRequestTxVideoInputHorizontalShiftAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_HORIZONTAL_SHIFT_REQUEST")
}

/*
 * Function:    dxlinkSetTxVideoInputHorizontalShift
 *
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on the DXLink Tx
 *              sinteger horizontalShift - horizontal shift value (-10..10)
 *
 * Description: Sets the horizontal shifting of the DXLink Tx analog video input port.
 */
define_function dxlinkSetTxVideoInputHorizontalShift (dev dxlinkTxAnalogVideoInputPort, sinteger horizontalShift)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_HORIZONTAL_SHIFT,itoa(horizontalShift)")
}

/*
 * Function:    dxlinkRequestTxVideoInputPhaseAnalog
 *
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on the DXLink Tx
 *
 * Description: Requests the input phase value of the DXLink Tx analog video input port.
 */
define_function dxlinkRequestTxVideoInputPhaseAnalog (dev dxlinkTxAnalogVideoInputPort)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_PHASE_REQUEST")
}

/*
 * Function:    dxlinkSetTxVideoInputPhaseAnalog
 *
 * Arguments:   dev dxlinkTxAnalogVideoInputPort - analog video input port on the DXLink Tx
 *              integer nPhase - input phase value (0..31)
 *
 * Description: Sets the horizontal shift value of the DXLink Tx analog video input port.
 */
define_function dxlinkSetTxVideoInputPhaseAnalog (dev dxlinkTxAnalogVideoInputPort, integer phase)
{
	sendCommand (dxlinkTxAnalogVideoInputPort, "DXLINK_COMMAND_TX_VIDEO_IN_PHASE,itoa(phase)")
}


/*
 * --------------------
 * DXLink transmitter audio functions
 * --------------------
 */


/*
 * Function:    dxlinkRequestTxAudioInputFormat
 *
 * Arguments:   dev dxlinkTxAudioInputPort - audio input port on the DXLink Tx
 *
 * Description: Requests the format of the audio input port.
 */
define_function dxlinkRequestTxAudioInputFormat (dev dxlinkTxAudioInputPort)
{
	sendCommand (dxlinkTxAudioInputPort, "DXLINK_COMMAND_Tx_AUDIO_IN_FORMAT_REQUEST")
}

/*
 * Function:    dxlinkSetTxAudioInputFormat
 *
 * Arguments:   dev dxlinkTxAudioInputPort - audio input port on the DXLink Tx
 *              char formatSetting[] - audio format setting
 *                      Values:
 *                          DXLINK_AUDIO_INPUT_FORMAT_ANALOG
 *                          DXLINK_AUDIO_INPUT_FORMAT_HDMI
 *                          DXLINK_AUDIO_INPUT_FORMAT_SPDIF
 *
 * Description: Set the format for the DXLink Tx audio input port.
 */
define_function dxlinkSetTxAudioInputFormat (dev dxlinkTxAudioInputPort, char formatSetting[])
{
	switch (formatSetting)
	{
		case DXLINK_AUDIO_INPUT_FORMAT_ANALOG:
		case DXLINK_AUDIO_INPUT_FORMAT_HDMI:
		case DXLINK_AUDIO_INPUT_FORMAT_SPDIF:
		{
			sendCommand (dxlinkTxAudioInputPort, "DXLINK_COMMAND_Tx_AUDIO_IN_FORMAT,formatSetting")
		}
	}
}

/*
 * Function:    dxlinkRequestTxAudioInputAutoFormatDetection
 *
 * Arguments:   dev dxlinkTxAudioInputPort - audio input port on the DXLink Tx
 *
 * Description: Request current setting for automatic detection of audio source.
 */
define_function dxlinkRequestTxAudioInputAutoFormatDetection (dev dxlinkTxAudioInputPort)
{
	sendCommand (dxlinkTxAudioInputPort, "DXLINK_COMMAND_TX_AUDIO_IN_FORMAT_AUTO_REQUEST")
}

/*
 * Function:    dxlinkEnableTxAudioInputAutoFormatDetection
 *
 * Arguments:   dev dxlinkTxAudioInputPort - audio input port on the DXLink Tx
 *
 * Description: Enables automatic detection of audio source.
 */
define_function dxlinkEnableTxAudioInputAutoFormatDetection (dev dxlinkTxAudioInputPort)
{
	sendCommand (dxlinkTxAudioInputPort, "DXLINK_COMMAND_TX_AUDIO_IN_FORMAT_AUTO,STATUS_ENABLE")
}

/*
 * Function:    dxlinkDisableTxAudioInputAutoFormatDetection
 *
 * Arguments:   dev dxlinkTxAudioInputPort - audio input port on the DXLink Tx
 *
 * Description: Disables automatic detection of audio source.
 */
define_function dxlinkDisableTxAudioInputAutoFormatDetection (dev dxlinkTxAudioInputPort)
{
	sendCommand (dxlinkTxAudioInputPort, "DXLINK_COMMAND_TX_AUDIO_IN_FORMAT_AUTO,STATUS_DISABLE")
}


/*
 * --------------------
 * DXLink transmitter usb functions
 * --------------------
 */


/*
 * Function:    dxlinkRequestTxUsbHidService
 *
 * Arguments:   dev dxlinkTxUsbPort - usb port on the DXLink Tx
 *
 * Description: Request current setting for Tx USB HID Service.
 */
define_function dxlinkRequestTxUsbHidService (dev dxlinkTxUsbPort)
{
	sendCommand (dxlinkTxUsbPort, "DXLINK_COMMAND_TX_USB_HID_SERVICE_REQUEST")
}


/*
 * Function:    dxlinkEnableTxUsbHidService
 *
 * Arguments:   dev dxlinkTxUsbPort - usb port on the DXLink Tx
 *
 * Description: Enables USB HID service on TX.
 */
define_function dxlinkEnableTxUsbHidService (dev dxlinkTxUsbPort)
{
	sendCommand (dxlinkTxUsbPort, "DXLINK_COMMAND_TX_USB_HID_SERVICE,STATUS_ENABLE")
}

/*
 * Function:    dxlinkDisableTxUsbHidService
 *
 * Arguments:   dev dxlinkTxUsbPort - usb port on the DXLink Tx
 *
 * Description: Disables USB HID service on TX.
 */
define_function dxlinkDisableTxUsbHidService (dev dxlinkTxUsbPort)
{
	sendCommand (dxlinkTxUsbPort, "DXLINK_COMMAND_TX_USB_HID_SERVICE,STATUS_DISABLE")
}


/*
 * --------------------
 * DXLink receiver usb functions
 * --------------------
 */


/*
 * Function:    dxlinkRequestRxUsbHidRoute
 *
 * Arguments:   dev dxlinkRxUsbPort - usb port on the DXLink Rx
 *
 * Description: Request current setting for Rx USB HID Route.
 */
define_function dxlinkRequestRxUsbHidRoute (dev dxlinkRxUsbPort)
{
	sendCommand (dxlinkRxUsbPort, "DXLINK_COMMAND_RX_USB_HID_ROUTE_REQUEST")
}

/*
 * Function:    dxlinkSetRxUsbHidRoute
 *
 * Arguments:   dev dxlinkRxUsbPort - usb port on the DXLink Tx
 *              char ipAddressTx - IP address of TX to route USB HID data to
 *                                - IP of 0.0.0.0 eliminates any active connections
 *
 * Description: Enables USB HID service on Rx.
 */
define_function dxlinkSetRxUsbHidRoute (dev dxlinkRxUsbPort, char ipAddressTx[])
{
	sendCommand (dxlinkRxUsbPort, "DXLINK_COMMAND_RX_USB_HID_ROUTE,ipAddressTx")
}


/*
 * --------------------
 * DXLink common transmitter/receiver functions
 * --------------------
 */


/*
 * Function:    dxlinkRequestFimwareVersion
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *
 * Description: Request firmware version of DXLink Tx/Rx device
 */
define_function dxlinkRequestFimwareVersion (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_FIRMWARE_VERSION_REQUEST")
}

/*
 * Function:    dxlinkEnableLeds
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 * 
 * Description: Enables LEDs on DXLInk Tx/Rx device
 */
define_function dxlinkEnableLeds (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_LED_ENABLE")
}

/*
 * Function:    dxlinkDisableLeds
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *
 * Description: Disables LEDs on DXLInk Tx/Rx device
 */
define_function dxlinkDisableLeds (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_LED_DISABLE")
}

/*
 * Function:    dxlinkReboot
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *
 * Description: Reboot the DXLInk Tx/Rx device
 */
define_function dxlinkReboot (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_REBOOT")
}

/*
 * Function:    dxlinkSetFriendlyNameAndLocation
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *              char friendlyName[] - friendly name
 *              char location[] - location
 *
 *              NOTE #1: friendly name and location strings must be 25 characters max each
 *              NOTE #2: friendly name and location strings must not contain the ':' character
 *
 * Description: Set a friendly name and location for the DXLInk Tx/Rx device
 *              Note: DXLink Tx/Rx will need to be rebooted after applying this setting
 */
define_function dxlinkSetFriendlyNameAndLocation (dev dxlinkPort1, char friendlyName[], char location[])
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_SET_FRIENDLY_NAME_AND_LOCATION,friendlyName,':',location")
}


/*
 * --------------------
 * DXLink system functions
 * --------------------
 */


/*
 * Function:    dxlinkRequestDxlinkMode
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *
 * Description: Request DXLink mode of DXLink Tx/Rx device
 */
define_function dxlinkRequestDxlinkMode (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_DXLINK_MODE_REQUEST")
}

/*
 * Function:    dxlinkSetDxlinkMode
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *              char dxlinkMode[] - DXLink mode
 *                      Values:
 *                          DXLINK_MODE_END_POINT
 *                          DXLINK_MODE_EXTENDER
 *
 * Description: Request DXLink mode of DXLink Tx/Rx device
 */
define_function dxlinkSetDxlinkMode (dev dxlinkPort1, char dxlinkMode[])
{
	switch(dxlinkMode)
	{
		case DXLINK_MODE_END_POINT:
		case DXLINK_MODE_EXTENDER:
		{
			sendCommand (dxlinkPort1, "DXLINK_COMMAND_DXLINK_MODE,dxlinkMode")
		}
	}
}

/*
 * Function:    dxlinkEnableIcsLan
 * 
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 * 
 * Description: Enables ICSLan port on DXLink Tx/Rx device
 */
define_function dxlinkEnableIcsLan (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_ICSLAN,STATUS_ENABLE")
}

/*
 * Function:    dxlinkDisableIcsLan
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *
 * Description: Disables ICSLan port on DXLink Tx/Rx device
 */
define_function dxlinkDisableIcsLan (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_ICSLAN,STATUS_DISABLE")
}

/*
 * Function:    dxlinkPersistAvSettings
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *
 * Description: Persist the AV settings on the DXLInk Tx/Rx device
 */
define_function dxlinkPersistAvSettings (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_PERSIST_AV_SETTINGS")
}

/*
 * Function:    dxlinkFactoryResetAvSettings
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *
 * Description: Factory Reset the AV settings on the DXLInk Tx/Rx device
 *              Note: DXLink Tx/Rx will need to be rebooted after applying this setting
 */
define_function dxlinkFactoryResetAvSettings (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_FACTORY_AV_SETTINGS")
}

/*
 * Function:    dxlinkEnableTelnetPort
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *
 * Description: Enable telnet on TCP port 23 of the DXLInk Tx/Rx device
 *              Note: DXLink Tx/Rx will need to be rebooted after applying this setting
 */
define_function dxlinkEnableTelnetPort (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_TELNET_PORT,DXLINK_TELNET_PORT_ENABLE")
}

/*
 * Function:    dxlinkDisableTelnetPort
 *
 * Arguments:   dev dxlinkPort1 - Port 1 on the DXLink Tx/RX
 *
 * Description: Disable telnet access to the DXLInk Tx/Rx device
 *              Note: DXLink Tx/Rx will need to be rebooted after applying this setting
 */
define_function dxlinkDisableTelnetPort (dev dxlinkPort1)
{
	sendCommand (dxlinkPort1, "DXLINK_COMMAND_TELNET_PORT,DXLINK_TELNET_PORT_DISABLE")
}

#end_if