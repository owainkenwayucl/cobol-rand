c     Module providing useful functions to Cobol from Fortran
c     Owain Kenway
      subroutine genrand(r)
        implicit none
        real*8 :: r

        r = rand()

      end

