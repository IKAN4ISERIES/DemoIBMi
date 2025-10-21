
**free
ctl-opt main(Main) option(*srcstmt);

// test extra new

  dcl-pr SecondProgram extpgm('PROGRAM02') ;
    *n varchar(20) const ;  // First name
    *n varchar(20) const ;  // Last name
    *n varchar(50) const ;  // Column name
    *n varchar(21) const ;  // File name
    *n varchar(100) ;       // Returned value
  end-pr ;

  dcl-proc Main ;
    dcl-s Returned varchar(100) ;

    SecondProgram('THOMAS' : 'MCNULTY' : 'PLACEBIRTH' : 'PERSON' : Returned) ;
    DisplayReturnedValue(Returned) ;

    SecondProgram('REG' : 'ALLEN' : 'CHAR(PLAYED)' : 'MYLIB.PERSON' : 
                    Returned) ;
    DisplayReturnedValue(Returned) ;

    SecondProgram('MARK' : 'JONES' : 'CHAR(DTEBIRTH,USA)' : 'MYLIB2/PERSON' : 
                     Returned) ;
    DisplayReturnedValue(Returned) ;
  end-proc ;


  dcl-proc DisplayReturnedValue ;
    dcl-pi *n ;
      TooLong varchar(100) ;
    end-pi ;

    dcl-s DisplayValue varchar(40) ;

    DisplayValue = TooLong ;
    dsply ('Returned ' + DisplayValue) ;
  end-proc ;