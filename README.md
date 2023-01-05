<a name="readme-top"></a>

## Drive Woke - LifeHack 2022 
### https://devpost.com/software/quest-busters

<!-- PROJECT LOGO -->
<br />
<div align="left">
  <p float="left">
    <img  height ="360" width="180" alt="original" src="https://user-images.githubusercontent.com/64315146/210560780-270f297c-8c85-4b06-ad12-267f1e3a8237.png">
    <img height ="360" width="180" alt="Screenshot 2023-01-05 155948" src="https://user-images.githubusercontent.com/64315146/210732119-d54ea529-3cd0-4c6a-b2a1-4989eb667186.png">
    <img height ="360" width="180" alt="Screenshot 2023-01-05 155928" src="https://user-images.githubusercontent.com/64315146/210732126-15d6056a-6e8b-487b-979b-d1d9bd9b0a86.png">
  </p>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li>
          <a href="#built-with">Built With</a>
          <ul>
            <li><a href="#frontend">Frontend</a></li>
	          <li><a href="#backend">Backend</a></li>
      </ul>
        </li>
      </ul>
    </li>
    <li>
      <a href="#what-the-application-does">What the application does</a>
    </li>
    <li><a href="#key-takeaways">Key Takeaways</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

For LifeHack 2022, my team and I have chosen the theme of Safety, which encourages us to come up with a way to ensure the safety of our personal property.

To address this problem statement, we have come up with Drive Woke!, an application that aims to keep drivers awake.


### Built With

#### Frontend 
* Flutter
* Dart 

#### Backend 
* Cloud Firestore 

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## What the application does 
### Demo video: https://youtu.be/su3_Y3yzeh8
Our application’s main feature comprises both a text-to-speech function and a speech-to-text function. From the start of each trip, the app will articulate random word prompts at fixed intervals, which can be adjusted using the slider bar prior to the trip. The application detects whether a driver has responded correctly to the randomly-generated word prompt. If a driver cannot respond within the pre-set time limit, the application will set off an alarm to alert the driver. To turn off the alarm and continue with the word prompts, the driver simply has to respond with a safeword, which can be configured on our settings page before the trip.

The application will also record the trip history of each user in our database, including the trip’s duration as well as number of times he has triggered the alarm during the trip. Users can view this information on the Trip History Page. On the Home Page, each individual’s statistics are also calculated and displayed for ease of access.

<!-- Key Takeaways -->
## Key Takeaways 
| Challenges | Learning Points |
| ------------- |-------------|
| From this experience, one difficulty that we faced is trying to deconflict the many plugins that we had to implement throughout our application. This has taught us about the importance of state management and having a clear structure of our application. | Our key learning point from this event is the need to craft out a prototype before coding the application. It is important that we understand what we want to see in the app before developing it, which was what we did through low-fidelity (and hand-drawn) prototyping.|

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->
## Contact
### I can be reached through - 
- 📫 LinkedIn: https://www.linkedin.com/in/zhu-yuechen-1a603435/ 
- 📧 Email: zhuyuechen@gmail.com

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments
I would like to thank my group members - Kaushik, Jia Yi and Harry, for their support and contributions to the project. Without them, it would not have been possible to produce this application within a period of 48 hours. 

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo_name/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo_name/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo_name/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo_name.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo_name/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo_name/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
