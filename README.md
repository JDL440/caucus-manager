# caucus-manager

Caucus manager is software to manage presidential caucuses like the democratic precinct and legislative district caucuses held in Washington state in 2016.

### See wiki tab on GitHub page for goals

### Getting Started on Windows

+ Install [Ruby 2.2.4] (http://rubyinstaller.org/downloads/)

Install Ruby and download and extract the devKit to C:\DevKit

Open the CMD prompt to c:\DevKit and install
```
ruby dk.rb init
ruby dk.rb install
```

+ Install [SQLite3] (http://www.sqlite.org/download.html)

Extract both the precompiled binaries and the command line tools to C:\SQLITE and add C:\SQLITE to your PATH

+ Clone this GitHub Rep (ie C:\Git\caucus-manager)

+ Install Rails
```
cd c:\Git\caucus-manager 
gem install rails
```

+ Set up your local repo
  + Fork the repository by hitting the "Fork" button on the shescoding github page
  + Clone the repository:

    ```
    git clone https://github.com/<your_github_username>/caucus-manager.git
    ```
  + Add the upstream repository:

    ```
    git remote add upstream https://github.com/JDL440/caucus-manager.git
    ```

+ Load all the gems:
  ```
  bundle install
  ```

+ Run database migrations: (Not yet implemented)
  ```
  rake db:migrate
  ```

+ Start the Rails server:
  ```
  rails s
  ```

+ Visit the project at [localhost:3000](http://localhost:3000)

+ Editor
You can use any code editor you like, but I use [VS Code] (http://code.visualstudio.com)
