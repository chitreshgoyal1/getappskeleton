# The Challenge - SaaS Products Import
We update our inventory of SaaS products from several sources.  Each source provides its content to us in a different format.  

Write a command line script to import the products. 

````bash
$ getapp_import capterra feed-products/capterra.yaml

importing: Name: "GitHub";  Categories: Bugs & Issue Tracking, Development Tools; Twitter: @github
importing: Name: "Slack"; Categories: Instant Messaging & Chat, Web Collaboration, Productivity; Twitter: @slackhq
...
````

````bash
$ getapp_import softwareadvice feed-products/softwareadvice.json

importing: Name: "Freshdesk";  Categories: ["Customer Service","Call Center"]; Twitter: @freshdesk
importing: Name: "Zoho"; Categories: ["CRM","Sales Management"]; Twitter: 
...
````

Considerations:
- Input/output should be as similar as the example as possible.
- Currently, we are importing products from 2 sites: capterra and softwareadvice.  They send us their weekly feed via email.  This weeks files are in /feed-products.
- We plan to add a third provider soon who will make their feed available via csv output online via a url (you don't need to implement this, just keep it mind).
- Do not implement any data persistence code, just provide some dummy classes that echo what they are doing in the terminal.
- Please provide tests.
- Please provide a short summary detailing anything you think is relevant, for example:
  - Installation steps
  - How to run your code / tests
  - Where to find your code
  - Was it your first time writing a unit test, using a particular framework, etc?
  - What would you have done differently if you had had more time
  - Etc.
* * * 

How to Run:
- ruby run.rb