# Fullcalendar::Wrapper::Rails

This gem is a simple wrapper around the fullcalendar plugin.
It is bundled as a gem to be able to include this 3rd party asset into the asset pipeline, without having to locally import the actual CSS and JavaScript into your project.
Please see http://arshaw.com/fullcalendar/ for the original plugin.

## Installation

Add this line to your application's Gemfile:

    gem 'fullcalendar-wrapper-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fullcalendar-wrapper-rails

## Usage

1. In your `app/assets/javascripts/application.js` include the following line:

    //= require fullcalendar`
	
If you require a localized version of the calendar, please also include this line:

    //= require lang-all`

2. In your `app/assets/javascripts/application.css` you can include this line:
    
    *=require fullcalendar

However, if you use SASS i advise you to create a specific `fullcalendar_and_overrides.css.scss` file
and include the `fullcalendar.css` via an Import statement:
    
    @Import 'fullcalendar';
    
A sample HTML markup is quite easy and may look like this:

    <div id='calendar'></div>

At last you need to have an JavaScript file to call the actual `fullcalendar` method.
Since the calendar is somewhat configurable, i like to have an JavaScript file, corresponding to the CSS file, something like `app/assets/javascripts/fullcalendar_and_overrides.js`.

Here is a simple sample for this:

	$(document).ready(function() {
		$('#calendar').fullCalendar({
			// put your options and callbacks here
			header: {
				left: 'prev,next prevYear,nextYear today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			lang: 'de',
			defaultView :'month',
			weekends: false,
			weekMode: 'liquid',
			height: 700,
			selectable: true,
			minTime : "07:00:00",
			maxTime: "21:00:00",
			allDaySlot: false,
			slotDuration: '00:15:00',
			weekNumbers: true
			}
		});
	});

## Contributing

1. Fork it ( https://github.com/[my-github-username]/fullcalendar-wrapper-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
