function x = isleap(varargin)
%ISLEAP True for leap year (Gregorian calendar only)
%   X = ISLEAP(YEAR) returns 1 (true) if YEAR is a leap year and 0 (false)
%   otherwise. YEAR can be a scalar or a vector. Only years >= 1583 are
%   valid because the Gregorian calendar started in that period.
%
%   If no input is provided, the function tests the current year.
%
%   EXAMPLES
%       isleap           % tests the current year
%       isleap([2007 2008])
%
%   INPUT
%       YEAR - Scalar or vector of integer years >= 1583.
%              Default: current year.
%
%   OUTPUT
%       Logical vector of the same size as YEAR.
%
%   ------------------------------------------------------------------
%   Author and citation:
%   ------------------------------------------------------------------
%   Created by:  Giuseppe Cardillo
%   E-mail:      giuseppe.cardillo-edta@poste.it
%
%   To cite this file:
%   Cardillo G. (2007). isleap.m – A simple MATLAB routine to test
%   whether a year is a leap year in the Gregorian calendar.
%
%   GitHub repository:
%   https://github.com/dnafinder/isleap
%   ------------------------------------------------------------------

% ----------------------- Input parsing ------------------------------
% Use inputParser to validate YEAR. Default: current year.
p = inputParser;
addOptional(p,'Y',year(datetime('now')), ...
    @(x) validateattributes(x,{'numeric'}, ...
    {'row','real','finite','integer','nonnan','positive','>=',1583}));
parse(p,varargin{:});

Y = p.Results.Y;

% ----------------------- Leap year rule -----------------------------
% Gregorian calendar:
%   - Every year divisible by 4 is a leap year
%   - Except years divisible by 100, which are NOT leap years
%   - Except years divisible by 400, which ARE leap years
% Examples:
%   Leap:    1600, 2000, 2400
%   Not leap: 1700, 1800, 1900, 2100, 2200
x = (~mod(Y,4) & (mod(Y,100) | ~mod(Y,400)));

end
