# Sprint_3
_A Counter w/ UIButton, UILabel and UITextViev elements._

## Project Overview
This is a simple counter app written in Swift. The app features three buttons at the bottom: [+] to increase the counter value, [-] to decrease the counter value (with a constraint to prevent it from going below 0), and [Reset] to reset the counter. The current count value is displayed at the top as a text label. Additionally, there is a scrollable and uneditable TextView element between the label and the buttons, serving as a log that updates after each button press.

## Features
- Increase counter value by pressing [+]
- Decrease counter value (to a minimum of 0) by pressing [-]
- Reset counter value to 0 by pressing [Reset]
- Log updates in the TextView:
  - Each log entry starts with the date and time in the format [dd-MM-yyyy / HH:mm:ss]
  - Writes that the value was increased by 1 after pressing [+]
  - Writes that the value was decreased by 1 after pressing [-]
  - Writes that the value was reset after pressing [Reset]
  - Notifies the user of an attempt to decrease the value below 0

## Implementation Details
- The user interface consists of a TextView for logging, a UILabel for displaying the counter value, and three UIButtons for interaction
- The TextView is scrollable and uneditable for the user's convenience
- Autoscroll functionality is implemented in the TextView to ensure that new log entries are always visible
- The counter value is constrained to remain non-negative, preventing it from going below 0

## Screenshots
| <img src="https://github.com/CptWhisker/Sprint_3/blob/main/Screenshots/Counter_InitialScreen.jpeg" width="200" height="400" /> | <img src="https://github.com/CptWhisker/Sprint_3/blob/main/Screenshots/Counter_Screen.jpeg" width="200" height="400" /> |
