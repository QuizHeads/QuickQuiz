# QuickQuiz 

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
QuickQuiz is an application that helps students quickly find answers for their question from paragraphs.  

### Sprint-1 User Stories
The following functionality is completed:

* [X] set up Parse Server
* [X] User can sign up
* [X] User can login to the application
* [X] After login/signup user can view Welcome message

### Sprint-2 User Stories
The following functionality is completed:
* [X] Implement homepage for user to post thier Q&A and view all public Q&A
* [X] Implement speech recognizer which allows users can input question by their voice.
* [X] Implement BERT model to evaluate possible answer based on question and document. 

### Video Walkthrough
<img src=images/quickquiz1.gif width=250><br>

### App Evaluation
- **Category:** Education
- **Mobile:** This app will be primarily developed for usage in IOS platform
- **Story:** User can search for their answers from text and publish them to public.
- **Market:** Users who intend to learn a new topic and those who are preparing for an exam
- **Habit:** Whenever the user requires some aiding tool to learn
- **Scope:** students who passion in learning. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can register an QuickQuiz account.
* User can login an QuickQuiz account.
* User can add text to Source and add their questions.
* User can generate the most possible answer based on the given Source, and save it to their account.
* User can public their questions and answers.  

**Optional Nice-to-have Stories**
* User can category their Q&A.

### 2. Screen Archetypes

* Login
   * Return user login in to their respective account
* Register
   * New user can register their account by providing their information
* Homepage
    * Allows user to view all public Q&A
* Quiz Master
    * Allows user to generate their answer based on their given question and sources.
* User Account
    * User can view their account info and their saved Q&A

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Homepage
* Quiz Master
* Account

**Flow Navigation** (Screen to Screen)

* Signin screen
    * On clicking Signup, goes to Signup screen
    * On clicking Login, goes to user's homescreen
* Signup Screen
   * On clicking Signup, goes to user's homescreen
* (Optional)Homepage
    * on clicking Q&A, user can view other user account.

## Wireframes

### [BONUS] Digital Wireframes & Mockups
<img src="https://i.imgur.com/4bKOnUl.gif" width=600>

### [BONUS] Interactive Prototype

## Schema 
### Models
**Q/A**
| Property | Type | Description              |
| -------- | ---- | ------------------------ |
| Question | Text | Question to be displayed |
| Option_1 | Text | Answer option 1          |
| Option_2 | Text | Answer option 2          |
| Option_3 | Text | Answer option 3          |
| Option_4 | Text | Answer option 4          |
| Correct_ans | Text  | Correct answer for the question|

### Networking
List of network requests by screen
- SignUp Screen
    - (Create) Add a new user
    ```
     ParseUser user = new ParseUser();
     user.setUsername("username");
     user.setPassword("password");
     user.setEmail("useremail@example.com");
     user.signUpInBackground(new SignUpCallback() {
     public void done(ParseException e) {
     if (e == null) {
    // sign up successful 
    } else {
    // Sign up didn't succeed. Look at the ParseException
    }
    }
    });
    ```
- Login Screen
    - (Read/Get) Authenticate user credentials
        
         ```
         ParseUser.logInInBackground("user1","user1password", new LogInCallback() {
         public void done(ParseUser user, ParseException e) {
         if (user != null) {
         // user is logged in.
         } else {
         // Login failed. Look at the ParseException to see what happened.
         }
         }
         });
         ```
        
    
    
- HomePage
    - Create a new object with question and options details

        ```
        ParseQuery<ParseObject> query = ParseQuery.getQuery("question");
        query.fromLocalDatastore();
        query.getInBackground("xWMyZ4YEGZ", new GetCallback<ParseObject>() {
        public void done(ParseObject object, ParseException e) {
        if (e == null) {
        // object will be the option selected by user
        } else {
        // something went wrong
        }
        }
        });
        ```

