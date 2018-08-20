//
//  ConsoleCollection.swift
//  Retro
//
//  Created by Matthieu PASSEREL on 23/07/2018.
//  Copyright © 2018 Matthieu PASSEREL. All rights reserved.
//

import UIKit

class ConsoleCollection {
    
    func obtenirListe() -> [Console] {
        
        var liste: [Console] = []
        
        let atari = Console(nom: "Atari 2600", logo: "Logo Atari 2600", modele2: "Atari 2600 JR", debut: 1977, fin: 1992, unite: 30, hit: "Pac man", rgb: [161, 114, 246], desc: "L’Atari 2600, à l’origine appelée Atari VCS, est une console de jeux vidéo de salon de deuxième génération produite par Atari entre 1977 et 1992.", histoire: "À l’origine, le nom de la console est Atari VCS, pour Video Computer System. Le nom Atari 2600 est utilisé pour la première fois en 1982 lors de la sortie de l’Atari 5200.\nEn 1985, Atari décide de moderniser l'apparence de sa console emblématique en lui donnant une apparence proche de la future 7800, qui sort l'année suivante.\nLa nouvelle mouture, nommée « 2600 Jr », était proposée pour 50 USD, ce qui en faisait un système abordable par rapport aux 8-bit plus puissantes de la même époque, comme la NES ou la Master System.", histoire2: "La ludothèque comprend environ 900 titres dont des hits originaux (Adventure, Kaboom!, Pitfall!, etc.), des conversions de jeux d’arcade (Asteroids, Missile Command, Pac-Man, Space Invaders, etc.) et les premiers jeux sous licence (E.T. the Extra-Terrestrial, Raiders of the Lost Ark, etc.).")
        liste.append(atari)
        
        let nes = Console(nom: "NES", logo: "Logo NES", modele2: "<#String#>", debut: 1983, fin: 2003, unite: 61.91, hit: "Super Mario Bros", rgb: [131, 118, 255], desc: "La ou le Nintendo Entertainment System, couramment abrégée en NES, ou simplement appelée Nintendo est une console de jeux vidéo de salon de troisième génération fabriquée par l'entreprise japonaise Nintendo et distribuée à partir de 1985 (1987 en Europe).\nSon équivalent japonais est la Family Computer, ou Famicom, sortie quelques années avant, en 1983. En Corée du Sud, la NES porta le nom de Comboy.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(nes)
        
        let ms = Console(nom: "Sega Master System", logo: "Logo Sega Master System", modele2: "<#String#>", debut: 1985, fin: 1997, unite: 14.8, hit: "Alex Kidd in Miracle World", rgb: [248, 150, 118], desc: "La Master System ou Sega Master System (aussi abrégé SMS) est une console de jeux vidéo de salon de troisième génération, conçue et commercialisée par le constructeur japonais Sega Enterprises, Ltd.\nElle est sortie en 1985, sous le nom Sega Mark III au Japon. La console est redessinée et rebaptisée Master System avant son lancement en 1986 en Amérique du Nord. Elle sort en Europe en 1986.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(ms)
        
        let atari7800 = Console(nom: "Atari 7800", logo: "Logo Atari 7800", modele2: "<#String#>", debut: 1986, fin: 1992, unite: 3.77, hit: "Mario", rgb: [179, 67, 132], desc: "L'Atari 7800 est une console de jeux vidéo 8-bit de salon de troisième génération, conçue et commercialisée par le constructeur américain Atari.\nElle est sortie début 1986 aux États-Unis, puis dans le courant de l'année au Japon et seulement en 1991 en France.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(atari7800)
        
        let md = Console(nom: "Sega Mega Drive", logo: "Logo Sega Mega Drive", modele2: "<#String#>", debut: 1988, fin: 1999, unite: 39.70, hit: "Sonic the Hedgehog", rgb: [248, 150, 218], desc: "La Mega Drive, est une console de jeux vidéo de salon de quatrième génération conçue et commercialisée par le constructeur japonais Sega Enterprises, Ltd.\nSega sort d'abord la console au Japon sous le nom de Mega Drive en 1988, la console est ensuite lancée en 1989 en Amérique du Nord, renommée Genesis sur ce territoire. En 1990, la console sort dans la plupart des autres territoires en tant que Mega Drive.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(md)
        
        let gb = Console(nom: "Nintendo Gameboy", logo: "Logo Nintendo Gameboy", modele2: "<#String#>", debut: 1989, fin: 2003, unite: 118.69, hit: "Tetris", rgb: [108, 122, 137], desc: "Le (ou la) Game Boy est une console portable de jeu vidéo portable 8-bits de quatrième génération développée et fabriquée par Nintendo.\nMise en vente au Japon le 21 avril 1989, puis en Amérique du Nord en octobre 1989 et enfin en Europe le 28 septembre 1990, elle est la première console portable de la gamme des Game Boy.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(gb)
        
        let gx4000 = Console(nom: "Amstrad GX4000", logo: "Logo Amstrad GX4000", modele2: "<#String#>", debut: 1990, fin: 1991, unite: 0.150000, hit: "Inconnu", rgb: [212, 57, 245], desc: "La GX-4000 est une console de jeux vidéo 8 bits de salon de troisième génération, conçu par Amstrad.\nLe lancement a lieu en septembre 1990 en Europe.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(gx4000)
        
        let snes = Console(nom: "Super Nintendo", logo: "Logo Super Nintendo", modele2: "<#String#>", debut: 1990, fin: 2003, unite: 49.10, hit: "Super Mario World", rgb: [120, 205, 171], desc: "La Super Nintendo Entertainment System (couramment abrégée SNES, Super NES), ou Super Famicom au Japon, est une console de jeux vidéo de salon de quatrième génération du constructeur japonais Nintendo.\nElle est commercialisée le 21 novembre 1990 au Japon, puis en août 1991, en Amérique du Nord et en Europe le 11 avril 1992.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(snes)
        
        let geo = Console(nom: "NEO GEO", logo: "Logo Neo Geo", modele2: "<#String#>", debut: 1990, fin: 2004, unite: 1, hit: "The King of Fighters '95", rgb: [245, 170, 96], desc: "La Neo-Geo, appelée aussi NeoGeo Advanced Entertainment System, est une console de jeu vidéo de salon de quatrième génération conçue par la société japonaise SNK.\nLa Neo-Geo sort au Japon le 26 avril 1990, en novembre 1990 en France et aux États-Unis à partir de juillet 1991.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(geo)
        
        let gg = Console(nom: "Sega Gamegear", logo: "Logo Sega Gamegear", modele2: "<#String#>", debut: 1991, fin: 1997, unite: 10.62, hit: "Sonic the Hedgehog", rgb: [153, 205, 245], desc: "La Game Gear est une console de jeux vidéo portable en couleur de quatrième génération et produite par Sega afin de concurrencer la Game Boy de Nintendo.\nMise en vente au Japon en octobre 1990, puis en Amérique du Nord en avril 1991 et enfin en Europe en juin 1991", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(gg)
        
        let jaguar = Console(nom: "Jaguar", logo: "Logo Jaguar", modele2: "<#String#>", debut: 1993, fin: 1996, unite: 0.250000, hit: "Alien vs. Predator", rgb: [221, 180, 90], desc: "La Jaguar est une console de jeux vidéo de salon de cinquième génération, produite par Atari Corporation.\nLa Jaguar sort au en Amérique du Nord le 15 novembre 1993, en Europe le 27 juin 1994 et au Japon le 21 novembre 1994.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(jaguar)
        
        let sega32 = Console(nom: "32X", logo: "Logo 32X", modele2: "<#String#>", debut: 1994, fin: 1996, unite: 0.665000, hit: "Virtua Fighter ", rgb: [123, 211, 150], desc: "La 32X, également appelée Super 32X au Japon, Sega Genesis 32X en Amérique du Nord, Sega Mega Drive 32X en Europe, est une extension de la Mega Drive, console de jeux vidéo de salon de quatrième génération du constructeur japonais Sega.\nLa commercialisation débute le 21 novembre 1994 en Amérique du Nord, au Japon à partir du 3 décembre 1994, puis en Europe en janvier 1995, ", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(sega32)
        
        let saturn = Console(nom: "Sega Saturn", logo: "Logo Sega Saturn", modele2: "<#String#>", debut: 1994, fin: 2000, unite: 9.5, hit: "Virtua Fighter 2", rgb: [235, 110, 110], desc: "La Sega Saturn, usuellement appelée Saturn, est une console de jeux vidéo de salon de cinquième génération, conçue et commercialisée par le constructeur japonais Sega Enterprises.\nElle est sortie le 22 novembre 1994 au Japon, le 11 mai 1995 en Amérique du Nord et le 8 juillet 1995 en Europe.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(saturn)
        
        let ps1 = Console(nom: "Playstation 1", logo: "Logo Playstation 1", modele2: "<#String#>", debut: 1994, fin: 2006, unite: 104.25, hit: "Gran Turismo 5", rgb: [74, 94, 201], desc: "La PlayStation est une console de jeux vidéo de salon de cinquième génération, produite par Sony Computer Entertainment.\nLa PlayStation est lancée au Japon le 3 décembre 1994, le 9 septembre 1995 aux États-Unis et le 29 septembre 1995 en Europe.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(ps1)
        
        let n64 = Console(nom: "Nintendo 64", logo: "Logo Nintendo 64", modele2: "<#String#>", debut: 1996, fin: 2003, unite: 32.93, hit: "Super Mario 64", rgb: [222, 230, 98], desc: "La Nintendo 64, est une console de jeux vidéo de salon de cinquième génération, du constructeur japonais Nintendo en collaboration avec Silicon Graphics.\nLa console sort le 23 juin 1996 au Japon, puis le 29 septembre 1996 en Amérique du Nord et l'Europe le 1er mars 1997.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(n64)
        
        let dream = Console(nom: "Sega Dreamcast", logo: "Logo Sega Dreamcast", modele2: "<#String#>", debut: 1998, fin: 2004, unite: 10.6, hit: "Sonic Adventure", rgb: [111, 184, 148], desc: "La Dreamcast est une console de jeux vidéo de salon de sixième génération développée par Sega.\nLa Dreamcast est commercialisée le 27 novembre 1998 au Japon , le 9 septembre 1999 aux États-Unis et le 14 octobre 1999 en Europe.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(dream)
        
        let gbc = Console(nom: "Gameboy Color", logo: "Logo Game Boy Color", modele2: "<#String#>", debut: 1998, fin: 2003, unite: 118.69, hit: "Pokémon Or et Argent", rgb: [157, 198, 24], desc: "La Game Boy color est une console portable de jeu vidéo de cinquième génération développée et fabriquée par Nintendo.\nElle est sortie fin 1998 au Japon, aux États-Unis et en Europe", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(gbc)
        
        let ps2 = Console(nom: "Playstation 2", logo: "Logo Playstation 2", modele2: "<#String#>", debut: 2000, fin: 2013, unite: 157.68, hit: "Grand Theft Auto: San Andreas", rgb: [190, 231, 157], desc: "La PlayStation 2 (abrégé officiellement PS2) est une console de jeux vidéo de salon de sixième génération commercialisée par Sony Computer Entertainment, filiale de Sony.\nElle est sortie le 4 mars 2000 au Japon, le 26 octobre 2000 en Amérique du Nord, le 24 novembre 2000 en Europe.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(ps2)
        
        let gba = Console(nom: "Game Boy Advance", logo: "Logo Game Boy Advance", modele2: "<#String#>", debut: 2001, fin: 2008, unite: 81.51, hit: "Pokémon Rubis et Saphir", rgb: [222, 78, 157], desc: "La Game Boy Advance (GBA) est une console de jeux vidéo portable de sixième génération développée par Nintendo.\nElle est commercialisé au Japon en mars 2001 puis en Amérique du Nord et en Europe en juin 2001.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(gba)
        
        let gamecube = Console(nom: "Gamecube", logo: "Logo Gamecube", modele2: "<#String#>", debut: 2001, fin: 2007, unite: 21.74, hit: "Super Smash Bros. Melee", rgb: [140, 45, 245], desc: "La (ou le) GameCube est une console de jeux vidéo de salon sixième génération du fabricant japonais Nintendo, développée en association avec IBM, NEC et ATI.\nLa console  sort le 14 septembre 2001 au Japon, le 18 novembre 2001 aux États-Unis et le 3 mai 2002 en Europe. ", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(gamecube)
        
        let xbox = Console(nom: "XBOX", logo: "Logo XBOX", modele2: "<#String#>", debut: 2001, fin: 2009, unite: 24.65, hit: "Halo 2", rgb: [234, 221, 15], desc: "La Xbox est une console de jeux vidéo de salon sixième génération commercialisée par Microsoft.\nElle est sortie aux États-Unis le 15 novembre 2001, puis le 22 février 2002 au Japon et en europe le 14 mars 2002.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(xbox)
  
        let gbasp = Console(nom: "Game Boy Advance SP", logo: "Logo Game Boy Advance SP", modele2: "<#String#>", debut: 2003, fin: 2008, unite: 43.57, hit: "Pokémon Rubis et Saphir", rgb: [45, 163, 200], desc: "La Game Boy Advance SP (SP pour SPecial) est une console de jeux vidéo portable de sixième génération lancée par Nintendo.\nLaGBA SP est commercialisée le 14 février 2003 au Japon , le 23 mars 2003 aux États-Unis et le 28 mars 2003 en Europe.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(gbasp)
        
        let psp = Console(nom: "Playstation Portable", logo: "Logo PlayStation Portable", modele2: "<#String#>", debut: 2004, fin: 2014, unite: 19.81, hit: "Grand Theft Auto: Liberty City Stories ", rgb: [201, 159, 37], desc: "La PlayStation Portable (ou PSP) est une console de jeux vidéo portable de sixième génération développée par Sony.\nElle sors le 12 décembre 2004 sur le marché japonais puis le 24 mars 2005 en Amérique du Nord et elle est commercialisée en Europe le 1er septembre 2005.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(psp)
        
        let gbmicro = Console(nom: "Game Boy Micro", logo: "Logo Game Boy Micro", modele2: "<#String#>", debut: 2005, fin: 2008, unite: 2.42, hit: "Pokémon Rubis et Saphir", rgb: [25, 125, 225], desc: "La Game Boy Micro est une console portable de sixième génération développée et fabriquée par Nintendo.\nElle est sortie en septembre 2005 en Amérique du Nord et au Japon, et en octobre 2005 en Europe. ", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(gbmicro)
        
        let xbox360 = Console(nom: "Xbox 360", logo: "Logo Xbox 360", modele2: "<#String#>", debut: 2005, fin: 2016, unite: 85.48, hit: "Kinect Adventures", rgb: [158, 14, 243], desc: "La Xbox 360 est une console de jeux vidéo de salon septième génération développée par Microsoft, en coopération avec IBM, ATI, Samsung et SiS.\nLa Xbox 360 sort le 22 novembre 2005 en Amérique du Nord, le 2 décembre 2005 en Europe et le 10 décembre 2005 au Japon.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(xbox360)
        
        let ps3 = Console(nom: "Playstation 3", logo: "Logo PlayStation 3", modele2: "<#String#>", debut: 2006, fin: 2017, unite: 86.89, hit: "Grand Theft Auto V", rgb: [214, 134, 213], desc: "La PlayStation 3 (abrégé officiellement PS3) est une console de jeux vidéo de salon de septième génération commercialisée par Sony.\nElle est sortie le 11 novembre 2006 au Japon, le 17 novembre 2006 en Amérique du Nord et le 23 mars 2007 en Europe.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(ps3)
        
        let wii = Console(nom: "WII", logo: "Logo WII", modele2: "<#String#>", debut: 2006, fin: 2013, unite: 101.63, hit: "Mario Kart Wii", rgb: [98, 100, 100], desc: "La Wii est une console de jeux de salon de septième génération du fabricant japonais Nintendo.\nLa Wii est lancée aux États-Unis le 19 novembre 2006 et deux semaines plus tard au Japon, le 2 décembre 2006. Le 8 décembre 2006, elle sort en Europe.", histoire: "<#String#>", histoire2: "<#String#>")
        liste.append(wii)
        
        
        return liste
    }
}
