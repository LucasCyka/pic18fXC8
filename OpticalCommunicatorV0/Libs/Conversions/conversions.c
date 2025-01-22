void IntToStr(int FromInt, char *ToStr){
   int index = 3;
   int num = FromInt;

   for(index = 3; index > -1 ; index--){
     ToStr[index] = (char)(num % 10)+'0';
     num /= 10;
   }

}