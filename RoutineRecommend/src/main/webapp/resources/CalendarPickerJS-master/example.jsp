<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CalendarPickerJS</title>
    <link rel="stylesheet" href="CalendarPicker.style.css">
    <style>
        body {
            display: grid;
            justify-items: center;
            align-content: center;
            min-height: 100vh;
            padding: 0;
            margin: 0;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
                'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
                sans-serif;
        }

        #github {
            position: absolute;
            right: -5rem;
            top: 0.6rem;
            background-color: black;
            transform: rotate(25deg);

        }

        #github a,
        #github a:link,
        #github a:visited {
            display: inline-block;
            padding: 1rem 8rem;
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: transform 300ms;
        }

        #github a:hover {
            text-decoration: underline;
            transform: translateX(0.4rem);
        }

        #download-options {
            margin-bottom: 2rem;
        }

        #download-options h3:last-of-type {
            margin-top: 2rem;
        }

        #download-options code {
            font-size: 1.2rem;
        }

        #myCalendarWrapper {
            width: 40em;
            border: 1px dashed black;
            padding: 2em 4em;
            position: relative;
            font-size: 1rem;
            margin: 2rem auto 5rem;
        }

        #myCalendarWrapper:before {
            content: '#myCalendarWrapper';
            position: absolute;
            font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New', monospace;
            bottom: 0;
            left: 50%;
            transform: translate(-50%, 2.4rem);
            font-size: 1.2rem;
            background-color: rgba(93, 93, 93, 0.2);
            padding: 0.5rem 1rem 0.4rem;
            color: rgb(233, 72, 99);
        }

        code {
            font-size: 0.7rem;
            background-color: rgb(249, 249, 249);
            padding: 0.5rem;
            margin: 1rem 0 3rem;
            border-radius: 5px;
            box-shadow: 2px 2px 0.2rem rgba(0, 0, 0, 0.2);
        }

        code h3 {
            padding: 0;
            margin: 0;
            font-size: 1.5rem;
            margin-bottom: 1rem;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
                'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
                sans-serif;
        }

        code pre {
            font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New', monospace;
        }

        .pink {
            color: rgb(233, 72, 99);
        }

        #example {
            margin: 0 auto;
            text-align: center;
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
                'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
                sans-serif;
        }

        #example h3:not(:first-of-type) {
            margin-top: 3rem;
        }

        #example p {
            font-size: 0.9rem;
        }

        #download-options {
            margin-bottom: 5rem;
        }

        #download-options h2:last-of-type {
            margin-top: 2rem;
        }

        #download-options code {
            font-size: 1.2rem;
        }
    </style>
</head>

<body>
    <div id="github"><a href="https://github.com/MathiasWP/CalendarPickerJS/" target="_blank"
            rel="noopener noreferrer">GitHub</a></div>
    <h1>CalendarPickerJS</h1>


    <div id="showcase-wrapper">
        <div id="myCalendarWrapper"></div>
        <div id="example">
            <h3>currentValue:
                <p id="current-date"></p>
            </h3>
            <h3>currentValue.getDay():
                <p id="current-day"></p>
            </h3>
            <h3>currentValue.toDateSring():
                <p id="current-datestring"></p>
            </h3>
        </div>
    </div>

    <code>
        <h3>Setup code:</h3>
        <pre>const nextYear = new Date().getFullYear() + 1;</pre>
        <pre>const myCalender = new CalendarPicker('<span class="pink">#myCalendarWrapper</span>', {</pre>
        <pre>   // If max < min or min > max then the only available day will be today.</pre>
        <pre>   min: new Date(),</pre>
        <pre>   max: new Date(nextYear, 10) // NOTE: new Date(nextYear, 10) is "Sun Nov 01 nextYear"</pre>
        <pre>});</pre>
        <pre> </pre>
        <pre>const currentDateElement = document.getElementById('current-date');</pre>
        <pre>currentDateElement.textContent = myCalender.value;</pre>
        <pre> </pre>
        <pre>const currentDayElement = document.getElementById('current-day');</pre>
        <pre>currentDayElement.textContent = myCalender.value.getDay();</pre>
        <pre> </pre>
        <pre>const currentToDateString = document.getElementById('current-datestring');</pre>
        <pre>currentToDateString.textContent = myCalender.value.toDateString();</pre>
        <pre> </pre>
        <pre>myCalender.onValueChange((currentValue) => {</pre>
        <pre>   currentDateElement.textContent = currentValue;</pre>
        <pre>   currentDayElement.textContent = currentValue.getDay();</pre>
        <pre>   currentToDateString.textContent = currentValue.toDateString();</pre>
        <pre>   console.log(`The current value of the calendar is: ${currentValue}`);</pre>
        <pre>});</pre>
    </code>

    <div id="download-options">
        <h2>NPM</h2>
        <code>npm install calendarpickerjs</code>

        <h2>CDN</h2>
        <code>https://cdn.jsdelivr.net/npm/calendarpickerjs@1.2.0</code>
    </div>
</body>

<script src="CalendarPicker.js"></script>
<script src="https://cdn.jsdelivr.net/npm/calendarpickerjs@1.2.0"></script>
<script>
    const nextYear = new Date().getFullYear() + 1;
    const myCalender = new CalendarPicker('#myCalendarWrapper', {
        // If max < min or min > max then the only available day will be today.
        min: new Date(),
        max: new Date(nextYear, 10) // NOTE: new Date(nextYear, 10) is "Sun Nov 01 <nextYear>"
    });

    const currentDateElement = document.getElementById('current-date');
    currentDateElement.textContent = myCalender.value;

    const currentDayElement = document.getElementById('current-day');
    currentDayElement.textContent = myCalender.value.getDay();

    const currentToDateString = document.getElementById('current-datestring');
    currentToDateString.textContent = myCalender.value.toDateString();

    myCalender.onValueChange((currentValue) => {
        currentDateElement.textContent = currentValue;
        currentDayElement.textContent = currentValue.getDay();
        currentToDateString.textContent = currentValue.toDateString();

        console.log(`The current value of the calendar is: ${currentValue}`);
    });
</script>

</html>