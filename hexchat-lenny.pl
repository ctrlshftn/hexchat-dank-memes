#	hexchat-lenny.pl
#	lenny faces and dongers for hexchat 
#	By yours truly ,  ctrlshftn

use strict;
use warnings;
use HexChat qw(:all);

my $PLUGIN_NAME = 'lennys-and-dongers';
my $PLUGIN_VERS = '1.0';
my $PLUGIN_DESC = 'lenny faces and dongers for hexchat';

my $LENNY0 = '( ͡° ͜ʖ ͡°)' ;
my $LENNY1 ='ヽ༼ຈل͜ຈ༽ﾉ ';
my $LENNY2 = 'ᕦ( ͡° ͜ʖ ͡°)ᕤ' ;
my $LENNY3 = '( ͡o ͜ʖ ͡o)' ;
my $LENNY4 = '( ͡^ ͜ʖ ͡^)' ;
my $DONGERS = 'ヽ༼ຈل͜ຈ༽ﾉ raise your dongers ヽ༼ຈل͜ຈ༽ﾉ';
my $LOD = 'ಠ_ಠ';
my $DORITOS = '▼ ◄ ▲ ► ▼ ◄ ▲ ► ▼ ◄ ▲ ► ▼ ◄ ▲ ► ▼ ◄ ▲ ▼ ◄ ▲ ► ▼ ◄ ▲ ► ▼ ◄▼ ◄ ▲ ► ▼ ◄ ▲ ► ▼Sorry, Ive dropped my bag of Doritos™ brand chips▲ ► ▼ ◄ ▲ ► ▼ ◄ ▲ ▼ ◄ ▲ ► ▼ ◄ ▲ ► ▼ ◄ ▲ ► ▼ ◄ ▲ ► ▼ ► ▼ ◄ ◄ ▲▲ ► ▼ ◄▼ ◄ ◄ ▼ ◄ ▲ ► ▼ ◄ ▲ ► ▼ ◄ ▲ ► ▼ ◄ ▲ ►';
my $REKT = '☐ Not REKT ☑ REKT ☑ REKTangle ☑ SHREKT ☑ REKT-it Ralph ☑ Total REKTall ☑ The Lord of the REKT ☑ The Usual SusREKTs ☑ North by NorthREKT ☑ REKT to the Future ☑ Once Upon a Time in the REKT ☑ The Good, the Bad, and the REKT ☑ LawREKT of Arabia ☑ Tyrannosaurus REKT';
my $FUCK='ᶠᶸᶜᵏ♥ᵧₒᵤ';
my $BEF='.bef';
my $SHRUG='¯\_(ツ)_/¯';

register($PLUGIN_NAME, $PLUGIN_VERS, $PLUGIN_DESC, \&on_load);
HexChat::printf("Raising Dongers ヽ༼ຈل͜ຈ༽ﾉ");


hook_command('ly', \&lenny, {help_text => "Usage: /ly <number> "});
hook_command('don', \&dongers, {help_text => "Usage: /don "});
hook_command('dis', \&lod, {help_text => "Usage: /dis "});
hook_command('dor', \&doritos, {help_text => "Usage: /dor "});
hook_command('rekt', \&rekt, {help_text => "Usage: /rekt "});
hook_command('fu', \&fuckYou, {help_text => "Usage: /fu "});
hook_command('b', \&bef, {help_text => "Usage: /b "});
hook_command('sh', \&shrug, {help_text => "Usage: /sh "});

sub lenny {
	my $input = $_[1][1];
	if (defined $input) {
			if($input == 1){command("say $LENNY1");	}
			elsif($input == 2){command("say $LENNY2");	}
			elsif($input == 3){command("say $LENNY3");	}
			elsif($input == 4){command("say $LENNY4");	}
			else {command("say $LENNY0");	}
	}
	else
	{command("say $LENNY0");}

	return EAT_ALL;
}

sub dongers {
	command("say $DONGERS");	
	return EAT_ALL;
}

sub lod {
	command("say $LOD");	
	return EAT_ALL;
}

sub doritos {
	command("say $DORITOS");
	return EAT_ALL;
}
sub rekt {
	command("say $REKT");
	return EAT_ALL;
}

sub fuckYou {
	command("say $FUCK");
	return EAT_ALL;
}
sub bef {
	command("say $BEF");
	return EAT_ALL;
}
sub shrug {
	command("say $SHRUG");
	return EAT_ALL;
}

sub on_unload {
	HexChat::printf("Dongers Lowered ﾉ༼ຈل͜ຈ༽ヽ");
}
		
