
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
-- $Id: tc1976.vhd,v 1.2 2001-10-26 16:29:44 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c07s02b01x00p03n01i01976ent IS
END c07s02b01x00p03n01i01976ent;

ARCHITECTURE c07s02b01x00p03n01i01976arch OF c07s02b01x00p03n01i01976ent IS
  signal s : integer := 0;
  function temp(s:integer) return boolean is
  begin
    assert FALSE
      report "***FAILED TEST: c07s02b01x00p03n01i01976 - The right operand is evaluated only if the value of the left operand is not sufficient to determine the result of the operation."
      severity ERROR;
    return true;
  end;
BEGIN
  TESTING: PROCESS
    variable x : boolean := false;
  BEGIN
    if x and (temp(s)) then
      NULL;
    end if;
    wait for 1 ns;
    assert FALSE
      report "***PASSED TEST: c07s02b01x00p03n01i01976 - This test needs manual check, only when the _FAILED_ _TEST_ assertion do not appear then the test is passed."
      severity NOTE;
    wait;
  END PROCESS TESTING;

END c07s02b01x00p03n01i01976arch;
