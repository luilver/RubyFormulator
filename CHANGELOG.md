# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog][], and this project adheres to
[Semantic Versioning][].

## [Unreleased]
### Add
- Support for the following Poll types:
  - Multiple Choice: Where participants select one or more options from a list.
  - True/False: Where participants choose between two options, typically "True"
    or "False."
  - Open-Ended: Where participants can provide a free-text answer.
  - Rating Scale: Where participants rate something on a scale, such as 1 to 5
    or 1 to 10.
  - Ranking: Where participants rank options in order of preference.
  - Yes/No: Where participants choose between "Yes" or "No."
- Frontend PWA or Widget
- Posthog support
- Support for common HTML fields and field types
  - Text
  - Password
  - Email
  - Number
  - Checkbox
  - Radio Button
  - Textarea
  - Select Dropdown
  - Date
  - File
### Change
- with in favor of when within swagger specs
### Remove
- app scope under spec dir

## [Version 0.0.4]
### Add
- Support for the following Poll types:
  - Single Choice: Where participants select one option from a list.

## [Version 0.0.3]
- Overcommit
- Rubocop
- SimpleCov

## [Version 0.0.2]
- Database Cleaner
- Docker
- Renovate
- Rspec Suite

## [Version 0.0.1]
- Grape API
- Options scaffold
- Polls scaffold
- Sqlite3
- Swagger

  [Keep a Changelog]: https://keepachangelog.com/en/1.0.0/
  [Semantic Versioning]: https://semver.org/spec/v2.0.0.html
