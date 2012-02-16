#import <objc/objc.h>
#import <objc/Object.h>

@interface TestObj : Object

- (void)primeFinder: (int)num;
@end

@implementation TestObj

- (void)primeFinder:(int)num {
     int primeNum = 1;
     //int primes[];
     //int primeIndexer = 0;
     for(primeNum = 1; primeNum<= num; primeNum++){
     	if(num%primeNum == 0){
     		int primeBool = 1;
     		int primeTester = 0;
     		//test to see if factor is prime.
     		for(primeTester = 1; primeTester <= primeNum; primeTester++){
     			if(primeNum%primeTester == 0){
     				if(primeTester != primeNum){
     					primeTester = 0; // Not a prime
     				}else{
     					primeTester = 1; //Prime
     				}
     			}
     		}
     		
     		//add to array if primeTester is 1
     		if(primeTester == 1){
     			printf("prime %d \n", primeNum);
     		}
     	}
     }
}

int main()
{
    id obj = [[TestObj alloc] init];
    int number = 2;
    [obj primeFinder:number];
    return 0;
}
@end