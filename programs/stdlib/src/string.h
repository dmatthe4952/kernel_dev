#ifndef PEACHOS_STRING_H
#define PEACHOS_STRING_H
#include <stdbool.h>

int strlen(const char* str);
int strnlen(const char* ptr, int limit);
int strnlen_terminator(const char* str, int max, char terminator);
bool isdigit(char c);
int tonumericdigit(char c);
char* strcpy(char* dest, const char* src);
char* strncpy(char* dest, const char* src, int n);
int istrncmp(const char* s1, const char* s2, int n);
int strncmp(const char* s1, const char* s2, int n);
char tolower(char s1);
char* strtok(char* str, const char* delimeters);

#endif
