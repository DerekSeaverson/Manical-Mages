if (!audio_is_playing(snd_menuMusic)) {
	audio_stop_all(); //stops all music if player has completed game rather than viewing credits from main menu
}
//creates credits text and starts at bottom of the screen
window_set_cursor(cr_default);
draw_set_halign(fa_center);
draw_set_color(c_white);
creditsText = "CREATOR/PROGRAMMER\n\nDerek Seaverson\n----------------------------\n\nARTISTIC PRODUCERS\n\nMain Character\nAntifarea\n\nBackground Tileset\nIvan Voirol\n\nEnemy Mages\nk-skills\n\nHealth/Hearts\nDansevenstar\n\nPotions\nKyrise\n\nBoss\nFoxblink\n\nFairy\nLunovox\n\nSword and Potion Explosion\nTuomoUntinen\n----------------------------\n\nMUSIC PRODUCERS\n\nMain Menu Music\nshalpin\n\nLore Reading Background\nbrandon75689\n\nOverworld Theme\nremaxim\n\nCastle Music\nremaxim\n\nBoss Music\ncynicmusic\n\nLose Music\nremaxim\n\nButtons/Potion Pickup Sound Effects\nleohpaz\n\nSword Swish\nartisticdude\n\nPotion Break\nrubberduck\n\nLose Music\nremaxim\n\nAttack Potion Explosion\nBart K.\n\nPlayer Hurt\nChristopherderp\n\nPlayer Death\nHighPixel\n\nMage Sword Damage\nxtrgamr\n\nMage Potion Damage\nprimeval_polypod\n\nBoss Death\nSyna-Max\n\nBoss Sword Damage\nMATRIXXX_\n\nBoss Potion Damage\nrafaelzimrp\n\n----------------------------\n\nTHANK YOU FOR PLAYING\n\nKINDGOM:\nMANIACAL MAGES\n";
creditsHeight = room_height;
