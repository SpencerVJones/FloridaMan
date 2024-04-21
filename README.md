# FloridaMan
iOS application that fetches data from the subreddit r/FloridaMan and displays it in a user-friendly interface. It retrieves JSON data from the subreddit's API and parses it to extract information about posts, including the post title, author, and thumbnail image.

## Features
- Fetches JSON data from the subreddit r/FloridaMan.
- Parses JSON data to extract relevant post information.
- Displays post titles, authors (with Reddit username format), and thumbnail images in a UITableView.
- Provides a seamless user experience for browsing FloridaMan posts.

## Demo
![Demo](demo.gif)

## Installation
To run this application, ensure you have Xcode installed on your macOS device. Follow these steps:
1. Clone or download this repository.
2. Open the `JonesSpencer_TableViewIntro.xcodeproj` file using Xcode.
3. Build and run the project on the iOS Simulator or a physical iOS device.

## Usage
Upon launching the app, it retrieves data from the r/FloridaMan subreddit asynchronously. The user interface displays the post titles, authors (formatted as Reddit usernames), and thumbnail images in a UITableView. Users can scroll through the list of posts and view their respective details.

## File Structure
The project consists of the following files:
- `ViewController.swift`: Contains the main view controller class responsible for handling UI and data retrieval logic.
- `VC_Extension.swift`: Contains an extension of the main view controller to handle downloading and parsing JSON data.
- `Post.swift`: Defines the `Post` class to represent post information retrieved from the subreddit.

## Technologies Used
- **Swift Programming Language**: Used for developing the application logic and UI.
- **UIKit Framework**: Provides the essential infrastructure for constructing and managing iOS user interfaces.
- **Foundation Framework**: Provides a base layer of functionality for your app, including data storage, networking, and more.
- **Xcode IDE**: Integrated development environment used for coding, debugging, and deploying iOS applications.
- **URLSession**: Used for making network requests and fetching data from the subreddit's API.
- **JSONSerialization**: Utilized for parsing JSON data retrieved from the subreddit.

### You can contribute by:
- Reporting bugs
- Suggesting new features
- Submitting pull requests to improve the codebase

## JSON Data Structure
The JSON data provided for this application is obtained directly from the subreddit r/FloridaMan, including post titles, authors, and thumbnail URLs.
```json
{
  "kind": "String",
  "data": {
    "after": " String ",
    "dist": 0,
    "modhash": "String",
    "geo_filter": null,
    "children": [
      {
        "kind": "String",
        "data": {
          "approved_at_utc": null,
          "subreddit": "FloridaMan",
          "selftext": "String",
          "author_fullname": "String",
          "saved": false,
          "mod_reason_title": null,
          "gilded": 0,
          "clicked": false,
          "title": "String",
          "link_flair_richtext": [],
          "subreddit_name_prefixed": "r/FloridaMan",
          "hidden": false,
          "pwls": 0,
          "link_flair_css_class": null,
          "downs": 0,
          "thumbnail_height": null,
          "top_awarded_type": null,
          "hide_score": false,
          "name": "String",
          "quarantine": false,
          "link_flair_text_color": "dark",
          "upvote_ratio": 0,
          "author_flair_background_color": null,
          "subreddit_type": "public",
          "ups": 0,
          "total_awards_received": 0,
          "media_embed": {

          },
          "thumbnail_width": null,
          "author_flair_template_id": null,
          "is_original_content": false,
          "user_reports": [],
          "secure_media": null,
          "is_reddit_media_domain": false,
          "is_meta": false,
          "category": null,
          "secure_media_embed": {

          },
          "link_flair_text": null,
          "can_mod_post": false,
          "score": 0,
          "approved_by": null,
          "is_created_from_ads_ui": false,
          "author_premium": false,
          "thumbnail": "self",
          "edited": false,
          "author_flair_css_class": null,
          "author_flair_richtext": [],
          "gildings": {

          },
          "content_categories": null,
          "is_self": true,
          "mod_note": null,
          "created": 0,
          "link_flair_type": "String",
          "wls": 7,
          "removed_by_category": null,
          "banned_by": null,
          "author_flair_type": "String",
          "domain": "self.FloridaMan",
          "allow_live_comments": true,
          "selftext_html": "String",
          "likes": null,
          "suggested_sort": null,
          "banned_at_utc": null,
          "view_count": null,
          "archived": false,
          "no_follow": false,
          "is_crosspostable": true,
          "pinned": false,
          "over_18": false,
          "all_awardings": [],
          "awarders": [],
          "media_only": false,
          "can_gild": false,
          "spoiler": false,
          "locked": true,
          "author_flair_text": null,
          "treatment_tags": [],
          "visited": false,
          "removed_by": null,
          "num_reports": null,
          "distinguished": "String",
          "subreddit_id": "String",
          "author_is_blocked": false,
          "mod_reason_by": null,
          "removal_reason": null,
          "link_flair_background_color": "",
          "id": "String",
          "is_robot_indexable": true,
          "report_reasons": null,
          "author": "Diet_Coke",
          "discussion_type": null,
          "num_comments": 56,
          "send_replies": true,
          "whitelist_status": "String",
          "contest_mode": false,
          "mod_reports": [],
          "author_patreon_flair": false,
          "author_flair_text_color": null,
          "permalink": "String",
          "parent_whitelist_status": "String",
          "stickied": true,
          "url": "String",
          "subreddit_subscribers": 777810,
          "created_utc": 0,
          "num_crossposts": 0,
          "media": null,
          "is_video": false
        }
}
```
