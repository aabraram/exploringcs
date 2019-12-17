//adventure.ch
//choose your own adventure story

//variable declarations
string_t section1ans;
string_t sec1optAans;
string_t sec1optBans;
string_t sec1optCans;
string_t sec1optA2ans;
string_t sec1optA3ans;
string_t sec1optA4ans;
string_t dogname;
string_t dogname2;
string_t catname;
int lock;
int lockCode;
int diceRoll;
int die;
string_t boxCode;
string_t mapQ;

void section1() { //function for intro to section1
    do{
        printf("You wake up in a chair inside of a room.\nOn the floor, a cat stares at you intently, as if it wants to follow you.\nWhat do you want to name the cat?\n");
        scanf("%s", &catname);
        printf("There are several rooms in the building you are in, and there is also a door that leads outside.\nWhere do you go, A) outside, B) stay inside and search the rooms, or C) sit back in the chair and go back to sleep?\n");
        scanf("%s", &section1ans);
    }while(section1ans != "A" && section1ans != "B" && section1ans != "C");
}

void sec1optA() { //function for option A
    do {
        printf("You go outside.\nOutside, you see rolling plains and a cloudless sky.\nThere is a path on the ground.\nThere are three directions you can go, A) right, B) left, C) forward. Which way do you go?\n");
        scanf("%s", &sec1optAans);
    }while(sec1optAans != "A" && sec1optAans != "B" && sec1optAans != "C");
}
    
void sec1optB() { //function for option B
    do {
        printf("You decide to stay inside.\nInside, there are three rooms you can walk into,\nA) the living room, B) the kitchen or C) a closet. Which room do you go into?\n");
        scanf("%s", &sec1optBans);
    }while(sec1optBans != "A" && sec1optBans != "B" && sec1optBans != "C");
}
void sec1optC() { //function for option C
    do {
        printf("You decide to go back to sleep in the chair.\nAfter waking up, you notice %s has crawled into your lap.Do you \nA) move and risk possible near death from waking %s, \nB) remain in the chair and sit back and enjoy life, or \nC) go back to sleep?\n", catname, catname);
        scanf("%s", &sec1optCans);
    }while(sec1optCans != "A" && sec1optCans != "B" && sec1optCans != "C");
}


void sec1optAA() { //function for option A, then A
        printf("You go to the right to find a puppy frolicking in the grass.\nIt looks at you as if it wants to follow you.\nWhat do you want to name the puppy?\n");
        scanf("%s", &dogname);
        printf("You and your new companion %s frolick together in the grass.\n", dogname);
        printf("THE END");
        sleep(3);
        exit(1);
}
void sec1optAB() { //function for option A, then B
    printf("You go left on the path.\nAlong the path, you notice thickening fog.\nThe path becomes rough and the sky becomse gray with clouds.\nThere is an entrance to a building, and blocking the entrance is a large dog.\nThe dog moves out of the way and nudges you.\nWhat do you want to name it?\n");
    scanf("%s", &dogname2);
    printf("%s follows you, along with %s.\n", dogname2, catname);
    printf("You find an old man who has a die and a bag in his hand.\nHe tells you 'I will roll this die.\nIf you guess what the number is, then you can have this bag of money.'\n");
    do {
        die = randint(1,6);
        scanf("%d", &diceRoll);
        if(diceRoll==die) {
            printf("Congrats, you won!\n");
            printf("You, %s, and %s live happily ever after.\n", dogname2, catname);
            printf("THE END");
            sleep(3);
            exit(1);
        }else{
            printf("Sorry, you lost. Better luck next time!");
            printf("\nTHE END\n");
            sleep(3);
            exit(1);
        }
    }while(diceRoll<=6);
}
    
void sec1optAC() { //function for option A, then C
    do {
        printf("You continue forward on the trail, %s following you.\n", catname);
        printf("The path becomes wider as it nears a large building.\nOn the door, there is a single digit, 1-10, lock combination.\nWhat do you want to guess for the combination?\n");
        lockCode = randint(1,10);
        scanf("%d", &lock);
    }while(lock>10);
    if(lock == lockCode){
        printf("The lock clicks, and the door swings open, revealing a room with an unlimited amount of Popeye's chicken sandwiches.");
        printf("\nTHE END");
        sleep(3);
        exit(1);
    }else{
        do{
            printf("It didn't work. Try again.\n");
            scanf("%d", &lock);
            if(lock == lockCode){
                printf("The lock clicks, and the door swings open, revealing a room with an unlimited amount of Popeye's chicken sandwiches.");
                printf("\nTHE END\n");
                sleep(3);
                exit(1);
            }
        }while(lock != lockCode);
    }
}
void sec1optBA() { //function for option B, then A
    printf("You walk into the living room.\nThere is a TV with endless Netflix free trials and a comfy sofa and a stocked mini-fridge.\n");
    printf("THE END\n");
    sleep(3);
    exit(1);
}
void sec1optBB() { //function for option B, then B
        printf("You walk into a kitchen.\nYou search the entire room.\nThe cabinets and cupboards are filled to the brim with cooking instruments and ingredients, which is good.\nExcept you don't actually know how to cook.\n");
        printf("THE END\n");
        sleep(3);
        exit(1);
}
void sec1optBC() { //function for option B, then C
    printf("You open the closet.\nYou find absolutely nothing of value, except a box with a 6-letter passcode.\nA hint inscribed in the side of the box says 'The password is simple'. What do you want to guess for the password?\n");
    scanf("%s", &boxCode);
    if(boxCode == "simple"){
        printf("The password was correct, and the box opens to reveal a bar of gold.\nToo bad you can't use it or sell it.\nYou give it to %s to play with.", catname);
        printf("\nTHE END");
        sleep(3);
        exit(1);
    }else{
        printf("The password was incorrect, and the box locks up.\nYou can't move the letters for the password.");
        printf("\nTHE END");
        sleep(3);
        exit(1);
    }
}
void sec1optCA() { //function for option C, then A
    printf("You decide moving out of the chair is the best option.\nWell, obviously not, because the millisecond you move a muscle %s scratches your arms to oblivion.\nAfraid to move again, you sit in the chair with great pain as %s sleeps in your lap.\n", catname, catname);
    printf("THE END");
    sleep(3);
    exit(1);
}    

void sec1optCB() { //function for option C, then B
    printf("You decide to not risk life and limb to get out of the chair and enjoy living while you can.\nWhich is a smart decision on your part.\n");
    printf("THE END");
    sleep(3);
    exit(1);
}
void sec1optCC() { //function for option C, then C
    printf("You decide to go back to sleep.\nThe nap is refreshing and you don't want to wake up.\nYou decide you want to keep sleeping for as long as possible with %s on your lap.\n", catname);
    printf("THE END");
    sleep(3);
    exit(1);
}
int main(){ //start function
    printf("Do you want to see a road map for all possible options? Type Y if so.\n");
    scanf("%s", &mapQ);
    if(mapQ == "Y"){
        printf("             Start\n");
        printf("           /   |   \\ \n");
        printf("     Outside   |        Stay\n");
        printf("   /    |    \\ |     /   |   \\ \n");
        printf("Right  Left Forward Move Sit   Sleep\n");
        printf("               |\n"); 
        printf("             Inside\n");
        printf("          /    |    \\ \n");
        printf("   Living   Kitchen   Closet\n");
    }
    section1(); //intro
    if(section1ans == "A"){ //option 1
        sec1optA();
        if(sec1optAans == "A"){ //end 1
            sec1optAA();
        }
        if(sec1optAans == "B"){ //end 2
            sec1optAB();
        }
        if(sec1optAans == "C"){ //end 3
            sec1optAC();
        }
    }
    if(section1ans == "B"){ //option 2
        sec1optB();
        if(sec1optBans == "A"){ //end 4
            sec1optBA();
        }
        if(sec1optBans == "B"){ //end 5
            sec1optBB();
        }
        if(sec1optBans == "C"){ //end 6
            sec1optBC();
        }
    }
    if(section1ans == "C"){ //option 3
        sec1optC();
        if(sec1optCans == "A"){ //end 7
            sec1optCA();
        }
        if(sec1optCans == "B"){ //end 8
            sec1optCB();
        }
        if(sec1optCans == "C"){ //end 9
            sec1optCC();
        }
    }
}



