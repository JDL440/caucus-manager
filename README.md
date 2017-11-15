# caucus-manager

Caucus manager is software to manage presidential caucuses like the democratic precinct and legislative district caucuses held in Washington state in 2016.

[Live Preview] (https://fierce-ravine-47947.herokuapp.com/)

### See wiki tab on GitHub page for goals

### Getting Started on Windows

+ Install [Ruby 2.4.2] (http://rubyinstaller.org/downloads/)

Install Ruby

+ Install [NodeJS] (https://nodejs.org/en/)

+ Install [PostgreSQL] (http://www.enterprisedb.com/products-services-training/pgdownload#windows)

Install PostgreSQL and add the bin directory path like C:\Program Files\PostgreSQL\10.0\bin to your PATH

+ Clone this GitHub Rep (ie C:\Git\caucus-manager)

+ Install Rails
```
cd c:\Git\caucus-manager 
gem install rails
```

+ Set up your local repo
  + Fork the repository by hitting the "Fork" button on the caucus-manager github page
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

+ Run database migrations: 
  ```
  rake db:create
  rake db:migrate
  ```

+ Start the Rails server:
  ```
  rails s
  ```

+ Visit the project at [localhost:3000](http://localhost:3000)

+ Editor
You can use any code editor you like, but I use [VS Code] (http://code.visualstudio.com)
