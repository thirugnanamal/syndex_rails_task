# README Syndex Investor Portal Interview Task

**NOTE: Please do not fork this repository. Instead clone it, create an independent repository and then push to it.**

We don't want you to be able to see everyone else who's done this task. So, make sure you don't fork this repository.

## The task

This is a cut down version of a feature that's already available in Syndex. The users would like to be able to apply to our issues.

Create a new database objected called "Application" and the UI for the user to create them.

The restrictions are:

- The account can create it for themselves or any account they have an "role" with via the Relationship object.
- The account the application is for must be "verified" to apply.
- We should help the user understand what accounts it is a role for can and cannot apply.
- We should direct the user to verify the accounts that are not verified if they'd like to apply with an unverified account.

## The existing functionality

I extracted most of this app out of our existing app so there may be unused functionality left over.

I also used scaffolding and have simplified the features significantly.
