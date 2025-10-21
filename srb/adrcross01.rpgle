      * test added line
      * test added a line in meeting now
      * add extra code
     FADRREFZ   IP   E           K DISK
     FJRKLANT   IF   E           K DISK
     FJRKOMM    IF   E           K DISK
     FADRCROSS  O  A E             DISK
     C
     C     ADZIT         IFNE      0
     C                   GOTO      EINDE
     C                   ENDIF
     C     ADDAT         IFGT      0
     C     ADDAT         IFLT      30601
     C     ADCODE        CHAIN     JRKLANT                            50
     C   50              GOTO      EINDE
     C     ADCODE        SETLL     JRKOMM                             5252
     C     ADCODE        READE     JRKOMM                                 52
     C     *IN52         DOWEQ     *OFF
     C     KMUSR         IFEQ      'CRO'
     C                   GOTO      OK
     C                   ENDIF
     C     ADCODE        READE     JRKOMM                                 52
     C                   ENDDO
     C                   MOVEL     *BLANKS       KMOPM
     C     OK            TAG
     C                   WRITE     CROSSR
     C                   ENDIF
     C                   ENDIF
     C     EINDE         TAG