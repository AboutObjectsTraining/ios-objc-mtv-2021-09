// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Basics.h"

static int Count;

static void DoAutomaticStorage(int someValue) {
    int x = 3;
    printf("x is %d\n", x);
    printf("Foo is %d\n", Count);
}

void DoInternalStaticStorage(void) {
    static int count = 1;
    
    count++;
    
    printf("Count is %d\n", count);
}

void DoPointerArithmetic(void) {
    char foo[] = { 'a', 'b', 'c' };
    char name[] = "Fred Smith";
    char *charRef = name;
    
    
    printf("value is %c, address is %p\n", charRef[5], charRef + 5);
    printf("value is %c, address is %p\n", *(charRef + 5), charRef + 5);
    
    printf("value is %c, address is %p\n", *(name + 5), name + 5);
    
    for (char *p = charRef; *p; p++) {
        printf("value is %c, address is %p\n", *p, p);
    }

    for (char *p = charRef; *p; p++) {
        printf("value is %s, address is %p\n", p, p);
    }
    
    printf("%s\n", foo);
}

int main(int argc, const char * argv[]) {
    
    printf("Hello World!\n");
    
    DoAutomaticStorage(42);
    DoInternalStaticStorage();
    DoInternalStaticStorage();
    DoInternalStaticStorage();

//    DoPointerArithmetic();
    
    return 0;
}
