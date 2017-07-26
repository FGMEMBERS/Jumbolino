#********************************************************************************************************************************
#* basic helper routines for instruments and systems                                                                            *
#* Peter Brendt (JWocky) 2015-                                                                                                  *
#* Feel free to copy it whole or in parts, it's GPL 2.0                                                                         *
#********************************************************************************************************************************

var show_alti = func {
	var press_inhg = getprop("/instrumentation/altimeter/setting-inhg");
	if (press_inhg == nil) {
		press_inhg = 0.0;
	}

	var alt_ft = getprop("/instrumentation/aglradar/alt-ft");
	if (alt_ft == nil) {
		alt_ft = 0.0;
	}

	var alt_on = getprop("/instrumentation/aglradar/power-btn");
	if (alt_on == nil) {
		alt_on = 0;	
	}

	var s_alti = getprop("/instrumentation/altimeter/indicated-altitude-ft") or 0;
	if (alt_on) {
		help_win.write(sprintf("With %.2f inhg the actual altitude is: %.0f ft. AGL is %.0f ft", press_inhg, s_alti, alt_ft) );
  	} else {
		help_win.write(sprintf("With %.2f inhg the actual altitude is: %.0f ft. Groundradar is off.", press_inhg, s_alti, alt_ft) ); 
	}
}

