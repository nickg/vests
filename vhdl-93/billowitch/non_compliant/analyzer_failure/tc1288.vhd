
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
-- $Id: tc1288.vhd,v 1.2 2001-10-26 16:30:08 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c08s04b00x00p04n01i01288ent IS
  port (X : in BIT_VECTOR; Z : linkage BIT_VECTOR; COUT : out BIT);
  alias ALIAN_2 : BIT_VECTOR (1 to 10) is Z (1 to 10);
END c08s04b00x00p04n01i01288ent;

ARCHITECTURE c08s04b00x00p04n01i01288arch OF c08s04b00x00p04n01i01288ent IS
  signal S1 : BIT;
BEGIN
  TESTING: PROCESS
  BEGIN
    ALIAN_2(10) <= S1;
    wait for 1 ns;
    assert FALSE
      report "***FAILED TEST: c08s04b00x00p04n01i01288 - An alias for a port whose mode is ""LINKAGE"" can not be on the left-hand side of a signal assignment."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c08s04b00x00p04n01i01288arch;
