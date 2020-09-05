#include <stdlib.h>
#include <stdio.h>
int place_hldr;
struct stateMachine{
	char name;
	struct stateMachine *next_state_machine_0;
	struct stateMachine *next_state_machine_1;
};

int next_state(char curr_st_name){
	switch(curr_st_name){
		case 'A':
			plc_hldr = 0;
			break;
		case 'a':
			plc_hldr = 0;
			break;
		case 'B':
			plc_hldr = 1;
			break;
		case 'b':
			plc_hldr = 1;
			break;
		case'C':
			plc_hldr = 2;
			break;
		case'c':
			plc_hldr = 2;
			break;
		case'D':
			plc_hldr = 3;
			break;
		case'd':
			plc_hldr = 3;
			break;
		case'E':
			plc_hldr = 4;
			break;
		case'e':
			plc_hldr = 4;
			break;
		case'F':
			plc_hldr = 5;
			break;
		case'f':
			plc_hldr = 5;
			break;
		case'G':
			plc_hldr = 6;
			break;
		case'g':
			plc_hldr = 6;
			break;
		case'H':
			plc_hldr = 7;
			break;
		case'h':
			plc_hldr = 7;
			break;
	return plc_hldr;
}

int main(int argc, char * argv[])
{
	struct stateMachine fsm_array[7];

	fsm_array[0].name = 'A';
	fsm_array[0].next_state_machine_0 = &fsm_array[5];
	fsm_array[0].next_state_machine_1 = &fsm_array[2];

	fsm_array[1].name = 'B';
	fsm_array[1].next_state_machine_0 = &fsm_array[2];
	fsm_array[1].next_state_machine_1 = &fsm_array[7];

	fsm_array[2].name = 'C';
	fsm_array[2].next_state_machine_0 = &fsm_array[1];
	fsm_array[2].next_state_machine_1 = &fsm_array[3];

	fsm_array[3].name = 'D';
	fsm_array[3].next_state_machine_0 = &fsm_array[3];
	fsm_array[3].next_state_machine_1 = &fsm_array[4];

	fsm_array[4].name = 'E';
	fsm_array[4].next_state_machine_0 = &fsm_array[5];
	fsm_array[4].next_state_machine_1 = &fsm_array[0];

	fsm_array[5].name = 'F';
	fsm_array[5].next_state_machine_0 = &fsm_array[7];
	fsm_array[5].next_state_machine_1 = &fsm_array[6];

	fsm_array[6].name = 'G';
	fsm_array[6].next_state_machine_0 = &fsm_array[0];
	fsm_array[6].next_state_machine_1 = &fsm_array[1];

	fsm_array[7].name = 'H';
	fsm_array[7].next_state_machine_0 = &fsm_array[3];
	fsm_array[7].next_state_machine_1 = &fsm_array[6];

	printf("Initial State: C\n");
	int tot_state_hldr[50];
	tot_state_hldr[0] = 2;
	char tot_name_hldr[50];
	tot_name_hldr[0] = 'C';
	int counter = 1;
	int i, j, hlding;
	int garb[7] = { 1, 1, 1, 1, 1, 1, 1 };
	char letters[7] = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H' };
	while(gets(input)){
	switch (input[0]){
		case 'q':
			exit(0);
			break;
		case '1':
			tot_name_hldr[counter] = fsm_array[tot_state_hldr[counter-1]].next_state_machine_1->name;
			tot_state_hldr[counter] = next_state(tot_name_hldr[counter]);
			counter++;
			break;
		case'0':
			tot_name_hldr[counter] = fsm_array[tot_state_hldr[counter-1]].next_state_machine_0->name;
			tot_state_hldr[counter] = next_state(tot_name_hldr[counter]);
			counter++;
			break;
		case'p':
			printf("States so far: \n");
			for(i = 0; i <= counter; i++){
			printf("%c %c %c\n", fsm_array[tot_state_hldr[i]].name, fsm_array[tot_state_hldr[i]].next_state_machine_0->name, fsm_array[tot_state_hldr[i]].next_state_machine_1->name);
			break; 
			}
		case'c':
			hlding = next_state(input[4]);
			switch(input[2]){
			case '0':
				fsm_array[tot_state_hldr[counter]].next_state_machine_0 = &fsm_array[hlding];
				break;
			case '1':
				fsm_array[tot_state_hldr[counter]].next_state_machine_1 = &fsm_array[hlding];
				break;
			default:
				printf("Not a valid input\n");
				break;
		}
		case 'g':
			for (i = 0; i <= 7; i++){
				for (j = 0; j <= 7; j++) {
					if (fsm_array[j].next_state_machine_0->name == fsm_array[j].name || fsm_array[j].next_state_machine_1->name == fsm_array[j].name) {
						if (fsm_array[j].next_state_machine_0->name != letters[i] && fsm_array[j].next_state_machine_1->name != letters[i]) {
							garb[i] = 0;
						}
					}
					else if (fsm_array[j].next_state_machine_0->name != letters[i] && fsm_array[j].next_state_machine_1->name != letters[i]) {
						garb[i] = 0;
					}
				}
	}
			break;
		case 'd':
			for (i = 0; i <= 7; i++) {
				if (garb[i] == 0) {
					fsm_array[i].name = null;
					fsm_array[i].next_state_machine_0 = nullptr;
					fsm_array[i].next_state_machine_1 = nullptr;
				}
			}
			break;
		default:
			printf("Invalid Input\n");
}
