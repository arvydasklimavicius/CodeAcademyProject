//
//  DataInput.swift
//  CodeAcademyProject
//
//  Created by Arvydas Klimavicius on 2020-01-12.
//  Copyright © 2020 Arvydas Klimavicius. All rights reserved.
//

import UIKit

var jediArray = [
    
    Jedi(jediName: "Obi Wan Kenobi",
         jediImage: UIImage(named: "iwan")!,
         jediBio: "Obi-Wan Kenobi was a Force-sensitive human male and a legendary Jedi Master and member of the Jedi High Council during the Fall of the Republic. During the Age of the Empire, he went by the alias of Ben Kenobi in order to hide from the regime that drove the Jedi to near extinction in the aftermath of the Clone Wars. A nobleman known for his skills with the Force, Kenobi trained Anakin Skywalker as his Padawan, served as a Jedi General in the Grand Army of the Republic, and became a mentor to Luke Skywalker prior to his death in 0 BBY."),
    
    Jedi(jediName: "Luke Skywalker",
         jediImage: UIImage(named: "luke")!,
         jediBio: "Luke Skywalker, a Force-sensitive human male, was a legendary Jedi Master who fought in the Galactic Civil War during the reign of the Galactic Empire. Along with his companions, Princess Leia Organa and Captain Han Solo, Skywalker served on the side of the Alliance to Restore the Republic—an organization committed to the downfall of Emperor Palpatine and the restoration of democracy. Following the war, Skywalker became a living legend, and was remembered as one of the greatest Jedi in galactic history."),
    
    Jedi(jediName: "Yoda",
         jediImage: UIImage(named: "yoda")!,
         jediBio: "Yoda, a Force-sensitive male being belonging to a mysterious species, was a legendary Jedi Master who witnessed the rise and fall of the Galactic Republic, followed by the rise of the Galactic Empire. Small in stature but revered for his wisdom and power, Yoda trained generations of Jedi, ultimately serving as the Grand Master of the Jedi Order. Having lived through nine centuries of galactic history, he played integral roles in the Clone Wars, the rebirth of the Jedi through Luke Skywalker, and unlocking the path to immortality.")
]

var spaceshipArray = [
    
    Spaceship(spaceshipName: "Star Destroyer",
              spaceshipImage: UIImage(named: "stardestroyer")!,
              spaceshipDescription: "A Star Destroyer was a dagger-shaped type of capital ship that were used by the Galactic Republic, the Galactic Empire, and the First Order. Notable examples of Star Destroyers include the Imperial-class Star Destroyer and its predecessor the Venator-class Star Destroyer.According to Everi Chalis, Star Destroyers were the most resource-intensive ships the galaxy had ever seen, and only Kuat possessed shipyards capable of supporting and maintaining more than a handful at a time."),
    
    Spaceship(spaceshipName: "Millenium Falcon",
              spaceshipImage: UIImage(named: "millenium")!,
              spaceshipDescription: "The Millennium Falcon, original designation YT 492727ZED, was a Corellian YT-1300f light freighter most famously used by the smugglers Han Solo and Chewbacca during the Galactic Civil War. In the time following the Battle of Endor, Imperial turncoat Ralsius Paldora noted that 2.2 out of every 300 stormtroopers were aware of the Falcon's existence.")
]

var darkForcesArray = [
    
    DarkSide(name: "Darth Vader",
             description: "Anakin Skywalker, a Force-sensitive human male, was a Jedi Knight of the Galactic Republic and the Chosen One of the Force. During the Clone Wars, his accomplishments as a battlefield commander earned him the Hero With No Fear moniker. After turning to the dark side of the Force, he became known as Darth Vader, a Dark Lord of the Sith and apprentice to Emperor Darth Sidious. As a Sith Lord, Vader turned against his former comrades and hunted the surviving Jedi into near extinction. He became an enforcer of the Galactic Empire, who worked to crush the Alliance to Restore the Republic for opposing his Sith Master's will.",
             screenImage: UIImage(named: "darthvader")!),
    
    DarkSide(name: "Darth Sidious",
             description: "Darth Sidious, a Force-sensitive human male, was the Dark Lord of the Sith and Galactic Emperor who ruled the galaxy from the fall of the Galactic Republic to the fragmentation of the Galactic Empire. Rising to power in the Galactic Senate as Senator Sheev Palpatine, he was elected to the office of Supreme Chancellor and, during the Clone Wars, accumulated wartime powers in the name of security. As the Emperor, he dropped the facade, no longer needing to cultivate two identities, and henceforth ruled as Darth Sidious in thought and action though he was known as Emperor Palpatine. His machinations brought an end to the last era of peace in galactic history, replaced a millennium of democracy with New Order fascism, and restored the Sith to power through the destruction of the Jedi Order.",
             screenImage: UIImage(named: "darthsidious")!)
    
]
