use Win32::GuiTest qw(FindWindowLike GetWindowText 
SetForegroundWindow SendKeys);

$Win32::GuiTest::debug = 1;


while(1){

	my @windows2 = FindWindowLike(0, "^PowerTest", "");
	
	for (@windows2) {
		print "$_>\t'", GetWindowText($_), "'\n";
		SetForegroundWindow($_);
		SendKeys("^(a)^(c)");
	}
	
	my @windows3 = FindWindowLike(0, "^*PowerTest", "");
	
	for (@windows3) {
		print "$_>\t'", GetWindowText($_), "'\n";
		SetForegroundWindow($_);
		SendKeys("^(a)^(c)");
	}


	my @windows = FindWindowLike(0, "^y0on2q", "");
	for (@windows) {
		print "$_>\t'", GetWindowText($_), "'\n";
		SetForegroundWindow($_);
		SendKeys("^(v)~ ");
	}
	
	print"send finish\n";
	sleep(10)
}
