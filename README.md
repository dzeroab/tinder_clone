# Tinder

A Tinder Clone Flutter project.

## Requirements

- [X] I can see one person at a time to Like or Pass
- [X] I can check the list of people I have liked or passed so far
- [X] I can see a person's age in addition to their name and photo (note: age is not in the user list API call)
- [X] UI/UX: it should feel fast to swipe between people
    - [X] I can see the next person fast thanks to the user list API (without being blocked by liking/passing a person)
    - [X] I can see the current person's age thanks to the additional user detail. It's OK that the age takes time to
e      display after name and photo.

## Architecture

- The app uses the clean architecture: UI layer, domain layer and data layer. 
  - Domain: contains all user cases which uses by the bloc
  - Data layer: contains the network and database 
- Data flow: The source of truth of the app is the local database. Firstly, we load the data from network, and save to 
  local database.UI layer will listen/fetch the data from the database and display to UI
