void IntToStr(int FromInt, char *ToStr){
   int index = 5;
   unsigned int num = FromInt;

   for(index = 5; index > -1 ; index--){
     ToStr[index] = (char)(num % 10)+'0';
     num /= 10;
   }

}