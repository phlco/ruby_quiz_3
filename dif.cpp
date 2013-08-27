#include <iostream>
using namespace std;

int find_difference(int array[100]) {
 	int biggest = 0;
 	int second = 0;
 	int i = 0;
 	for(i; i < 100; i+=1) {
	 	if(array[i] > biggest) {
	 		if(biggest > second) {
	 			second = biggest;
	 		}
	 		biggest = array[i];
	 	} else if(array[i] > second) {
	 		second = array[i];
	 	}
	}
	return biggest - second;
}

int main() {
 	int array[100] = {34,32,2,80,77,29,99,16,10,85,46,95,54,69,57,49,91,22,63,6,66,1,17,47,51,90,25,3,59,87,100,7,36,8,31,83,56,74,4,60,24,93,13,73,39,27,9,38,86,61,98,40,58,84,68,12,44,75,97,48,92,62,5,50,81,14,79,67,35,28,52,96,42,21,37,26,11,94,41,45,88,89,76,18,64,55,78,53,23,82,33,70,19,43,15,72,20,30,65,71}; 
 	for(int i = 0; i < 100000; i+=1) {
 		find_difference(array);
 	}
}