#import <objc/objc.h>
#import <objc/Object.h>


int sumOfEven = 0;


@interface TestObj : Object


- (void)fib1: (int)fib1 fib2:(int)fib2 ;

@end

@implementation TestObj

- (void)fib1: (int)fib1 fib2:(int)fib2 {
	int fibAns;
	fibAns = fib1 + fib2;
	if (fibAns < 4000000){
		if (fibAns%2 == 0){
			sumOfEven += fibAns;
		}
		
		printf("%d \n", fibAns);
		id obj = [[TestObj alloc] init];
		[obj fib1:fib2 fib2:fibAns];
	}else{
		printf("Sum of Even Nums is: %d", sumOfEven + 2);
	}
}

int main()
{

    	id obj = [[TestObj alloc] init];
    	int fib;
	int prev1 = 1;
	int prev2 = 2;
	printf("%d \n", prev1);
	printf("%d \n", prev2);
    	[obj fib1:prev1 fib2:prev2];
    	return 0;
}
@end