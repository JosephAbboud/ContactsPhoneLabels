# Contacts Phone Labels

_Version: 1.1\
Author: Joseph Abboud\
Last Modified: January 7, 2025_

## Description

This script replaces the default labels (e.g., “home,” “mobile”) in the Contacts app for phone numbers with the name 
of the country/region corresponding to the phone number’s country code. It enhances clarity by associating phone 
numbers with their respective regions.

### Key Features:

- **Automatic Labeling**: Updates phone labels based on country/region derived from international dialing codes.
- **Comprehensive Coverage**: Includes support for countries and regions in North America, South America, Europe,
  Africa, Asia, Oceania, and Central America.
- **Accurate Handling of Conflicts:**
  - United States vs. Other +1 Regions: Checks area codes of non-U.S. regions first before defaulting to the U.S.
  - Russia and Kazakhstan: Distinguishes Kazakhstan numbers (+76, +77) from Russian numbers (+7).
- Built for the macOS Contacts app and written in AppleScript. 

## Installation

### Prerequisites

- macOS with the Contacts app installed.
- Basic familiarity with AppleScript.

### Steps
1. **Download the Script:** Clone this repository or download the script file directly.
```bash
git clone https://github.com/yourusername/contacts-phone-region-labels.git
```
2. **Open Script Editor:**
   - Launch Script Editor on macOS.
   - Open the file `update_contacts_labels.applescript`.
3. **Grant Permissions:**\
   When prompted, allow access to the Contacts app.
4. **Run the Script:**\
   Press the run button or press `Command + R` in Script Editor to execute the script.

## Usage

1. The script loops through each contact in your Contacts app.
2. For every phone number, it:
   - Normalizes the phone number (removes spaces, dashes, and parentheses).
   - Matches the phone number’s international dialing code to its corresponding country/region.
   - Updates the phone label in Contacts with the country/region name.
3. Saves the changes automatically.

## Notes & Limitations

- **Area Code Updates:**\
  The script is accurate to the date mentioned in the "Modified" field, and thus likely will not cover changes to
  area code or country code classifications after this date.
- **United States vs. Other +1 Regions:**\
  Due to the frequency of changes in area codes in the US especially, phone numbers starting with “+1” are checked
  against non-U.S. regions first before defaulting to the U.S.
- **Shared Codes:**
  - **Russia and Kazakhstan:** Since Russia and Kazakhstan both share "+7", the script is implemented such that it
    checks "+76" and "+77" first for Kazakhstan, and then defaults to Russia for all other phone numbers starting
    in "+7".
- **Missing Value Warning:**\
  A `missing value` warning may be displayed when running the code. Contact labels should still be updated despite
  this message.

## Coverage

The script supports phone numbers from all major global regions, including:
- **North America:** United States, Canada, Puerto Rico, etc.
- **South America:** Argentina, Brazil, Chile, etc.
- **Europe:** Germany, France, United Kingdom, etc.
- **Asia:** India, China, Japan, etc.
- **Africa:** South Africa, Nigeria, Kenya, etc.
- **Oceania:** Australia, New Zealand, Fiji, etc.
- **Central America & Caribbean:** Belize, Panama, Jamaica, etc.

For a full list of supported regions and country codes, see the script file.

## Customisation

You can modify the script to tailor it to specific labels based on your preferences.



