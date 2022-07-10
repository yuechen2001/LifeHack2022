# Drive Woke!

## Inspiration
Our solution is targeted at drivers that drive under adverse conditions, specifically drowsy driving. They consist of people that have to endure long hours of driving while on the road (e.g. taxi drivers), as well as those who are forced to drive home after a physically or mentally draining day (e.g. office workers). With Singapore being one of the most sleep-deprived nations in the world, we wanted to address the issue of drowsy driving, which can potentially jeopardise the safety of the driver, their car and those around them. In our opinion, personal safety and property safety often come hand in hand, which further emphasises on the importance of an application that can guarantee both without compromising either. 

Based on our research, there is a positive correlation between average daily workload and number of crashes amongst drivers in Singapore (Kang et al, 2022). In addition, given the gradual reopening of borders, more people are favouring long drives from Singapore to various parts of Malaysia and vice versa, fuelling our motivation to develop a solution to tackle drowsy driving for our users.

## What it does
Our application’s main feature comprises both a text-to-speech function and a speech-to-text function. At the start of each trip, the app will articulate random word prompts at fixed frequency, which can be determined by the user prior to the trip. The application detects whether a driver has responded correctly to a randomly-generated word prompt. If a driver cannot respond within 3-5 seconds, the application will set off an alarm to alert the driver. To turn off the alarm, the driver simply has to respond with a safeword, which can be configured on our settings page prior to each trip. 

The application will also record the trip history of each user in our database, including each trip’s duration as well as number of times he has triggered the alarm during the trip. On the home page, user statistics are also displayed for ease of access. This is intended to assist each user in understanding their own patterns and behaviour when driving, so that they can make more informed decisions when on the road. Such decisions can include choosing to set a higher frequency of prompts, or even to avoid driving during their likely drowsy periods. 

## How we built it
Using Flutter to build the application, we first started off with creating the screen for speech recognition. From there, we gradually created the other screens for login, as well as for settings and trip history. 

## What makes our solution stand out
We also recognise that there may already be similar applications that address drowsy driving. However, our application strives to be the better alternative. For instance, applications such as ‘Awake Drowsiness Detector for Driving’ require constant physical contact with the phone, which could pose a distraction when driving. Our speech recognition feature helps to minimise distraction when on the road, providing better convenience in keeping the driver awake in the process.

## Some key challenges we faced 
From this experience, some of our difficulties include getting used to the basics of Flutter, as most of us in the team have not developed a mobile application before. We had to spend hours of research (besides the workshops) to figure out how to build the features we needed for the app. 

## What we learned
Besides this, our key learning point from this event is the need to craft out a prototype before coding the application. It is important that we understand what we want to see in the app before developing it, which was what we did through low-fidelity (and hand-drawn) prototyping.

We hope that our solution helps to encourage a safer driving environment for all. This is particularly important for drivers, so that they can play a part in avoiding unnecessary crashes due to lack of sleep, which is a highly underrated factor for such accidents.

