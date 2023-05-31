Create application
  connect and set what port it will run on.
  What are the steps here? Can I build a small set of instructions to enhance my recall and for future reference?

  >> I think that the key of this code challenge lives in creating the @users instance, and then generating the routes based on that hash. Where I am struggling right now is in my ability to operate at the right level. I have struggled with this before. 

1. When a user loads the home page, they should be redirected to a page that lists all of the users' names. Load the users from the users.yaml file (content below).
  - Home page that is just a redirect. How do you get the contents of the yaml file to load as a list of linked material?
    - This was straight forward using `redirect` withing a get '/' method
  - Set up a homepage and set the redirect to the path. 
    - I think I can do a `get "/" method that drives the redirect to a get "/toc" page.
    - The structure of "/toc" will be defined in an erb file. 
  - Creating a Ruby object from a YAML file. `load_file(filename)` is a method of the `Psych` class which is == `Yaml`...?
    - This is interesting though, in this case it basically is saving the contents of the `.yaml` as a hash into and instance variable. Then we call that instance variable over and over. This is at the heart of this exercise. 
2. Each of the users' names should be a link to a page for that user.
3. On each user's page, display their email address. Also display their interests, with a comma appearing between each interest.
  -dynamically generating
    - Is this file open? w+ and then build out the info? NO - Because we set an instance variable @users the the yaml object, we can access that material. When we define `get '/:user' this method sets instance variables for email and interests from the hash. 
    - from the rb file, created a 'get' method with /gen_user, where gen_user is a variable to pass in? 
    - Params in sinatra? How do you use them and how do they relate to routes?
4. At the bottom of each user's page, list links to all of the other users pages. Do not include the user whose page it is in this list.
5. Add a layout to the application. At the bottom of every page, display a message like this: "There are 3 users with a total of 9 interests."
  - I wrote this to work only on the user pages. Looking at the LS solution, they write this into a layout erb. What is the rule about layout erb's again? They just work? This appears to be the case. But what did I read about this in the material? I think that if a layout.erb file exists, than sinatra will use it. So the use of "every page" is the note to drive this behavior. 
6. Update the message printed out in #5 to determine the number of users and interests based on the content of the YAML file. Use a view helper method, count_interests, to determine the total number of interests across all users.
7. Add a new user to the users.yaml file. Verify that the site updates accordingly.
