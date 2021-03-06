
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc1509.vhd,v 1.2 2001-10-26 16:29:41 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c08s09b00x00p02n01i01509ent IS
END c08s09b00x00p02n01i01509ent;

ARCHITECTURE c08s09b00x00p02n01i01509arch OF c08s09b00x00p02n01i01509ent IS

BEGIN
  TESTING: PROCESS
    variable counter : integer := 0;
  BEGIN
    L1 :
    while counter < 10 loop
      counter := counter + 1;
    end loop L1;

    assert NOT( counter = 10 ) 
      report "***PASSED TEST: c08s09b00x00p02n01i01509"
      severity NOTE;
    assert ( counter = 10 ) 
      report "***FAILED TEST: c08s09b00x00p02n01i01509 - In loop statement, the reserved word loop must be followed by a sequence of statements, and the reserved words end loop"
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c08s09b00x00p02n01i01509arch;
