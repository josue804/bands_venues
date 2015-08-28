# _Band and Venue Tracker_

##### _Allows the user to track what venues their added bands have performed in, August 28, 2015_

#### By _**Josue Valverde**_

## Description

_The user can enter a band and a venue. The user can then go to the band's page and add a venue to the band. The user can also edit and delete bands._

## Setup

* _`$ postgres` to run postgres; switch to new tab_
* _`$ bundle` to install gem dependencies_
* _`$ rake db:create` to create database_
* _`$ rake db:migrate` to execute migrations_
* _`$ rake db:test:prepare` to prepare test database_
* _`$ ruby app.rb` to run locally at address localhost:4567_

## Technologies Used

* Written in Ruby
* Ran test site with Sinatra
* Error checking with RSpec and Capybara
* Database management with postgresql using ActiveRecord


### Legal

Copyright (c) 2015 **_Josue Valverde_**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
