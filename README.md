# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## To run locally

- Ensure that you have services `extBook-xsuaa`, and `extBook-destination` exists in BTP subaccount. Also corresponding Keys `extBook-xsuaa-key`, `extBook-destination-key` are available within those instances.

- Open a new terminal and run following commands (one-time)
`cds bind xsuaa -2 extBook-xsuaa:extBook-xsuaa-key`  
`cds bind destination -2 extBook-destination:extBook-destination-key`

- Run the app using command
`cf watch --profile hybrid`

