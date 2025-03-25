## A/B Test Name: 
"welcome back" message

## User Story Number: 
US2: Account login

## Metrics: 
retention rate

## Hypothesis: 
A personalized 'welcome back' message with the users name will improve login retention rates due to the fact that users have a more positive and tailored in-app expirience.

## Experiment: 
Upon login authentication, users will be shown one of the following variations. We will use the number of logins per user per week to collect metrics. the groups will be a randoized 50/50 split of users.

## Variations:
Variation 1: our current app expirience with no welcome message
Variation 2: Personalized message upon login, 'Welcome back, [name]'

## A/B Test Name:
Profile Screen Background Color Experiment 

## User Story Number:
The "Profile Screen Background Color Experiment" A/B test would be a task under US1 (Account Creation).

## Metrics:
This experiment will measure key HEART metrics to assess the impact of background color changes on user engagement and completion rates. The primary metrics include:

* Engagement: Measuring time spent on the profile creation screen to determine whether users interact more with different background colors.

* Retention: Tracking the percentage of users who complete the profile setup successfully.

* Task Success: Evaluate the drop-off rate on the profile creation screen.


## Hypothesis:
The problem we are trying to solve is low-profile completion rates during the account creation process. Our data indicates that a significant percentage of users drop off before completing their profiles, which could be due to visual design factors affecting engagement and usability. Since profile creation is a crucial step in onboarding, improving completion rates can lead to better user retention and a smoother overall experience.

The impact of this issue is substantial because an incomplete profile may lead to lower engagement with the app, reducing the likelihood of users fully utilizing its features. A poor onboarding experience can deter users from returning, negatively affecting long-term retention. By identifying whether background color influences user behavior, we can make informed design decisions to enhance engagement and encourage users to complete their profiles.

To narrow down the problem, we need to determine if visual design elements, specifically background color, play a role in user drop-off rates. If users disengage due to a visually unappealing or distracting interface, optimizing the background color could provide a simple yet effective solution. Through A/B testing, we will evaluate different background colors to identify the most user-friendly option that encourages profile completion.

We hypothesize that the background color of the profile creation screen plays a role in user engagement and completion rates. A visually appealing background may encourage users to complete their profiles, reducing drop-off rates. Conversely, a background that is too bright, dull, or distracting could negatively impact usability and lead to frustration or disengagement. By testing different background colors, we aim to determine which color scheme provides the best user experience, leading to increased profile completion rates.

## Experiment:
This experiment will utilize Firebase A/B Testing and Firebase Remote Config to dynamically assign different background colors to users. The test will be conducted on a subset of new users, ensuring that the changes do not disrupt the entire user base. We will implement event tracking using Firebase Analytics to monitor user behavior and measure the impact of the background color variations on engagement and completion rates.

## Variations:
* Control (A): The current background color (White) is used in the profile creation screen.

* Variation 2 (B): A darker background (Black) for higher contrast and improved readability.

The experiment results will help determine which background color optimally enhances user experience and profile completion rates.
