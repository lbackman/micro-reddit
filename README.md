# Micro-Reddit

A miniature version of reddit.com where you can create new users, post content and comment.

The purpose of this exercise was to gain more familiarity with models, migrations and validations in Rails.

A user has many posts and comments.
A post belongs to one user and has many comments.
A comment belongs to one user AND to one post.

All respective models validate the presence of several attributes.
For example, the Comment model validates the presence of a comment body.
Some validations are more complex. For instance:
The User model validates the given email against a regular expression.
