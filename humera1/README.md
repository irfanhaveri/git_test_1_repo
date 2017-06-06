## Synopsis

Restful API to index a page's content.

## Code Example

GET: http://localhost:3000/process/url_caps/ returns a JSON of existing URLs that have been indexed.
GET: http://localhost:3000/process/url_caps/:id returns the JSON of the URL and all the h1, h2, h3 tag content and all links on that page in JSON format.
POST: http://localhost:3000/process/url_caps with the request body containing JSON object in this format { "url": "http://bythom.com/" } indexes that URL.

## Motivation

This project exists as a template or test for Rails with Rest API.

## Installation

Requires Ruby 2.4, Rails 5.1.1, Nokogiri 1.7.2, open_uri_redirections 0.2.1 and sqlite3.

## Database schema 
CREATE TABLE "myurllinks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "myurl_id" integer, "link" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "myurls" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);


## Contributors

Humera Vazeer

## License


