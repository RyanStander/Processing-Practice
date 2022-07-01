int a = 3;

     int b = 2;

     int c = a/b;//c is not set as a float so the decimal value is not shown

     float d = a/b;//the left side is not set as a float so decimal is not shown

     float e = (float)(a/b);//the devision is put in brackets so its non decimal value is shown because it is only converted afterwards

     float f = (float)(a)/b;//the value a is set as a float and then devided so it shows the decimal value

     float g = 1.0f*a/b;//the first value is set as a float so the decimal will be shown

     float h = a/b*1.0f;//the last value is set as a float so the first value is an integer and will not show the decimal value

     println( "values: " + a + "," + b + "," +
              c + "," + d + "," + e + "," +
              f + "," + g + "," + h );
