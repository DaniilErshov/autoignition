#include <time.h>
#include <unistd.h>
int main(){
struct timespec spec;
clock_gettime(CLOCK_MONOTONIC, &spec);
clock_getres(CLOCK_MONOTONIC, &spec);
return(0);
}
