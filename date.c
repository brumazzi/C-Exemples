#include <stdio.h>
#include <time.h>

int main(void){
   time_t now;
   if ( time(&now) != (time_t)(-1) )
   {
      struct tm *mytime = localtime(&now);
      if ( mytime )
      {
         char year [ 5 ];
         if ( strftime(year, sizeof year, "%Y", mytime) )
         {
            printf("year = \"%s\"\n", year);
         }
	 char time[16];
	 if(strftime(time, sizeof time, "%T", mytime))
		 printf("time: %s\n", time);
      }
   }
   return 0;
}
