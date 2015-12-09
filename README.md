# Pre-work - tipCalculator

tipCalculator is a tip calculator application for iOS.


Submitted by: Daniel Margulis

Time spent: 3 hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] Light/Dark Color schemes implemented

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/5exxdyc.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

I ran into some trouble while getting the navigation controller to work properly.  For some reason, every time I would embed a view into a navigation controller and run the app I would get an error.  As strange as it sounds, this problem persisted through restarting the project several times, but was eventually solved when I not only restarted the project, but chose a different name for the project.  I’m not sure why using the same project name was causing this error, because the only project had been moved into the trash and deleted, but the problem was solved by changed project name.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
