#import <objc/objc.h>
#import <objc/Object.h>

@interface TestObj : Object
{
    int num;
}
- (void)foo;
@end

@implementation TestObj

- (void)foo {
	int finalNum = 0;
	int i;
     for(i = 0; i < 1000; i++){
     	if(i%3==0){
     		finalNum += i;
     		printf("%d \n", i);
     	}else if(i%5==0){
     		finalNum += i;
     		printf("%d \n", i);
     	}
     }
     printf("%d \n", finalNum);
}

int main()
{
    id obj = [[TestObj alloc] init];
    [obj foo];
    return 0;
}
@end