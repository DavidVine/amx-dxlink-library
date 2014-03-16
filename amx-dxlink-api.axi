program_name='amx-dxlink-api'

#if_not_defined __AMX_DXLINK_API__
#define __AMX_DXLINK_API__

/*
 * --------------------
 * amx-dxlink-api
 *
 * For usage, check out the readme for the amx-dxlink-library.
 * --------------------
 */

define_constant

char VERSION_AMX_DXLINK_API[] = 'v1.0.0'


/*
 * --------------------
 * DXLink structures
 * 
 * Can be used by NetLinx programmer to keep track of DXLink info.
 * --------------------
 */

define_type

// Structure to store information about a DXLink transmitter
structure _sDXLinkTx
{
    // video input info
	integer vidInAutoSelectStatus
	integer vidInMultiFormatInputSelected
	char vidInSignalStatusDigital[15]
	char vidInSignalStatusAnalog[15]
	char vidInFormatDigital[15]
	char vidInFormatAnalog[15]
	integer vidInAutoResolutionStatusDigital
	integer vidInAutoResolutionStatusAnalog
	char vidInResolutionAnalog[15]
	char vidInResolutionDigital[15]
	char vidInPreferredEdidResolutionAnalog[15]
	char vidInEdidModeAnalog[15]
	char vidInEdidModeDigital[15]
	integer vidInHdcpComplianceStatusDigital
	integer vidInVerticalShiftValueAnalog
	integer vidInHorizontalShiftValueAnalog
	integer vidInPhaseValueAnalog
	
	// audio input info
	integer audInFormatAutoStatus
	char audInFormat[15]
}

// Structure to store information about a DXLink receiver
structure _sDXLinkRx
{
	// video output info
	char vidOutScalingMode[15]
	char vidOutResolution[15]
	char vidOutAspectRatio[15]
	char vidOutTestPattern[15]
	integer vidOutMuteStatus
	
	// audio output info
	integer audOutDelay
	integer audOutMuteStatus
	char audOutFormat[15]
	
	// Other info
	char friendlyname[50]
}


/*
 * --------------------
 * DXLink constants
 * --------------------
 */

define_constant


/*
 * --------------------
 * DXLink receiver video command headers
 * --------------------
 */


char DXLINK_COMMAND_RX_VIDEO_OUT_SCALE_MODE_REQUEST[]       = '?VIDOUT_SCALE'
char DXLINK_COMMAND_RX_VIDEO_OUT_SCALE_MODE[]               = 'VIDOUT_SCALE-'
char DXLINK_COMMAND_RX_VIDEO_OUT_RESOLUTION_REQUEST[]       = '?VIDOUT_RES_REF'
char DXLINK_COMMAND_RX_VIDEO_OUT_RESOLUTION[]               = 'VIDOUT_RES_REF-'
//char DXLINK_COMMAND_RX_VIDEO_OUT_RES_REQUEST[]            = '?VIDOUT_RES'     // does same thing as '?VIDOUT_RES_REF'
char DXLINK_COMMAND_RX_VIDEO_OUT_ASPECT_RATIO_REQUEST[]     = '?VIDOUT_ASPECT_RATIO'
char DXLINK_COMMAND_RX_VIDEO_OUT_ASPECT_RATIO[]             = 'VIDOUT_ASPECT_RATIO-'
char DXLINK_COMMAND_RX_VIDEO_OUT_TEST_PATTERN_REQUEST[]     = '?VIDOUT_TESTPAT'
char DXLINK_COMMAND_RX_VIDEO_OUT_TEST_PATTERN[]             = 'VIDOUT_TESTPAT'
char DXLINK_COMMAND_RX_VIDEO_OUT_MUTE_REQUEST[]             = '?VIDOUT_MUTE'
char DXLINK_COMMAND_RX_VIDEO_OUT_MUTE[]                     = 'VIDOUT_MUTE'


/*
 * --------------------
 * DVX receiver audio command headers
 * --------------------
 */


char DXLINK_COMMAND_RX_AUDIO_OUT_MUTE_REQUEST[]     = '?AUDOUT_MUTE'
char DXLINK_COMMAND_RX_AUDIO_OUT_MUTE[]             = 'AUDOUT_MUTE-'
char DXLINK_COMMAND_RX_AUDIO_OUT_FORMAT_REQUEST[]   = '?AUDOUT_FORMAT'
char DXLINK_COMMAND_RX_AUDIO_OUT_FORMAT[]           = 'AUDOUT_FORMAT-'


/*
 * --------------------
 * DXLink transmitter video command headers
 * --------------------
 */


char DXLINK_COMMAND_TX_VIDEO_IN_AUTO_SELECT_REQUEST[]                   = '?VIDIN_AUTO_SELECT'
char DXLINK_COMMAND_TX_VIDEO_IN_AUTO_SELECT[]                           = 'VIDIN_AUTO_SELECT-'
char DXLINK_COMMAND_TX_VIDEO_IN_SIGNAL_ROUTE_REQUEST[]                  = '?INPUT-VIDEO,6'
char DXLINK_COMMAND_TX_VIDEO_IN_SIGNAL_ROUTE[]                          = 'VI'
char DXLINK_COMMAND_TX_SWITCH_RESPONSE[]                                = 'SWITCH-'
char DXLINK_COMMAND_TX_VIDEO_IN_STATUS_REQUEST[]                        = '?VIDIN_STATUS'
char DXLINK_COMMAND_TX_VIDEO_IN_STATUS_RESPONSE[]                       = 'VIDIN_STATUS-'
char DXLINK_COMMAND_TX_VIDEO_IN_FORMAT_REQUEST[]                        = '?VIDIN_FORMAT'
char DXLINK_COMMAND_TX_VIDEO_IN_FORMAT[]                                = 'VIDIN_FORMAT-'
char DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_AUTO_REQUEST[]               = '?VIDIN_RES_AUTO'
char DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_AUTO[]                       = 'VIDIN_RES_AUTO-'
char DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION_REQUEST[]                    = '?VIDIN_RES_REF'
char DXLINK_COMMAND_TX_VIDEO_IN_RESOLUTION[]                            = 'VIDIN_RES_REF-'
char DXLINK_COMMAND_TX_VIDEO_IN_EDID_PREFERRED_RESOLUTION_REQUEST[]     = '?VIDIN_PREF_EDID'
char DXLINK_COMMAND_TX_VIDEO_IN_EDID_PREFERRED_RESOLUTION[]             = 'VIDIN_PREF_EDID-'
char DXLINK_COMMAND_TX_VIDEO_IN_EDID_SOURCE_REQUEST[]                   = '?VIDIN_EDID'
char DXLINK_COMMAND_TX_VIDEO_IN_EDID_SOURCE[]                           = 'VIDIN_EDID-'
char DXLINK_COMMAND_TX_VIDEO_IN_HDCP_COMPLIANCE_REQUEST[]               = '?VIDIN_HDCP'
char DXLINK_COMMAND_TX_VIDEO_IN_HDCP_COMPLIANCE[]                       = 'VIDIN_HDCP-'
char DXLINK_COMMAND_TX_VIDEO_IN_VERTICAL_SHIFT_REQUEST[]                = '?VIDIN_VSHIFT'
char DXLINK_COMMAND_TX_VIDEO_IN_VERTICAL_SHIFT[]                        = 'VIDIN_VSHIFT'
char DXLINK_COMMAND_TX_VIDEO_IN_HORIZONTAL_SHIFT_REQUEST[]              = '?VIDIN_HSHIFT'
char DXLINK_COMMAND_TX_VIDEO_IN_HORIZONTAL_SHIFT[]                      = 'VIDIN_HSHIFT'
char DXLINK_COMMAND_TX_VIDEO_IN_PHASE_REQUEST[]                         = '?VIDIN_PHASE'
char DXLINK_COMMAND_TX_VIDEO_IN_PHASE[]                                 = 'VIDIN_PHASE'


/*
 * --------------------
 * DXLink transmitter audio command headers
 * --------------------
 */


char DXLINK_COMMAND_TX_AUDIO_IN_FORMAT_AUTO_REQUEST[]   = '?AUDIN_FORMAT_AUTO'
char DXLINK_COMMAND_TX_AUDIO_IN_FORMAT_AUTO[]           = 'AUDIN_FORMAT_AUTO-'
char DXLINK_COMMAND_TX_AUDIO_IN_FORMAT_REQUEST[]        = '?AUDIN_FORMAT'
char DXLINK_COMMAND_TX_AUDIO_IN_FORMAT[]                = 'AUDIN_FORMAT-'


/*
 * --------------------
 * DXLink IR command headers
 * --------------------
 */


// not required at this time


/*
 * --------------------
 * DXLink serial command headers
 * --------------------
 */


// not required at this time


/*
 * --------------------
 * DXLink transmitter USB command headers
 * --------------------
 */


char DXLINK_COMMAND_TX_USB_HID_SERVICE_REQUEST[]    = '?USB_HID_SERVICE'
char DXLINK_COMMAND_TX_USB_HID_SERVICE[]            = 'USB_HID_SERVICE-'


/*
 * --------------------
 * DXLink receiver USB command headers
 * --------------------
 */


char DXLINK_COMMAND_RX_USB_HID_ROUTE_REQUEST[]  = '?USB_HID_ROUTE'
char DXLINK_COMMAND_RX_USB_HID_ROUTE[]          = 'USB_HID_ROUTE-'


/*
 * --------------------
 * DXLink command transmitter/receiver command headers
 * --------------------
 */


char DXLINK_COMMAND_FIRMWARE_VERSION_REQUEST[]          = '?FWVERSION'
char DXLINK_COMMAND_FIRMWARE_VERSION_RESPONSE[]         = 'FWVERSION-'
char DXLINK_COMMAND_LED_DISABLE[]                       = 'LED_DIS'
char DXLINK_COMMAND_LED_ENABLE[]                        = 'LED_EN'
char DXLINK_COMMAND_REBOOT[]                            = 'REBOOT'
char DXLINK_COMMAND_SET_FRIENDLY_NAME_AND_LOCATION[]    = 'SET_NDX_DESC-'

/*
 * --------------------
 * DXLink system command headers
 * --------------------
 */


char DXLINK_COMMAND_DXLINK_MODE_REQUEST[]   = '?DXLINK'
char DXLINK_COMMAND_DXLINK_MODE[]           = 'DXLINK-'
char DXLINK_COMMAND_ICSLAN[]                = 'ICSLAN-'
char DXLINK_COMMAND_PERSIST_AV_SETTINGS[]   = 'PERSISTAV'
char DXLINK_COMMAND_FACTORY_AV_SETTINGS[]   = 'FACTORYAV'
char DXLINK_COMMAND_TELNET_PORT[]           = 'SET TELNET PORT '


/*
 * --------------------
 * DXLink ports
 * --------------------
 */


integer DXLINK_PORT_MAIN                = 1
integer DXLINK_PORT_SERIAL              = 1
integer DXLINK_PORT_IR_TX               = 3
integer DXLINK_PORT_IR_RX               = 4
integer DXLINK_PORT_USB                 = 5
integer DXLINK_PORT_AUDIO_OUTPUT        = 6
integer DXLINK_PORT_VIDEO_OUTPUT        = 6
integer DXLINK_PORT_AUDIO_INPUT         = 7
integer DXLINK_PORT_VIDEO_INPUT_DIGITAL = 7
integer DXLINK_PORT_VIDEO_INPUT_ANALOG  = 8


/*
 * --------------------
 * DXLink command parameter values
 * --------------------
 */


// DXLink Telnet Port Options
char DXLINK_TELNET_PORT_DISABLE[]    = '0'
char DXLINK_TELNET_PORT_ENABLE[]     = '23'

// DXLink RX Scaler Modes
char DXLINK_SCALE_MODE_AUTO[]    = 'AUTO'
char DXLINK_SCALE_MODE_BYPASS[]  = 'BYPASS'
char DXLINK_SCALE_MODE_MANUAL[]  = 'MANUAL'

// DXLink RX Aspect Ratios
char DXLINK_ASPECT_RATIO_ANAMORPHIC[]    = 'ANAMORPHIC'
char DXLINK_ASPECT_RATIO_MAINTAIN[]      = 'MAINTAIN'
char DXLINK_ASPECT_RATIO_STRETCH[]       = 'STRETCH'
char DXLINK_ASPECT_RATIO_ZOOM[]          = 'ZOOM'

// DXLink RX Test Patterns
char DXLINK_TEST_PATTERN_OFF[]           = 'OFF'
char DXLINK_TEST_PATTERN_COLOR_BAR[]     = 'COLOR BAR'
char DXLINK_TEST_PATTERN_GRAY_RAMP[]     = 'GRAY RAMP'
char DXLINK_TEST_PATTERN_HILO_TRACK[]    = 'HILOTRACK'
char DXLINK_TEST_PATTERN_PLUGE[]         = 'PLUGE'
char DXLINK_TEST_PATTERN_SMPTE_BAR[]     = 'SMPTE BAR'
char DXLINK_TEST_PATTERN_X_HATCH[]       = 'X-HATCH'

// DXLink RX Audio Output Formats
char DXLINK_AUDIO_OUTPUT_FORMAT_ALL[]    = 'ALL'
char DXLINK_AUDIO_OUTPUT_FORMAT_ANALOG[] = 'ANALOG'
char DXLINK_AUDIO_OUTPUT_FORMAT_HDMI[]   = 'HDMI'

// DXLink TX Audio Input Formats
char DXLINK_AUDIO_INPUT_FORMAT_ANALOG[]  = 'ANALOG'
char DXLINK_AUDIO_INPUT_FORMAT_HDMI[]    = 'HDMI'
char DXLINK_AUDIO_INPUT_FORMAT_SPDIF[]   = 'SPDIF'

// DXLink modes
char DXLINK_MODE_END_POINT[] = 'ENDPOINT'
char DXLINK_MODE_EXTENDER[]  = 'EXTENDER'

// DXLink EDID Sources
char DXLINK_EDID_SOURCE_ALL_RESOLUTIONS[]    = 'ALL RESOLUTIONS'
char DXLINK_EDID_SOURCE_FULL_SCREEN[]        = 'FULL-SCREEN'
char DXLINK_EDID_SOURCE_WIDE_SCREEN[]        = 'WIDE-SCREEN'
char DXLINK_EDID_SOURCE_MIRROR_OUT_1[]       = 'MIRROR OUT 1'
char DXLINK_EDID_SOURCE_MIRROR_OUT_LOCAL[]   = 'MIRROR OUT LOCAL'
char DXLINK_EDID_SOURCE_USER_EDID_1[]        = 'USER EDID 1'
char DXLINK_EDID_SOURCE_USER_EDID_MODIFIED[] = 'USER_EDID_MODIFIED'

// DXLink Signal Status
char DXLINK_SIGNAL_STATUS_NO_SIGNAL[]    = 'NO SIGNAL'
char DXLINK_SIGNAL_STATUS_UNKNOWN[]      = 'UNKNOWN'
char DXLINK_SIGNAL_STATUS_VALID_SIGNAL[] = 'VALID SIGNAL'

// DXLink video input ports
char DXLINK_VIDEO_INPUT_PORT_ANALOG[]    = 'ANALOG'
char DXLINK_VIDEO_INPUT_PORT_DIGITAL[]   = 'DIGITAL'

// DXLink auto select options
char DXLINK_AUTO_SELECT_ANALOG_PRIORITY[] = 'ANALOG'


/*
 * --------------------
 * Functions to parse return comamands from DXLink transmitters/receivers
 * --------------------
 */

define_constant

char cDxlinkCmdHeaderSeperator[]    = '-'
char cDxlinkCmdParamaterSeperator[] = ','

// Name   : ==== DxlinkParseCmdHeader ====
// Purpose: To parse out parameters from DXLink Tx/Rx send_command or send_string
// Params : (1) IN/OUT  - sndcmd/str data
// Returns: parsed property/method name, still includes the leading '?' and/or trailing command seperating caharacter if present
// Notes  : Parses the strings sent to or from modules extracting the command header.
//          Command separating character assumed to be '-'
//
define_function char[100] dxlinkParseCmdHeader(CHAR cCmd[])
{
	stack_var char cCmdHeader[100]
	
	cCmdHeader = remove_string(cCmd,cDxlinkCmdHeaderSeperator,1)
	
	return cCmdHeader
}

// Name   : ==== dxlinkParseCmdParam ====
// Purpose: To parse out parameters from received DXLink Tx/Rx send_command or send_string
// Params : (1) IN/OUT  - sndcmd/str data
// Returns: Parse parameter from the front of the string not including the separator
// Notes  : Parses the strings sent to or from modules extracting the parameters.
//          A single param is picked of the cmd string and removed, through the separator.
//          The separator is NOT returned from the function.
//          If the first character of the param is a double quote, the function will 
//          remove up to (and including) the next double-quote and the separator without spaces.
//          The double quotes will then be stripped from the parameter before it is returned.
//          If the double-quote/separator sequence is not found, the function will remove up to (and including)
//          the separator character and the leading double quote will NOT be removed.
//          If the separator is not found, the entire remained of the command is removed.
//          Parameter separating character assumed to be ','
//
define_function char[100] dxlinkParseCmdParam(CHAR cCmd[])
{
	stack_var char cTemp[100]
	stack_var char cSep[1]
	stack_var char chC
	stack_var integer nLoop
	stack_var integer nState
	stack_var char bInquotes
	stack_var char bDone
	
	// Reset state
	nState = 1; //ST_START
	bInquotes = FALSE;
	bDone = FALSE;
	
	// Loop the command and escape it
	for (nLoop = 1; nLoop <= length_array(cCmd); nLoop++)
	{
		// Grab characters and process it based on state machine
		chC = cCmd[nLoop];
		switch (nState)
		{
			// Start or string: end of string bails us out
			case 1: //ST_START
			{
				// Starts with a quote?
				// If so, skip it, set flag and move to collect.
				if (chC == '"')
				{
					nState = 2; //ST_COLLECT
					bInquotes = TRUE;
				}
				
				// Starts with a comma?  Empty param
				else if (chC == cDxlinkCmdParamaterSeperator)
				{
					// I am done
					bDone = TRUE;
				}
				
				// Not a quote or a comma?  Add it to the string and move to collection
				else
				{
					cTemp = "cTemp, chC"
					nState = 2; //ST_COLLECT
				}
				break;
			}
			
			// Collect string.
			case 2: //ST_COLLECT
			{
				// If in quotes, just grab the characters
				if (bInquotes)
				{
					// Ah...found a quote, jump to end quote state
					if (chC == '"' )
					{
					nState = 3; //ST_END_QUOTE
					break;
					}
				}
				
				// Not in quotes, look for commas
				else if (chC == cDxlinkCmdParamaterSeperator)
				{
					// I am done
					bDone = TRUE;
					break;
				}
				
				// Not in quotes, look for quotes (this would be wrong)
				// But instead of barfing, I will just add the quote (below)
				else if (chC == '"' )
				{
					// I will check to see if it should be escaped
					if (nLoop < length_array(cCmd))
					{
					// If this is 2 uqotes back to back, just include the one
					if (cCmd[nLoop+1] = '"')
						nLoop++;
					}
				}
				
				// Add character to collection
				cTemp = "cTemp,chC"
				break;
			}
			
			// End Quote
			case 3: //ST_END_QUOTE
			{
				// Hit a comma
				if (chC == cDxlinkCmdParamaterSeperator)
				{
					// I am done
					bDone = TRUE;
				}
				
				// OK, found a quote right after another quote.  So this is escaped.
				else if (chC == '"')
				{
					cTemp = "cTemp,chC"
					nState = 2; //ST_COLLECT
				}
				break;
			}
		}
		
		// OK, if end of string or done, process and exit
		IF (bDone == TRUE || nLoop >= length_array(cCmd))
		{
			// remove cTemp from cCmd
			cCmd = mid_string(cCmd, nLoop + 1, length_string(cCmd) - nLoop)
			
			// cTemp is done
			return cTemp;
		}
	}

	// Well...we should never hit this
	return "";
}

#end_if