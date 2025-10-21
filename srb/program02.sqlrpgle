
**free
ctl-opt main(Main) option(*srcstmt);

  dcl-proc Main ;
    dcl-pi *n ;
      FirstName varchar(20) const ;
      LastName varchar(20) const ;
      ColumnName varchar(50) const ;
      FileName varchar(21) const ;
      Result varchar(100) ;
    end-pi ;

    dcl-s Statement varchar(200) ;

    exec sql SET OPTION DATFMT = *ISO, TIMFMT = *ISO ;

    exec sql CREATE OR REPLACE VARIABLE MYLIB.MY_VARIABLE VARCHAR(100) ;

    Statement = 'SET MY_VARIABLE = (SELECT ' + ColumnName + ' +
                   FROM ' + FileName +
                  ' WHERE FNAME = ''' + FirstName + ''' +
                    AND LNAME = ''' + LastName + ''')' ;

    exec sql EXECUTE IMMEDIATE :Statement ;

    exec sql SET :Result = MYLIB.MY_VARIABLE ;

  on-exit ;
   exec sql DROP VARIABLE MYLIB.MY_VARIABLE ;
  end-proc ;
