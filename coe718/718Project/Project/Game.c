#include <LPC17xx.H>
#include "string.h"
#include "GLCD.h"
#include "LED.h"
#include "KBD.h"
#include "Media_Center.h"
#include "Photo_Gallery.h"
#include "Game.h"

#define __FI        1
#define DELAY_2N		18

int player_x, player_y;
int once = 0, game_over = 0, score = 0, i = 0, spawn = 0, speed = 0, counter = 0, enemies = 0;
int spawnright, spawnleft, spawnup, spawndown;
int resetr, resetl, resetu, resetd;


extern unsigned char PLAYER[];
extern unsigned char BLACK[];
extern unsigned char ENEMYRIGHT[];
extern unsigned char ENEMYLEFT[];
extern unsigned char ENEMYUP[];
extern unsigned char ENEMYDOWN[];

int spawning[20] = {40, 80, 120, 160, 200, 240, 280, 320, 360, 400, 440, 480, 520, 560, 600, 640, 680, 720, 760, 800};

	void delay3 (int cnt) {
  cnt <<= DELAY_2N;
  while (cnt--);
}

void Enemyspawnright (int enemy_x, int enemy_y){
	if (resetr == 0){
	GLCD_Bitmap(enemy_x, enemy_y, 30, 26, ENEMYRIGHT);
	}
	else {
		GLCD_Clear(Black);
	}
	
}

void Enemyspawnleft (int enemy_x, int enemy_y){
	if (resetl == 0){
	GLCD_Bitmap(enemy_x, enemy_y, 30, 26, ENEMYLEFT);
	}
	else{
		GLCD_Clear(Black);
	}
	
}
void Enemyspawnup (int enemy_x, int enemy_y){
	if (resetu == 0){
		GLCD_Bitmap(enemy_x, enemy_y, 26, 30, ENEMYDOWN);
	}
	else {
		GLCD_Clear(Black);
	}
	
}

void Enemyspawndown (int enemy_x, int enemy_y){
	if (resetd == 0){
	GLCD_Bitmap(enemy_x, enemy_y, 26, 30, ENEMYUP);
	}
	else {
		GLCD_Clear(Black);
	}
	
}

	//Introduction Menu Screen
void Game_Check(void){
	game_over = 0;
	GLCD_Clear(Blue);
	GLCD_SetBackColor(Blue);
	GLCD_SetTextColor(Yellow);
	GLCD_Bitmap (100, 100, 25, 21, PLAYER);		
	GLCD_DisplayString(7, 2, __FI,(unsigned char*)"   DODGE THE ENEMY");
	GLCD_DisplayString(26, 14, 0,(unsigned char*)"PRESS SELECT TO CONTINUE:");	
	while(1){
		if (get_button() ==  KBD_SELECT){
			Instructions();
		}
	}
}

//Instructions Menu Screen
void Instructions(void){
	GLCD_Clear(Blue);
	GLCD_SetBackColor(Blue);
	GLCD_SetTextColor(Yellow);
	GLCD_DisplayString(2, 3, __FI,(unsigned char*)"INSTRUCTIONS:");
	GLCD_DisplayString(4, 4, __FI,(unsigned char*)"Move Joystick");
	GLCD_DisplayString(5, 5, __FI,(unsigned char*)"Up, Down, Left Right");	
	GLCD_DisplayString(6, 4, __FI,(unsigned char*)" To Maneuver");
	GLCD_DisplayString(7, 1, __FI,(unsigned char*)"Through Enemies");
	GLCD_DisplayString(26, 14, 0,(unsigned char*)"PRESS SELECT TO BEGIN:");	
	while(1){
		if (get_button() ==  KBD_SELECT){
				Game();
		}
	}
}

void Game_Over(void){
	GLCD_Clear(Blue);
	GLCD_SetBackColor(Blue);
	GLCD_SetTextColor(Yellow);		
	GLCD_DisplayString(7, 2, __FI,(unsigned char*)"   GAME OVER");
	GLCD_DisplayString(26, 14, 0,(unsigned char*)"BACK TO MAIN SCREEN: SELECT");	
	while(1){
		if (get_button() ==  KBD_SELECT){
			Media_Center();
		}
	}
}

//---------- Game ----------
void Game (void) {  
int enemy_right_x = 5, enemy_left_x = 300, enemy_up_y = 5, enemy_down_y = 190;
int enemyrightposy[10] = {40, 160, 30, 100, 80, 180, 170, 190, 10, 15};
int enemyleftposy[10] = {15, 10, 150, 100, 65, 80, 70, 20, 150, 40};
int enemyupposx[10] = {20, 80, 50, 180, 100, 230, 10, 60, 90, 55};
int enemydownposx[10] = {55, 90, 60, 10, 230, 100, 180, 50, 80, 20};
	if(once == 0){
		LED_Init ();
		KBD_Init();
		player_x = 140;
		player_y = 160;
		once++;
	}
	GLCD_Clear(Black);
	while(1){
		spawn = spawn + 2;
		counter = counter + 1;
		
		if (i == 1){
		GLCD_Bitmap(player_x, player_y, 25, 21, BLACK);
		
		i = 0;
			
		}
		GLCD_Bitmap(player_x, player_y, 25, 21, PLAYER);
		
	if(get_button() == KBD_SELECT){
		break;
	}
	else if(get_button() == KBD_LEFT){
		if (player_x >= 1){
			player_x = player_x - 1;
			i = 1;
		}
	}
	else if (get_button() == KBD_RIGHT){
		if(player_x <= 290){
			player_x = player_x + 1;
			i = 1;
		}
	}
	else if (get_button() == KBD_UP){
		if(player_y >= 1){
			player_y = player_y - 1;
			i = 1;
		}
	}		
	else if(get_button() == KBD_DOWN){
		if(player_y <= 210){
			player_y = player_y + 1;
			i = 1;
		}
	}
	
	if (spawn >= 20 && resetr == 0){
		spawnright = 1;
		
	}
	else {spawnright = 0;} 
	if (spawn >= 600 && resetl == 0){
		spawnleft = 1;
		
	}
	else {spawnleft = 0;}
	if (spawn >= 1000 && resetu == 0){
		spawnup = 1;

	}
	else {spawnup = 0;}
	if (spawn >= 1800 && resetd == 0){
		spawndown = 1;
	}
	else {spawndown = 0;}
	if (spawn == 3200){
			spawn = 0;
			speed = speed+1;
			enemies = enemies+1;
			resetr = 0;
			resetl = 0;
			resetu = 0;
			resetd = 0;
		}
	
	if (spawnright == 1){
		if (enemy_right_x <= 290){
			Enemyspawnright(enemy_right_x, enemyrightposy[enemies]);
			enemy_right_x = enemy_right_x+1+speed;
	}
		else {
			enemy_right_x = 5;
			resetr = 1;
			GLCD_Clear(Black);
		}
}
	
	if (spawnleft == 1){
		if(enemy_left_x >= 5){
		Enemyspawnleft(enemy_left_x, enemyleftposy[enemies]);
			enemy_left_x = enemy_left_x - 1-speed;
	}
		else {
		enemy_left_x = 5;
		resetl = 1;
		GLCD_Clear(Black);
		}
}
	
	if (spawnup == 1){
		if(enemy_up_y >= 5){
		Enemyspawnup(enemyupposx[enemies], enemy_up_y);
			enemy_up_y = enemy_up_y -1-speed;
	}
		else {
			enemy_up_y = 190;
			resetu = 1;
			GLCD_Clear(Black);
		}
}
	if (spawndown == 1){
		if(enemy_down_y <= 190){
		Enemyspawndown(enemydownposx[enemies], enemy_down_y);
			enemy_down_y = enemy_down_y +1+speed;
	}
		else {
		enemy_down_y = 5;
		resetd = 1;
		GLCD_Clear(Black);
		}
}
	
//Collision on enemy and player
	//Collision with right enemy
	if(player_x == enemy_right_x+30 && player_y >= enemyrightposy[enemies] && player_y <= enemyrightposy[enemies]+26){
		game_over = 1;
	}
	//Collision with enemy left
	if ( player_x+25 == enemy_left_x && player_y >= enemyleftposy[enemies] && player_y <= enemyleftposy[enemies]+26){
		game_over = 1;
	}
	//Collision with enemy up
	if (player_y+21 == enemy_up_y && player_x <= enemyupposx[enemies]+26 && player_x >= enemyupposx[enemies]){
		game_over = 1;
	}
	//Collision with enemy down
	if (player_y == enemy_down_y && player_x <= enemydownposx[enemies]+26 && player_x >= enemydownposx[enemies]){
		game_over = 1;
	}
	
	
	if (enemies == 11){
		GLCD_Clear(Green); 
		GLCD_SetBackColor(Green);
		GLCD_SetTextColor(Black);
		GLCD_DisplayString(4, 5, __FI,(unsigned char*)"GOOD JOB!");
		GLCD_DisplayString(6, 4, __FI,(unsigned char*)"YOU WIN");
		delay3(250);
		Media_Center();
	}	
	
  if (game_over == 1){
		GLCD_Clear(Red); 
		GLCD_SetBackColor(Red);
		GLCD_SetTextColor(Black);
		GLCD_DisplayString(4, 5, __FI,(unsigned char*)"YOU LOST...");
		GLCD_DisplayString(6, 5, __FI,(unsigned char*)"GAME OVER!");
		LED_Off(0);LED_Off(1);LED_Off(2);LED_Off(3);LED_Off(4);LED_Off(5);LED_Off(6);	LED_Off(7);			
		delay3(250);
		Media_Center();
	}
	
}
	Media_Center();
}

