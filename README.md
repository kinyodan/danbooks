# README
<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->


<!-- PROJECT LOGO -->
<br />
<div align="center">
<h3 align="center">Danbooks App</h3>
</div>

<!-- ABOUT THE PROJECT -->
## About The Project
Ruby on rails Application utilizing the new york times developers API

<!-- GETTING STARTED -->
## Getting Started

This is are instructions on setting up your project locally.
To get a local copy up and running follow these simple steps.

Kindly read the "Task Documentation.pdf" file present at the  root folder of this repository,
to get a good view of everything.

### Prerequisites

* Ruby . Version used "ruby 3.0.4p208 (2022-04-12 revision 3fa771dded) [x86_64-linux]"
   
* Ruby on rails . Version used "Rails 7.0.4" 


### Installation
1. Clone master git repo
   ```sh
   git clone https://github.com/kinyodan/danbooks.git
   ```
2. cd into directory and run 
   ```sh
   bundle install
   ```
  (if all is well it should be done and installed )
  
3. Run Migrations 
   ```sh
   rake db:migrate 
   ```
4. Run below command to create the config/application.yml file where ENV variables will be added in this case the API keys 
   ```sh
   bundle exec figaro install 
   ```
5. Copy the contents of the file config/loaded_application.yml(found inside the config folder) into the generated application.yml file also inside the config folder   
   
6. Start rails server  
   ```sh
   rails s  
   ```
### Installation Using docker
1.  cd into the root of the cloned repository if not already there and run below command to create the config/application.yml file where ENV variables will be added in this case the API keys 
   ```sh
   bundle exec figaro install 
   ```
2. Copy the contents of the file config/loaded_application.yml(found inside the config folder) into the generated application.yml file also inside the config folder   

3. run below command
   ```sh
   docker-compose run web rake db:create
   ```
   
4. cd into the root of the cloned repository if not already there, follow steps 1 through 5 above and run below command
   ```sh
   docker compose up
   ```   
   
this should runs docker composer and start the rails server and application will be available at localhost:3000 when process is complete

### Running test 

### Prerequisites

To run test you need to have the following installed
* Rspec
  
1. You have run bundle install to install gems 
   ```sh
   bundle install 
   ```
2. Run Migrations 
   ```sh
   rake db:migrate 
   ```
3. to run test run below commands separately on the command line so as to run the full set of tests for full test coverage
   ```sh
   rspec 
   ```
   ```sh
   rails test 
   ```

(if all is well it should be done and running )

<p align="right">(<a href="#readme-top">back to top</a>)</p>




