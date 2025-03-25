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


## A/B Test Name:
Gas Station Search Radius Optimization

## User Story Number:
This A/B test falls under US3: Gas Station Search & Filtering

## Metrics:
This experiment will measure key HEART metrics to assess the impact of search radius customization on user engagement and experience. The primary metrics include:

Task Success: Percentage of users who successfully find and select a gas station within their desired radius.

Engagement: Average time spent searching for a gas station before selecting one.

Retention: Number of repeat users who return to search for gas stations again within a week.

## Hypothesis:
Users want to find nearby gas stations efficiently without being overwhelmed by too many distant options or missing closer, cheaper ones.

The problem: Some users may prefer a fixed radius to filter results efficiently, while others may want a dynamic search that adjusts based on traffic conditions or fuel savings potential. Currently, users manually scroll through search results, which can lead to frustration and drop-off rates.

The impact: A better search radius system could reduce search time, improve selection efficiency, and increase user satisfaction, leading to higher engagement and retention.

By testing fixed vs. dynamic search radius settings, we aim to determine which approach enhances usability and helps users make faster, smarter gas station choices.

## Experiment:
This experiment will be implemented using Firebase A/B Testing and Firebase Remote Config to assign users different search radius settings dynamically. The test will be conducted on a subset of 30% of active users, ensuring no major disruptions for the general user base.

Users will be randomly split into two groups (50/50 split)

Event tracking via Firebase Analytics will monitor:

Search-to-selection time (how fast users pick a station)

Drop-off rate (if users abandon the search without selecting a station)

Repeat searches per session (if users struggle to find a suitable option)

## Variations:
Control (A): Fixed Radius Selection
Users manually set a fixed radius (e.g., 5, 10, or 20 miles) before searching.

Gas stations outside this range are not shown in the search results.

Variation 2 (B): Dynamic Radius Expansion
The app automatically adjusts the search radius based on:

User’s location density (smaller radius in cities, larger in rural areas).

Traffic conditions (expanding radius if closer gas stations are congested).

Savings potential (showing farther stations if the price difference is significant).

Users receive a “Smart Radius Suggestion” to help them decide.

A/B Test Name:
Gas Station Panel Background Color Experiment

User Story Number:
The "Gas Station Panel Background Color Experiment" A/B test will be a task under US2 (Gas Station Results Enhancement).

Metrics:
This experiment will leverage key HEART metrics to evaluate how different panel background colors affect user interaction and decision-making when viewing gas station results. The primary metrics include:

Engagement: Measuring the time users spend reviewing and interacting with the gas station panels. This will help determine whether certain colors capture attention better.

Retention: Tracking the percentage of users who proceed to engage with a gas station (e.g., clicking for more details or navigation) after viewing the results.

Task Success: Evaluating the ease and efficiency with which users identify and select a gas station, including any reduction in drop-off or search abandonment rates.

Hypothesis:
The current design of the gas station results panels may not be optimal, potentially causing users to overlook important information or feel visually fatigued. Our data suggests that users may be experiencing slower decision-making or even disengagement due to the present panel background color.

We hypothesize that:

A more visually appealing background color can enhance user engagement by making the panels easier to read and interact with.

Optimized background colors may reduce cognitive load, leading to quicker, more confident decision-making when choosing a gas station.

Conversely, a background that is too bright, dull, or contrasting poorly with other design elements could negatively impact usability, causing frustration and increased drop-off rates.

By testing different color variations, we aim to determine which background option improves overall user experience, leading to higher engagement and better task success rates.

Experiment:
This experiment will use Firebase A/B Testing in conjunction with Firebase Remote Config to dynamically assign different background colors to the gas station results panels. A subset of users accessing the gas station search feature will experience one of the test variations without impacting the entire user base. We will implement event tracking using Firebase Analytics to monitor:

How long users spend interacting with the panels,

Click-through rates on specific gas station results,

The overall success in navigating from search results to the selected gas station.

Variations:
Control (A): The current panel background color remains unchanged.

Variation 2 (B): A new background color is applied—this could be a softer, more neutral tone intended to reduce visual strain.

Variation 3 (C): A more contrasting or vibrant background color is tested to determine if increased visual differentiation improves user focus and panel readability.

The outcome of this experiment will inform design decisions aimed at enhancing the presentation of gas station results, ultimately improving user engagement, retention, and the overall ease of completing their gas station search.
