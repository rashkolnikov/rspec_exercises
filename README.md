# rspec_exercises

In this repository you will find exercises programmed in Ruby that solve test cases that are intended to demonstrate some specific behaviors.

RSPEC is a tool to automate our testing and development process. Testing is important because it allows us to verify our code.

RSPEC complements well with the TDD strategy.

TDD (Test Driven Development) is a strategy that allows developing a program through test cases.

Changes to program are made until the program passes the test cases. Here is an overview of a basic TDD workflow to create a method:

1) Write a new test
    
2) Run all tests & check for fail

3) Make changes to the method to satisfy the tests

4) Run all tests & check for pass

   if any tests fail, go to back step 3
   if all tests pass, but more test coverage is needed, go to step 1

Once we complete all 4 steps, we have completed 1 iteration of TDD.

To use RSpec, we'll need to structure our project files in a certain way. 
We separate our implementation code files from the testing files using a /lib and /spec folder respectively.

/example_project
  ├── lib
  │   ├── rspec_exercise1.rb
  │   └── rspec_exercise2.rb
  └── spec
      ├── rspec_exercise1_spec.rb
      └── rspec_exercise2_spec.rb
      
To use RSpec, we must follow this structure. We need folders with the literal names lib and spec as direct children of the example_project folder. 
The test files inside of the /spec folder must end with _specin their names.

In order to run the tests, you must have bundler installed. To do it run the following code:

gem install bundler

The dependencies are specify in a Gemfile in the project's root.

Then install all of the required gems from your specified sources:

bundle install

Then, run the following command to run the tests:

bundle exec rspec

