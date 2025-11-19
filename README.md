[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=dnafinder/isleap)

🔢 isleap.m — MATLAB Leap Year Checker

isleap.m is a simple and reliable MATLAB function that checks whether a given year (or vector of years) is a leap year in the Gregorian calendar. The function supports scalar and vector input, performs strict input validation, and defaults to the current year if no argument is provided.

✨ Features

🔍 Tests any year ≥ 1583 (Gregorian calendar)

📅 Supports scalar or vector input

⚙️ Uses the official leap-year definition (4 / 100 / 400 rules)

🔧 Uses MATLAB’s inputParser for robust parameter checking

📘 Includes full help section and English inline comments

📦 Repository

GitHub: https://github.com/dnafinder/isleap

🛠 Requirements

Compatible with all modern MATLAB versions.

🚀 Usage

Call without arguments to test the current year:
isleap

Test specific years:
isleap(2008)
isleap([2007 2008]) → returns 0 1

🧠 Function summary

isleap(year)

Input:
• year — integer ≥ 1583, scalar or vector (default: current year)

Output:
• logical vector indicating leap years

📚 Citation

If you use this function in research, teaching material, or publications, please cite:

Cardillo G. (2007). isleap.m – A simple MATLAB routine to test whether a year is a leap year in the Gregorian calendar.
GitHub: https://github.com/dnafinder/isleap

🔑 License

See the LICENSE file in the repository for details.

👤 Author

Giuseppe Cardillo
Email: giuseppe.cardillo.75@gmail.com
