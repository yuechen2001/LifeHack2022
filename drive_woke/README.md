# Drive Woke!

## Inspiration
Our solution is targeted at drivers that drive under adverse conditions, specifically drowsy driving. They consist of people that have to endure long hours of driving while on the road (e.g. taxi drivers), as well as those who are forced to drive home after a physically or mentally draining day (e.g. office workers). With Singapore being one of the most sleep-deprived nations in the world, we wanted to address the issue of drowsy driving, which can potentially jeopardise the safety of the driver, their car and those around them. In our opinion, personal safety and property safety often come hand in hand, which further emphasises on the importance of an application that can guarantee both without compromising either. 

Based on our research, there is a positive correlation between average daily workload and number of crashes amongst drivers in Singapore (Kang et al, 2022). In addition, given the gradual reopening of borders, more people are favouring long drives from Singapore to various parts of Malaysia and vice versa, fuelling our motivation to develop a solution to tackle the issue of drowsy driving. 

## What it does
Our application’s main feature comprises both a text-to-speech function and a speech-to-text function. From the start of each trip, the app will articulate random word prompts at fixed intervals, which can be adjusted using the slider bar prior to the trip. The application detects whether a driver has responded correctly to the randomly-generated word prompt. If a driver cannot respond within the pre-set time limit, the application will set off an alarm to alert the driver. To turn off the alarm and continue with the word prompts, the driver simply has to respond with a safeword, which can be configured on our settings page before the trip. 

The application will also record the trip history of each user in our database, including the trip’s duration as well as number of times he has triggered the alarm during the trip. Users can view this information on the Trip History Page. On the Home Page, each individual’s statistics are also calculated and displayed for ease of access. This is intended to assist our users in understanding their own patterns and behaviour when driving, so that they can make more informed decisions when on the road. Such decisions can include choosing to set a higher frequency of prompts, or even to refrain from driving during their likely drowsy periods. 

## How we built it
We used Flutter for our frontend, and Cloud Firestore for our backend.

## What makes our solution stand out
We also recognise that there may already be similar applications that address drowsy driving. However, our application strives to be the better alternative. Applications such as ‘Awake Drowsiness Detector for Driving’ require constant physical contact with the phone, which could pose a distraction when driving. Our speech recognition feature helps to keep drivers awake while minimising distractions on the road. Furthermore, some applications tend to rely on facial recognition, which has its own limitations as well. Just having a pair of sunglasses on have been shown to reduce the accuracy drastically, which reduces the effectiveness of the application. 

## Some key challenges we faced 
From this experience, some of our difficulties include getting used to the basics of Flutter, as most of us in the team have not developed a mobile application before. We had to spend hours of research (besides the workshops) to figure out how to build the features we needed for the app. One other difficulty that we faced is trying to deconflict the many plugins that we had to implement throughout our application. This has taught us about the importance of state management and having a clear structure of our application. 

## What we learned
Besides this, our key learning point from this event is the need to craft out a prototype before coding the application. It is important that we understand what we want to see in the app before developing it, which was what we did through low-fidelity (and hand-drawn) prototyping.

Throughout this hackathon, we have also learned a lot about the dangers of drowsy driving. We hope that our solution can help to encourage a safer driving environment for all. This is particularly important for drivers, so that they can play a part in avoiding unnecessary crashes and in ensuring the safety of themselves as well as their properties.

## Built with
Flutter, Cloud Firestore, Dart
