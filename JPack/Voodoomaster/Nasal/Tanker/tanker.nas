var toggle=func(num) {
	device=getprop("voodoomaster/refuel["~num~"]/device");
	if (device=="RefuelBoom") {
		if (getprop("voodoomaster/refuel["~num~"]/boom-angle")<0.1) {
			setprop("voodoomaster/refuel["~num~"]/boom-angle", 0.33);
			setprop("voodoomaster/refuel["~num~"]/boom-angle", 1.00);
		} else {
			setprop("voodoomaster/refuel["~num~"]/boom-angle", 0.00);
			setprop("voodoomaster/refuel["~num~"]/boom-angle", 0.00);
		}
	}
	if (device=="RefuelProbe") {
		if (getprop("voodoomaster/refuel["~num~"]/probe-extended")==0) {
			setprop("voodoomaster/refuel["~num~"]/probe-extended", 1);
		} else {
			setprop("voodoomaster/refuel["~num~"]/probe-extended", 0);
		}
	}
}
